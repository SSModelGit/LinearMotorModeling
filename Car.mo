model Car
  parameter Real m "Mass of the car";
  parameter Real x0 "Starting position of the car";
  parameter Real v0 "Starting velocity of the car";
  output Real x "Position of the car";
  input Real F "Force of the car";
  Real v "Velocity of the car";
  Real a "Acceleration of the car";
initial equation
  x=x0;
  v=v0;
equation
  v = der(x);
  a = der(v);
  F=m*a;
end Car;
