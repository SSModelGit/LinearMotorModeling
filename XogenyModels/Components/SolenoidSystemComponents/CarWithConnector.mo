within XogenyModels.Components.SolenoidSystemComponents;
model CarWithConnector
  Modelica.Mechanics.Translational.Interfaces.Flange_a c;
  parameter SIunits.Mass m "Mass of the car";
  parameter SIunits.Position x0 "Starting position of the car";
  SIunits.Velocity v "Velocity of the car";
  SIunits.Acceleration a "Acceleration of the car";
initial equation 
  c.s=x0;
equation 
  v=der(c.s);
  a=der(v);
  c.f=m*a;
  annotation(Icon(graphics={Rectangle(extent={{-75,0},{75,40}}, fillColor={0,0,0}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Rectangle(extent={{75,18},{80,21}}, fillColor={0,128,255}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Ellipse(extent={{-50,-25},{-25,0}}, lineColor={0,0,0}, fillColor={175,175,175}, fillPattern=FillPattern.Solid),Ellipse(extent={{25,-25},{50,0}}, lineColor={0,0,0}, fillColor={175,175,175}, fillPattern=FillPattern.Solid),Text(extent={{-100,-100},{100,-140}}, lineColor={0,0,255}, fillColor={85,170,255}, fillPattern=FillPattern.Solid, textString="%name")}));
end CarWithConnector;
