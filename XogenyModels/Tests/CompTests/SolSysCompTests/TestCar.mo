within XogenyModels.Tests.CompTests.SolSysCompTests;

model TestCar
  SolenoidSystemComponents.CarWithConnector carWithConnector(m = 0.75, x0 = 0) annotation(Placement(visible = true, transformation(origin = {16.97, 16.97}, extent = {{-26.97, -26.97}, {26.97, 26.97}}, rotation = 0)));
  Modelica.Mechanics.Translational.Interfaces.Flange_a flange_a annotation(Placement(visible = true, transformation(origin = {-65.20099999999999, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-65.20099999999999, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(flange_a, carWithConnector.c) annotation(Line(visible = true, origin = {-18.451, 21.182}, points = {{-46.75, -1.182}, {5.451, -1.182}, {5.451, 1.182}, {35.849, 1.182}}, color = {0, 127, 0}));
  flange_a.f = 1;
end TestCar;