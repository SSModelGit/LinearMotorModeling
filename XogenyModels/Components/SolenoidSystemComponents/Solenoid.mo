within XogenyModels.Components.SolenoidSystemComponents;

model Solenoid
  parameter Real N "Property of the solenoid design";
  parameter SIunits.Area A "Property of the solenoid design";
  parameter SIunits.Permeability m "Property of the solenoid design";
  parameter SIunits.Voltage V "Voltage across solenoid";
  parameter SIunits.Resistance R "Resistance of solenoid";
  parameter Real PWM "Pulse Width Modulation of voltage across solenoid";
  parameter SIunits.Position Px "Position of solenoid";
  parameter SIunits.Distance h "Vertical air gap between car and solenoid";
  SIunits.Current I "Current through the solenoid";
  Modelica.Blocks.Interfaces.RealOutput solF[3] annotation(Placement(visible = true, transformation(origin = {22.897, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput x[3] "position of the cart" annotation(Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {74.336, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput v[3] "velocity of the cart" annotation(Placement(visible = true, transformation(origin = {-10, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-73.312, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  solF[1] = 1 / 2 * N ^ 2 * A * m * I * (Px - x[1]) / (h ^ 2 + (Px - x[1]) ^ 2) ^ (3 / 2);
  solF[2] = 0;
  solF[3] = 0;
  V * PWM - I * R = N ^ 2 * m * A * (der(I) / x[1] - v[1] * I / x[1] ^ 2);
  annotation(Icon(graphics = {Ellipse(visible = true, lineColor = {255, 0, 0}, fillPattern = FillPattern.Backward, extent = {{-100, -50}, {0, 50}}), Ellipse(visible = true, lineColor = {255, 255, 0}, fillPattern = FillPattern.Forward, extent = {{0, -50}, {100, 50}}), Rectangle(visible = true, fillColor = {100, 100, 100}, pattern = LinePattern.None, fillPattern = FillPattern.CrossDiag, extent = {{-50, -50}, {50, 50}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Solenoid;