model JustForce "Model of just solenoid force (no control)"
  parameter Real N = 1 "Add a description of what this is";
  parameter Real A = 1 "Add a description of what this is";
  parameter Real mu = 1 "Add a description of what this is";
  parameter Real V = 1 "Add a description of what this is";
  parameter Real R = 1 "Add a description of what this is";
  parameter Real PWM = 1 "Add a description of what this is";
  parameter Real Px = 1 "Position of solenoid?!?";
  parameter Real h = 1 "Add a description of what this is";
  output Real F "Solenoid force";
  input Real x;
  input Boolean command "True if the solenoid is on, otherwise false";
equation
  if command then
    F = N ^ 2 * A * mu * V ^ 2 / R ^ 2 * PWM ^ 2 * (Px - x) / (h ^ 2 + (Px - x) ^ 2) ^ (3 / 2);
  else
    F = 0;
  end if;
end JustForce;
