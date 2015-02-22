within XogenyModels.Components.SolenoidSystemComponents;

model Solenoid
  parameter Real N "Property of the solenoid design";
  parameter SIunits.Area A "Property of the solenoid design";
  parameter SIunits.Permeability mu "Property of the solenoid design";
  parameter SIunits.Voltage V "Voltage across solenoid";
  parameter SIunits.Resistance R "Resistance of solenoid";
  parameter Real PWM "Pulse Width Modulation of voltage across solenoid";
  parameter SIunits.Position Px "Position of solenoid";
  parameter SIunits.Distance h "Vertical air gap between car and solenoid";
  Modelica.Blocks.Interfaces.RealOutput solF[3] annotation(Placement(visible = true, transformation(origin = {22.897, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {22.897, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u[3] annotation(Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-10, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
equation
  solF[1] = N ^ 2 * A * mu * V ^ 2 / R ^ 2 * PWM ^ 2 * (Px - u[1]) / (h ^ 2 + (Px - u[1]) ^ 2) ^ (3 / 2);
  //  solF[1]= 5.0*(Px - u[1]);
  solF[2] = 0;
  solF[3] = 0;
  annotation(Icon(graphics = {Ellipse(extent = {{-100, 50}, {0, -50}}, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Backward), Ellipse(extent = {{100, 50}, {0, -50}}, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Forward), Rectangle(extent = {{-50, 50}, {50, -50}}, fillColor = {100, 100, 100}, fillPattern = FillPattern.CrossDiag, pattern = LinePattern.None)}));
end Solenoid;