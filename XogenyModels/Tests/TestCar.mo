within XogenyModels.Tests;
model TestCar
  //import XogenyModels.Components.SolenoidSystemComponents;
  SolenoidSystemComponents.Car c(m = 1, x0 = 0, v0 = 0);
  Real position;
equation
  c.F = 1;
  position = c.x;
  when time - 2.0 < 0.001 then
    assert(abs(position - 5.0) < 0.001, "Unexpected result for x");
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end TestCar;