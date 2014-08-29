within XogenyModels.Tests.CompTests.SolSysCompTests;

model TestTrackWC
  XogenyModels.Components.SolenoidSystemComponents.TrackWC channel(m = 0.75, l = 4, h = 1, mu = 1, g = 9.81, fTol = 1) annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Placement(visible = true, transformation(origin = {-50, 20}, extent = {{-33.612, -33.612}, {33.612, 33.612}}, rotation = 0)));
  XogenyModels.Tests.CompTests.SolSysCompTests.FlangeForTests flangeForTests annotation(Placement(visible = true, transformation(origin = {32.611, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(channel.Cf, flangeForTests.f) annotation(Line(visible = true, origin = {-8.615, 20}, points = {{-41.385, 0}, {41.385, 0}}, color = {0, 127, 0}));
  channel.v = 2;
  when time > 2 then
    assert(channel.Cf.f < 10, "constant forces too big");
  end when;
end TestTrackWC;