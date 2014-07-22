within XogenyModels.Components.SolenoidSystemComponents;
model VControl "Controller that is based on position x"
  parameter SIunits.Voltage threshold "Threshold voltage to determine wanted proximity";
  Boolean notFinished;
  Boolean Started;
  output Boolean command;
  input SIunits.Voltage V "Voltage of the sensor";
initial equation 
  notFinished=true;
  command=false;
  Started=true;
equation 
  when abs(abs(V) - threshold) < 0.001 and Started then
    notFinished=false;
  end when;
  when abs(V) > threshold and notFinished then
    command=true;
    Started=true;
  end when;
  annotation(Icon(graphics={Ellipse(extent={{-100,100},{100,-100}}, lineColor={0,0,0}, fillColor={0,0,0}, fillPattern=FillPattern.None),Rectangle(extent={{-25,25},{25,75}}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Rectangle(extent={{-80,5},{80,-5}}, fillColor={100,100,100}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Rectangle(extent={{-25,-25},{25,-75}}, fillColor={0,255,0}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Text(extent={{-100,-100},{100,-140}}, lineColor={0,0,255}, fillColor={85,170,255}, fillPattern=FillPattern.Solid, textString="%name")}));
end VControl;
