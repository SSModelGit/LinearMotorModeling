within XogenyModels.Components.SolenoidSystemComponents;

model MagSen "Senses magnet on cart"
  MagProperties mag(N = 20, A = 3, chi = 6.4, mu = 0.5, h = 1);
  parameter SIunits.Position Px;
  Modelica.Mechanics.Translational.Interfaces.Flange_a CartMag annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.5083, -0.5083}, extent = {{-50.5083, -50.5083}, {50.5083, 50.5083}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput V annotation(Placement(visible = true, transformation(origin = {61.9125, 2.1167}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {61.9125, 2.1167}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
protected
  SIunits.Position dx = CartMag.s - Px;
equation
  CartMag.f = 0;
  V = -mag.N * mag.A * mag.chi * mag.mu * dx * der(CartMag.s) / (dx ^ 2 + mag.h ^ 2) ^ (3 / 2);
  annotation(Icon(graphics = {Ellipse(visible = true, lineColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-100.0, -100.0}, {100.0, 100.0}}), Text(visible = true, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, extent = {{-100.0, -140.0}, {100.0, -100.0}}, textString = "%name", fontName = "Arial")}, coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end MagSen;