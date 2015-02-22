within XogenyModels.Tests.CompTests.SolSysCompTests;

model TestCar
  SolenoidSystemComponents.CarWithConnector carWithConnector(m = 0.75, x0 = -5, v0 = 1) annotation(Placement(visible = true, transformation(origin = {16.97, 16.97}, extent = {{-26.97, -26.97}, {26.97, 26.97}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(Placement(visible = true, transformation(origin = {-60, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(force.flange, carWithConnector.c) annotation(Line(visible = true, origin = {-14.65, 41.182}, points = {{-35.35, 18.818}, {1.65, 18.818}, {1.65, -18.818}, {32.049, -18.818}}, color = {0, 127, 0}));
  force.flange.f = -1;
end TestCar;