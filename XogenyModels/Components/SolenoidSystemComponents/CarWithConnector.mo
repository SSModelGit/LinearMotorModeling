within XogenyModels.Components.SolenoidSystemComponents;
model CarWC
  SolenoidSystemComponents.CarF c;
  parameter Real m "Mass of the car";
  parameter Real x0 "Starting position of the car";
  Real v "Velocity of the car";
  Real a "Acceleration of the car";
initial equation 
  c.x=x0;
equation 
  v=der(c.x);
  a=der(v);
  c.F=m*a;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end CarWC;
