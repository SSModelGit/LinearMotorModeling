within XogenyModels.Tests.CompTests.SolSysCompTests;

model TestJustForce
  SolenoidSystemComponents.OldComponents.JustForce f1(N = 1, A = 1, mu = 1, V = 1, R = 1, PWM = 1, Px = 2, h = 1);
  Modelica.Blocks.Sources.Sine sine1(freqHz = 1);
  Real force;
  Boolean com;
initial equation
  f1.command = false;
equation
  if sine1.y > 0 then
    f1.command = true;
  else
    f1.command = false;
  end if;
  when time >= 1.0 then
    assert(force < 1000, "Force is not within 0.001 of 0.3535");
  end when;
  force = f1.F;
  com = f1.command;
  f1.x = sine1.y;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end TestJustForce;