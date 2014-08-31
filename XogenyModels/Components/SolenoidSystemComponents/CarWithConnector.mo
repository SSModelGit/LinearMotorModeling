within XogenyModels.Components.SolenoidSystemComponents;

model CarWithConnector
  parameter SIunits.Mass m "Mass of the car";
  parameter SIunits.Position x0 "Starting position of the car";
  parameter SIunits.Velocity v0 "Starting velocity of the car";
  SIunits.Acceleration a "Acceleration of the car";
  Modelica.Mechanics.Translational.Interfaces.Flange_a c annotation(Placement(visible = true, transformation(origin = {1.5875, 20.1083}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {1.5875, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput v annotation(Placement(visible = true, transformation(origin = {22.7542, 20.1083}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {22.7542, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
initial equation
  c.s = x0;
  der(c.s) = v0;
equation
  v = der(c.s);
  a = der(v);
  c.f = m * a;
  annotation(Icon(graphics = {Rectangle(visible = true, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-75.0, 0.0}, {75.0, 40.0}}), Ellipse(visible = true, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, extent = {{-50.0, -25.0}, {-25.0, 0.0}}), Ellipse(visible = true, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, extent = {{25.0, -25.0}, {50.0, 0.0}}), Text(visible = true, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, extent = {{-100.0, -140.0}, {100.0, -100.0}}, textString = "%name", fontName = "Arial")}, coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end CarWithConnector;