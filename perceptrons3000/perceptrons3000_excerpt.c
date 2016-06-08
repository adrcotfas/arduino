// excerpt from the perceptrons3000 Arduino code 
// used in the Conti Student Competition 2015 Sibiu

// main hardware parts: 1 x minimalDuino_108
//                      1 x ActoBitty kit with 2 x extra motors
//                      1 x MiniIMU-9 v3
//                      2 x Grove I2C Color Sensor
//                      2 x DRV8838 motor driver
//                      1 x 74HC4052 MUX
//                      1 x 9V battery / 4 x R6 batteries

// main software libraries used: groveColorSensor
//                               RTIMU
//                               DRV8835MotorShield
//                               PID_v1

void loop()
{
  //----------------------------------------------------------------------------------
  //---------- Read sensor values ----------------------------------------------------
  ActivateIMU();
  int loopCount = INITIAL_LOOP_COUNT;
  while (imu->IMURead())
  {
    // get the latest data if ready yet
    // this flushes remaining data in case we are falling behind
    if (++loopCount >= MAX_LOOP_COUNT)
      continue;
    fusion.newIMUData(imu->getGyro(), imu->getAccel(), imu->getCompass(), imu->getTimestamp());

    // get the set point for the first run
    // this needs some time to settle the gyroscope
    if (!isGyroSettled && (millis() > GYRO_SETTLE_TIME))
    {
      Setpoint = fusion.getFusionPose().z() * RTMATH_RAD_TO_DEGREE;
      isGyroSettled = true;
    }
    pidInput = fusion.getFusionPose().z() * RTMATH_RAD_TO_DEGREE;
    pid.Compute();
  }

  ActivateRightColorSensor();
  rightColorSensor.calculateColor();

  ActivateLeftColorSensor();
  leftColorSensor.calculateColor();

  if (isGyroSettled)
  {
    stateMachine();
  }
}

