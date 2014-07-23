within XogenyModels.Components.SolenoidSystemComponents;
model VControl "Controller that is based on position x"
  parameter SIunits.Voltage threshold "Threshold voltage to determine wanted proximity";
  Boolean near;
  Modelica.Blocks.Interfaces.BooleanOutput command annotation(Placement(visible=true, transformation(origin={0,0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={4.2333,2.1167}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Blocks.Interfaces.RealInput V annotation(Placement(visible=true, transformation(origin={-20,0}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0), iconTransformation(origin={-25.4,1.5875}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0)));
algorithm
  near := abs(V)>threshold;
  when near then
    command := true;
  end when;
  when not near then
    command := false;
  end when;
  annotation(Icon(graphics={Ellipse(extent={{-100,100},{100,-100}}, lineColor={0,0,0}, fillColor={0,0,0}, fillPattern=FillPattern.None),Rectangle(extent={{-25,25},{25,75}}, fillColor={255,0,0}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Rectangle(extent={{-80,5},{80,-5}}, fillColor={100,100,100}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Rectangle(extent={{-25,-25},{25,-75}}, fillColor={0,255,0}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Text(extent={{-100,-100},{100,-140}}, lineColor={0,0,255}, fillColor={85,170,255}, fillPattern=FillPattern.Solid, textString="%name")}));
end VControl;
