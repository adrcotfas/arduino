<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="perceptrons">
<packages>
<package name="DRV8838">
<pad name="GND_MOT" x="-6.35" y="5.08" drill="0.6" diameter="1.27" shape="square" rot="R180"/>
<pad name="VCC_MOT" x="-6.35" y="2.54" drill="0.6" diameter="1.27" shape="square" rot="R180"/>
<pad name="02" x="-6.35" y="0" drill="0.6" diameter="1.27" shape="square" rot="R180"/>
<pad name="01" x="-6.35" y="-2.54" drill="0.6" diameter="1.27" shape="square" rot="R180"/>
<pad name="VM" x="-6.35" y="-5.08" drill="0.6" diameter="1.27" shape="square" rot="R180"/>
<pad name="GND" x="1.27" y="5.08" drill="0.6" diameter="1.27" shape="square"/>
<pad name="VCC" x="1.27" y="2.54" drill="0.6" diameter="1.27" shape="square"/>
<pad name="EN" x="1.27" y="0" drill="0.6" diameter="1.27" shape="square"/>
<pad name="PH" x="1.27" y="-2.54" drill="0.6" diameter="1.27" shape="square"/>
<pad name="SLP" x="1.27" y="-5.08" drill="0.6" diameter="1.27" shape="square"/>
<text x="-6.35" y="7.62" size="1.27" layer="21">DRV8838</text>
<text x="-8.89" y="6.35" size="1.27" layer="21">m</text>
</package>
<package name="MOTOR">
<pad name="P$1" x="-13.97" y="5.08" drill="0.8" shape="long"/>
<pad name="P$2" x="-13.97" y="2.54" drill="0.8" shape="long"/>
<rectangle x1="-13.97" y1="1.27" x2="-11.43" y2="6.35" layer="21"/>
<text x="-13.97" y="7.62" size="1.27" layer="21">MOT</text>
</package>
<package name="I2C">
<pad name="SDA" x="-10.16" y="3.81" drill="0.8" shape="long"/>
<pad name="SCL" x="-10.16" y="1.27" drill="0.8" shape="long"/>
<rectangle x1="-10.16" y1="0" x2="-6.35" y2="5.08" layer="21"/>
</package>
<package name="ENCODER">
<pad name="P$1" x="-7.62" y="3.81" drill="0.8" shape="square"/>
<pad name="P$2" x="-7.62" y="1.27" drill="0.8" shape="square"/>
<pad name="P$3" x="-7.62" y="-1.27" drill="0.8" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="DRV8838">
<wire x1="-15.24" y1="12.7" x2="17.78" y2="12.7" width="0.254" layer="94"/>
<wire x1="17.78" y1="12.7" x2="17.78" y2="-12.7" width="0.254" layer="94"/>
<wire x1="17.78" y1="-12.7" x2="-15.24" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-12.7" x2="-15.24" y2="12.7" width="0.254" layer="94"/>
<pin name="GND_MOT" x="-17.78" y="10.16" length="middle"/>
<pin name="VCC_MOT" x="-17.78" y="5.08" length="middle"/>
<pin name="O2" x="-17.78" y="0" length="middle"/>
<pin name="O1" x="-17.78" y="-5.08" length="middle"/>
<pin name="GND" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="VCC" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="EN" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="PH" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="VM" x="-17.78" y="-10.16" length="middle"/>
<pin name="SLP" x="20.32" y="-10.16" length="middle" rot="R180"/>
<text x="-2.54" y="15.24" size="1.778" layer="94">DRV8838</text>
</symbol>
<symbol name="MOTOR">
<pin name="6V" x="-20.32" y="5.08" length="middle"/>
<pin name="GND" x="-20.32" y="0" length="middle"/>
<wire x1="-17.78" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-17.78" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-2.54" x2="-17.78" y2="7.62" width="0.254" layer="94"/>
</symbol>
<symbol name="I2C">
<pin name="SDA" x="-20.32" y="7.62" length="middle"/>
<pin name="SCL" x="-20.32" y="2.54" length="middle"/>
<wire x1="-17.78" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="0" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-17.78" y2="0" width="0.254" layer="94"/>
<wire x1="-17.78" y1="0" x2="-17.78" y2="10.16" width="0.254" layer="94"/>
<text x="-15.24" y="12.7" size="1.778" layer="94">i2c</text>
</symbol>
<symbol name="ENCODER">
<pin name="GND" x="-12.7" y="7.62" length="middle"/>
<pin name="VCC" x="-12.7" y="2.54" length="middle"/>
<pin name="OUT" x="-12.7" y="-2.54" length="middle"/>
<rectangle x1="-10.16" y1="-5.08" x2="0" y2="10.16" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DRV">
<gates>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DRV8838">
<gates>
<gate name="G$1" symbol="DRV8838" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DRV8838">
<connects>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND_MOT" pad="GND_MOT"/>
<connect gate="G$1" pin="O1" pad="01"/>
<connect gate="G$1" pin="O2" pad="02"/>
<connect gate="G$1" pin="PH" pad="PH"/>
<connect gate="G$1" pin="SLP" pad="SLP"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VCC_MOT" pad="VCC_MOT"/>
<connect gate="G$1" pin="VM" pad="VM"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MOTOR">
<gates>
<gate name="G$1" symbol="MOTOR" x="12.7" y="-2.54"/>
</gates>
<devices>
<device name="" package="MOTOR">
<connects>
<connect gate="G$1" pin="6V" pad="P$1"/>
<connect gate="G$1" pin="GND" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="I2C">
<gates>
<gate name="G$1" symbol="I2C" x="12.7" y="-5.08"/>
</gates>
<devices>
<device name="" package="I2C">
<connects>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ENCODER">
<gates>
<gate name="G$1" symbol="ENCODER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ENCODER">
<connects>
<connect gate="G$1" pin="GND" pad="P$1"/>
<connect gate="G$1" pin="OUT" pad="P$3"/>
<connect gate="G$1" pin="VCC" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$4" library="perceptrons" deviceset="DRV8838" device=""/>
<part name="U$1" library="perceptrons" deviceset="MOTOR" device=""/>
<part name="U$8" library="perceptrons" deviceset="MOTOR" device=""/>
<part name="U$9" library="perceptrons" deviceset="MOTOR" device=""/>
<part name="U$10" library="perceptrons" deviceset="MOTOR" device=""/>
<part name="U$11" library="perceptrons" deviceset="MOTOR" device=""/>
<part name="U$12" library="perceptrons" deviceset="DRV8838" device=""/>
<part name="EN/PH1" library="perceptrons" deviceset="I2C" device=""/>
<part name="EN/PH2" library="perceptrons" deviceset="I2C" device=""/>
<part name="VCC/GND" library="perceptrons" deviceset="I2C" device=""/>
<part name="U$2" library="perceptrons" deviceset="ENCODER" device=""/>
<part name="U$3" library="perceptrons" deviceset="ENCODER" device=""/>
<part name="ENCODERS" library="perceptrons" deviceset="I2C" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$4" gate="G$1" x="99.06" y="-40.64"/>
<instance part="U$1" gate="G$1" x="71.12" y="-76.2" rot="R270"/>
<instance part="U$8" gate="G$1" x="58.42" y="-76.2" rot="R270"/>
<instance part="U$9" gate="G$1" x="58.42" y="-137.16" rot="R270"/>
<instance part="U$10" gate="G$1" x="73.66" y="-137.16" rot="R270"/>
<instance part="U$11" gate="G$1" x="25.4" y="-78.74" rot="R180"/>
<instance part="U$12" gate="G$1" x="101.6" y="-93.98"/>
<instance part="EN/PH1" gate="G$1" x="144.78" y="-48.26"/>
<instance part="EN/PH2" gate="G$1" x="147.32" y="-101.6"/>
<instance part="VCC/GND" gate="G$1" x="170.18" y="-50.8"/>
<instance part="U$2" gate="G$1" x="182.88" y="-33.02"/>
<instance part="U$3" gate="G$1" x="182.88" y="-63.5"/>
<instance part="ENCODERS" gate="G$1" x="208.28" y="-50.8"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$3" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="-55.88" x2="58.42" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="-50.8" x2="71.12" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-50.8" x2="71.12" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="O2"/>
<wire x1="81.28" y1="-40.64" x2="58.42" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-40.64" x2="58.42" y2="-50.8" width="0.1524" layer="91"/>
<junction x="58.42" y="-50.8"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="6V"/>
<wire x1="63.5" y1="-55.88" x2="63.5" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="6V"/>
<wire x1="63.5" y1="-48.26" x2="76.2" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-48.26" x2="76.2" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="O1"/>
<wire x1="81.28" y1="-45.72" x2="63.5" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-45.72" x2="63.5" y2="-48.26" width="0.1524" layer="91"/>
<junction x="63.5" y="-48.26"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="-116.84" x2="58.42" y2="-114.3" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="-114.3" x2="73.66" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-114.3" x2="73.66" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="O2"/>
<wire x1="83.82" y1="-93.98" x2="58.42" y2="-93.98" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-93.98" x2="58.42" y2="-114.3" width="0.1524" layer="91"/>
<junction x="58.42" y="-114.3"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$9" gate="G$1" pin="6V"/>
<wire x1="63.5" y1="-116.84" x2="63.5" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="6V"/>
<wire x1="63.5" y1="-109.22" x2="78.74" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="78.74" y1="-109.22" x2="78.74" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="O1"/>
<wire x1="83.82" y1="-99.06" x2="63.5" y2="-99.06" width="0.1524" layer="91"/>
<wire x1="63.5" y1="-99.06" x2="63.5" y2="-109.22" width="0.1524" layer="91"/>
<junction x="63.5" y="-109.22"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="EN/PH1" gate="G$1" pin="SDA"/>
<pinref part="U$4" gate="G$1" pin="EN"/>
<wire x1="124.46" y1="-40.64" x2="119.38" y2="-40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="EN/PH1" gate="G$1" pin="SCL"/>
<pinref part="U$4" gate="G$1" pin="PH"/>
<wire x1="124.46" y1="-45.72" x2="119.38" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="EN"/>
<pinref part="EN/PH2" gate="G$1" pin="SDA"/>
<wire x1="121.92" y1="-93.98" x2="127" y2="-93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="EN/PH2" gate="G$1" pin="SCL"/>
<pinref part="U$12" gate="G$1" pin="PH"/>
<wire x1="127" y1="-99.06" x2="121.92" y2="-99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="VCC"/>
<wire x1="121.92" y1="-88.9" x2="147.32" y2="-88.9" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="VCC"/>
<wire x1="119.38" y1="-35.56" x2="147.32" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-35.56" x2="147.32" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="VCC/GND" gate="G$1" pin="SCL"/>
<wire x1="147.32" y1="-48.26" x2="147.32" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-60.96" x2="147.32" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="149.86" y1="-48.26" x2="147.32" y2="-48.26" width="0.1524" layer="91"/>
<junction x="147.32" y="-48.26"/>
<pinref part="U$2" gate="G$1" pin="VCC"/>
<wire x1="165.1" y1="-30.48" x2="170.18" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="VCC"/>
<wire x1="165.1" y1="-60.96" x2="170.18" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-60.96" x2="165.1" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-60.96" x2="165.1" y2="-60.96" width="0.1524" layer="91"/>
<junction x="147.32" y="-60.96"/>
<junction x="165.1" y="-60.96"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="167.64" y1="-25.4" x2="170.18" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-55.88" x2="167.64" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-55.88" x2="167.64" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="GND"/>
<pinref part="U$12" gate="G$1" pin="GND"/>
<wire x1="121.92" y1="-83.82" x2="142.24" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-83.82" x2="142.24" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="VCC/GND" gate="G$1" pin="SDA"/>
<wire x1="142.24" y1="-43.18" x2="149.86" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-30.48" x2="142.24" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-30.48" x2="142.24" y2="-43.18" width="0.1524" layer="91"/>
<junction x="142.24" y="-43.18"/>
<wire x1="167.64" y1="-25.4" x2="142.24" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-25.4" x2="142.24" y2="-30.48" width="0.1524" layer="91"/>
<junction x="142.24" y="-30.48"/>
<junction x="167.64" y="-25.4"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="OUT"/>
<wire x1="170.18" y1="-35.56" x2="170.18" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="ENCODERS" gate="G$1" pin="SDA"/>
<wire x1="170.18" y1="-43.18" x2="187.96" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="ENCODERS" gate="G$1" pin="SCL"/>
<wire x1="187.96" y1="-48.26" x2="185.42" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-48.26" x2="185.42" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-71.12" x2="170.18" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="OUT"/>
<wire x1="170.18" y1="-71.12" x2="170.18" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="VCC_MOT"/>
<pinref part="U$11" gate="G$1" pin="6V"/>
<wire x1="45.72" y1="-83.82" x2="50.8" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="VCC_MOT"/>
<wire x1="50.8" y1="-83.82" x2="53.34" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-35.56" x2="53.34" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-83.82" x2="53.34" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-88.9" x2="50.8" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-88.9" x2="50.8" y2="-83.82" width="0.1524" layer="91"/>
<junction x="50.8" y="-83.82"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$12" gate="G$1" pin="GND_MOT"/>
<wire x1="83.82" y1="-83.82" x2="58.42" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-83.82" x2="58.42" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="GND"/>
<pinref part="U$4" gate="G$1" pin="GND_MOT"/>
<wire x1="81.28" y1="-30.48" x2="50.8" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-78.74" x2="50.8" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-78.74" x2="50.8" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-78.74" x2="50.8" y2="-78.74" width="0.1524" layer="91"/>
<junction x="50.8" y="-78.74"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
