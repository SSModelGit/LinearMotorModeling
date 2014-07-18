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
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end CarWithConnector;
