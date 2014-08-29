within XogenyModels.Tests.CompTests.SolSysCompTests;

model TestMagSen
  XogenyModels.Components.SolenoidSystemComponents.MagSen magSen1(Px = 2) annotation(Placement(visible = true, transformation(origin = {-81.32299999999999, -1.323}, extent = {{-53.677, -53.677}, {53.677, 53.677}}, rotation = 0)));
  XogenyModels.Tests.CompTests.SolSysCompTests.FlangeForTests flangeForTests1(c = 1) annotation(Placement(visible = true, transformation(origin = {1.5252, -1.5252}, extent = {{-23.4748, -23.4748}, {23.4748, 23.4748}}, rotation = 0)));
equation
  connect(magSen1.CartMag, flangeForTests1.f) annotation(Line(visible = true, origin = {-31.263, -1.56}, points = {{-49.787, -0.035}, {8.313000000000001, -0.035}, {8.313000000000001, 0.035}, {33.161, 0.035}}, color = {0, 127, 0}));
  when time > 2.0 then
    assert(magSen1.V < 0.3, "Voltage sensor is high");
  end when;
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end TestMagSen;