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
