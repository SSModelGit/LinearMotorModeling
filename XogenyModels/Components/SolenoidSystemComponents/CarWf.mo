within XogenyModels.Components.SolenoidSystemComponents;
model CarWf "Car with friction"
  parameter Real alpha "frictional coefficient related to velocity";
  parameter Real beta "frictional coeffictient related to velocity squared";
  parameter Real m "Mass of the car";
  parameter Real x0 "Starting position of the car";
  parameter Real v0 "Starting velocity of the car";
  output Real x "Position of the car";
  input Real F "Force of the car";
  Real v "Velocity of the car";
  Real a "Acceleration of the car";
equation
  v = der(x);
  a = der(v);
  F = m * a;
  /*- alpha * v - beta * v ^ 2*/
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end CarWf;