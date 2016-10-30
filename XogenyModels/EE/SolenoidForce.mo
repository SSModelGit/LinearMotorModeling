within XogenyModels.EE;

model SolenoidForce
  parameter Real n "Property of the solenoid design";
  parameter Modelica.SIunits.Area a "Property of the solenoid design";
  parameter Modelica.SIunits.Permeability m "Property of the solenoid design";
  parameter Modelica.SIunits.Voltage voltage "Voltage across solenoid";
  parameter Modelica.SIunits.Resistance res "Resistance of solenoid";
  parameter Real p "Pulse Width Modulation of voltage across solenoid";
  parameter Modelica.SIunits.Position px "Position of solenoid";
  parameter Modelica.SIunits.Distance height "Vertical air gap between car and solenoid";
  Modelica.SIunits.Current I "Current through the solenoid";
  Modelica.SIunits.Voltage VActual "Actual voltage across solenoid, as determined by command";
  Modelica.Blocks.Interfaces.RealOutput solF[3] annotation(Placement(visible = true, transformation(origin = {22.897, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput x[3] "position of the cart" annotation(Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {74.336, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput v[3] "velocity of the cart" annotation(Placement(visible = true, transformation(origin = {-10, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-73.312, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.BooleanInput command annotation(Placement(visible = true, transformation(origin = {-10, -30}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-6.063, 70}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
equation
  if command == true then
    VActual = voltage;
  else
    VActual = 0;
  end if;
  solF[1] = 1 / 2 * n ^ 2 * a * m * I * (px - x[1]) / (height ^ 2 + (px - x[1]) ^ 2) ^ (3 / 2);
  solF[2] = 0;
  solF[3] = 0;
  VActual * p - I * res = n ^ 2 * m * a * (der(I) / x[1] - v[1] * I / x[1] ^ 2);
  annotation(Icon(graphics = {Ellipse(visible = true, lineColor = {255, 0, 0}, fillPattern = FillPattern.Backward, extent = {{-100, -50}, {0, 50}}), Ellipse(visible = true, lineColor = {255, 255, 0}, fillPattern = FillPattern.Forward, extent = {{0, -50}, {100, 50}}), Rectangle(visible = true, fillColor = {100, 100, 100}, pattern = LinePattern.None, fillPattern = FillPattern.CrossDiag, extent = {{-50, -50}, {50, 50}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end SolenoidForce;