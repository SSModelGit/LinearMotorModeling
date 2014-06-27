package PackageOfSolenoidComponents
  model Car
    parameter Real m "Mass of the car";
    parameter Real x0 "Starting position of the car";
    parameter Real v0 "Starting velocity of the car";
    output Real x "Position of the car";
    input Real F "Force of the car";
    Real v "Velocity of the car";
    Real a "Acceleration of the car";
  initial equation
    x = x0;
    v = v0;
  equation
    v = der(x);
    a = der(v);
    F = m * a;
  end Car;
  block TimedController "A controller that activates in a given time interval"
    output Boolean command "True if solenoid should be turned on";
    input Real t "Time variable";
    parameter Real onTime "Time to turn on";
    parameter Real offTime "Time to turn off";
  equation
    command = t >= onTime and t <= offTime;
  end TimedController;
  block JustForce "Model of just solenoid force (no control)"
    parameter Real N = 1 "Property of the solenoid design";
    parameter Real A = 1 "Property of the solenoid design";
    parameter Real mu = 1 "Property of the solenoid design";
    parameter Real V = 1 "Voltage across solenoid";
    parameter Real R = 1 "Resistance of solenoid";
    parameter Real PWM = 1 "Pulse Width Modulation of voltage across solenoid";
    parameter Real Px = 1 "Position of solenoid";
    parameter Real h = 1 "Vertical air gap between car and solenoid";
    output Real F "Solenoid force";
    input Real x "Position of car";
    input Boolean command "True if the solenoid is on, otherwise false";
  equation
    if command then
      F = N ^ 2 * A * mu * V ^ 2 / R ^ 2 * PWM ^ 2 * (Px - x) / (h ^ 2 + (Px - x) ^ 2) ^ (3 / 2);
    else
      F = 0;
    end if;
  end JustForce;
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end PackageOfSolenoidComponents;