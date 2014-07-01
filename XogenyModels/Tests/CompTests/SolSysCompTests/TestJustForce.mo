within XogenyModels.Tests.CompTests.SolSysCompTests;
model TestJustForce
  SolenoidSystemComponents.JustForce f1(N = 1, A = 1, mu = 1, V = 1, R = 1, PWM = 1, Px = 2, h = 1);
  Real force;
  Boolean com;
initial equation
  f1.command = false;
  f1.x = 1;
equation
  when abs(time - 1.0) < 0.001 then
    f1.command = true;
  end when;
  der(f1.x) = 0;
  force = f1.F;
  com = f1.command;
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end TestJustForce;