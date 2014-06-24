model SolForceModel
  parameter Real N = 1;
  parameter Real A = 1;
  parameter Real mu = 1;
  parameter Real V = 1;
  parameter Real R = 1;
  parameter Real PWM = 1;
  parameter Real solP[3] = {1,2,3};
  parameter Real h = 1;
  parameter Real timerS[4] = {0,1,1.54,1.98};
  Real FSol[3];
  Real frictionF;
  Real x;
  Real v;
  Real a;
initial equation
  FSol[3] = {0,0,0};
  x = 0;
  v = 0;
equation
  for i in 1:size({1,2,3}, 1) loop
  when time > timerS[i] and time < timerS[i + 1] then
    F[i] = N ^ 2 * A * mu * V ^ 2 / R ^ 2 * PWM ^ 2 * (solP[i] - x) / (h ^ 2 + (solP[i] - x) ^ 2) ^ (3 / 2);
  end when;

  end for;
  v = der(x);
  a = der(v);
end SolForceModel;