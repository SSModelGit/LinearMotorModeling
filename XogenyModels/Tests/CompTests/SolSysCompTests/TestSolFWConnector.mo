within XogenyModels.Tests.CompTests.SolSysCompTests;

model TestSolFWConnector
  Modelica.Blocks.Sources.Sine sine1(freqHz = 1);
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector f1(N = 1, A = 1, mu = 1, V = 1, R = 1, PWM = 1, Px = 2, h = 1) annotation(Placement(visible = true, transformation(origin = {-40, 20}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  XogenyModels.Tests.CompTests.SolSysCompTests.FlangeForTests flangefortests1(c = 1) annotation(Placement(visible = true, transformation(origin = {60, 20}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
equation
  connect(flangefortests1.f, f1.sol) annotation(Line(points = {{60.3969, 20}, {42.7481, 20}, {42.7481, 3.43511}, {-39.6947, 3.43511}, {-39.6947, 20.7037}, {-40, 20.7037}}, color = {0, 127, 0}));
  when time == 0.5 then
    f1.command = true;
  end when;
  when time >= 1.0 then
    assert(abs(f1.sol.f) < 1000, "Force is not within 0.001 of 0.3535");
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end TestSolFWConnector;