void stateMachine()
{
  switch (currentState)
  {
    case (FORWARD):

      ResetParking();
      // Keep driving straight ahead
      motors.setM1Speed(MOTORS_SPEED - (int)pidOutput);
      motors.setM2Speed(MOTORS_SPEED + (int)pidOutput);

#if TRAPS_ENABLED
      // Process the special cases or "traps" where the color stripes are not consecutive and are interrupted
      // We should not consider these cases in the color path-finding algorithm, so we reset
      if ( (leftColorSensor.getColor()  == UNKNOWN || leftColorSensor.getColor()  == BROWN) &&
           (rightColorSensor.getColor() == UNKNOWN || rightColorSensor.getColor() == BROWN) )
      {
        if (firstDetectedColor != UNKNOWN)
          switch (firstDetectedColor)  {
            case (RED):   leftRedDetected   = 0; rightRedDetected   = 0; firstDetectedColor = UNKNOWN; break;
            case (GREEN): leftGreenDetected = 0; rightGreenDetected = 0; firstDetectedColor = UNKNOWN; break;
            case (BLUE):  leftBlueDetected  = 0; rightBlueDetected  = 0; firstDetectedColor = UNKNOWN; break;
            case (BLACK): leftBlackDetected = 0; rightBlackDetected = 0; firstDetectedColor = UNKNOWN; break;
          }
        if (secondDetectedColor != UNKNOWN)
          switch (secondDetectedColor) {
            case (RED):   leftRedDetected   = 0; rightRedDetected   = 0; secondDetectedColor = UNKNOWN; break;
            case (GREEN): leftGreenDetected = 0; rightGreenDetected = 0; secondDetectedColor = UNKNOWN; break;
            case (BLUE):  leftBlueDetected  = 0; rightBlueDetected  = 0; secondDetectedColor = UNKNOWN; break;
            case (BLACK): leftBlackDetected = 0; rightBlackDetected = 0; secondDetectedColor = UNKNOWN; break;
          }
        if (thirdDetectedColor != UNKNOWN)
          switch (thirdDetectedColor)  {
            case (RED):   leftRedDetected   = 0; rightRedDetected   = 0; thirdDetectedColor = UNKNOWN; break;
            case (GREEN): leftGreenDetected = 0; rightGreenDetected = 0; thirdDetectedColor = UNKNOWN; break;
            case (BLUE):  leftBlueDetected  = 0; rightBlueDetected  = 0; thirdDetectedColor = UNKNOWN; break;
            case (BLACK): leftBlackDetected = 0; rightBlackDetected = 0; thirdDetectedColor = UNKNOWN; break;
          }
      }
#endif
      // Process the right color sensor data
      //----------------------------------------------------------------------------------
      switch (rightColorSensor.getColor())
      {
        case (WHITE):
          Setpoint = AddDegreesTo(Setpoint, SMOOTH_FACTOR);
          MOTORS_SPEED = MOTORS_SAFE_SPEED;
          break;
        //------------------------------------------------------------------------------
        case (RED):
          if (rightRedDetected)
            break;
          rightRedDetected = true;
          if (firstDetectedColor == UNKNOWN)
            firstDetectedColor = RED;
          break;
        //------------------------------------------------------------------------------
        case (GREEN):
          if (rightGreenDetected)
            break;
          rightGreenDetected = true;
          if (firstDetectedColor == UNKNOWN)
            firstDetectedColor = GREEN;
          break;
        //------------------------------------------------------------------------------
        case (BLUE):
          if (rightBlueDetected)
            break;
          rightBlueDetected = true;
          if (firstDetectedColor == UNKNOWN)
            firstDetectedColor = BLUE;
          else if (firstDetectedColor  != BLUE &&
                   secondDetectedColor == UNKNOWN)
            secondDetectedColor = BLUE;
          else if (firstDetectedColor  != BLUE &&
                   secondDetectedColor != BLUE &&
                   thirdDetectedColor == UNKNOWN)
            thirdDetectedColor = BLUE;
          break;
        //------------------------------------------------------------------------------
        case (BLACK):
          if (rightBlackDetected)
            break;
          rightBlackDetected = true;
          if (firstDetectedColor == UNKNOWN)
            firstDetectedColor = BLACK;
          else if (firstDetectedColor != BLACK &&
                   secondDetectedColor == UNKNOWN)
            secondDetectedColor = BLACK;
          break;
      }

      // Process the left color sensor data
      //----------------------------------------------------------------------------------
      switch (leftColorSensor.getColor())
      {
        case (WHITE):
          digitalWrite(LED_PIN, HIGH);
          Setpoint = AddDegreesTo(Setpoint, 3);
          MOTORS_SPEED = MOTORS_SAFE_SPEED;
          break;
        //------------------------------------------------------------------------------
        case (RED):
          if (leftRedDetected)
            break;
          leftRedDetected = true;
          if (firstDetectedColor == UNKNOWN)
            firstDetectedColor = RED;
          break;
        //------------------------------------------------------------------------------
        case (GREEN):
          if (leftGreenDetected)
            break;
          leftGreenDetected = true;
          if (firstDetectedColor == UNKNOWN)
            firstDetectedColor = GREEN;
          break;
        //------------------------------------------------------------------------------
        case (BLUE):
          if (leftBlueDetected)
            break;
          leftBlueDetected = true;
          if (firstDetectedColor == UNKNOWN)
            firstDetectedColor = BLUE;
          else if (firstDetectedColor  != BLUE &&
                   secondDetectedColor == UNKNOWN)
            secondDetectedColor = BLUE;
          else if (firstDetectedColor  != BLUE &&
                   secondDetectedColor != BLUE &&
                   thirdDetectedColor == UNKNOWN)
            thirdDetectedColor = BLUE;
          break;
        //------------------------------------------------------------------------------
        case (BLACK):
          if (leftBlackDetected)
            break;
          leftBlackDetected = true;
          //time_leftBlackDetected = millis();
          if (firstDetectedColor == UNKNOWN)
            firstDetectedColor = BLACK;
          else if (firstDetectedColor != BLACK &&
                   secondDetectedColor == UNKNOWN)
            secondDetectedColor = BLACK;
          break;
      }
      // If we didn't detect the white borders, drive at full speed.
      //----------------------------------------------------------------------------------
      if (leftColorSensor.getColor()  != WHITE &&
          rightColorSensor.getColor() != WHITE)
      {
        MOTORS_SPEED = MOTORS_MAX_SPEED;
      }
      // Process transitions to next state if one of the cases are met
      // BLACK -> BLUE -> TURNLEFT
      //----------------------------------------------------------------------------------
      if (firstDetectedColor == BLACK &&
          secondDetectedColor == BLUE)
      {
        time_TURNLEFT = millis();
        firstTimeTurningLeft = true;
        turningLeftDesiredSetpoint = AddDegreesTo(Setpoint, -TURNING_FACTOR);
        currentState = TURNLEFT;
        break;
      }
      // BLUE -> BLACK -> WRONGWAY
      //----------------------------------------------------------------------------------
      if (firstDetectedColor == BLUE &&
          secondDetectedColor == BLACK)
      {
        isFirstTimeTurning = true;
        time_WRONGWAY = millis();
        currentState = WRONGWAY;
        break;
      }
      // RED -> BLACK -> BLUE -> PARKLEFT
      //----------------------------------------------------------------------------------
      if (firstDetectedColor  == RED   &&
          secondDetectedColor == BLACK &&
          thirdDetectedColor  == BLUE)
      {
        time_PARKLEFT = millis();
        isFirstTimeParking = true;
        parkingDesiredSetpoint = AddDegreesTo(Setpoint, -PARKING_FACTOR);
        currentState = PARKLEFT;
        break;
      }
      // GREEN -> BLACK -> BLUE -> PARKRIGHT
      //----------------------------------------------------------------------------------
      if (firstDetectedColor  == GREEN &&
          secondDetectedColor == BLACK &&
          thirdDetectedColor  == BLUE)
      {
        time_PARKRIGHT = millis();
        isFirstTimeParking = true;
        parkingDesiredSetpoint = AddDegreesTo(Setpoint, PARKING_FACTOR);
        currentState = PARKRIGHT;
        break;
      }
      break;

  }
}
