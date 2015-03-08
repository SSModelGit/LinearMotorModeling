within XogenyModels.EE;

model Solenoid
  parameter Real N(min = 1, start = 20) "Property of the solenoid design";
  parameter Modelica.SIunits.Area A(min = 1e-06, start = 0.05) "Property of the solenoid design";
  parameter Modelica.SIunits.Permeability mu(min = 1e-07) "Property of the solenoid design";
  parameter Modelica.SIunits.Voltage V(min = 0) "Voltage across solenoid";
  parameter Modelica.SIunits.Resistance R(min = 1e-05) "Resistance of solenoid";
  parameter Real PWM(start = 1) "Pulse Width Modulation of voltage across solenoid";
  parameter Modelica.SIunits.Position Px(start = 1) "Position of solenoid";
  parameter Modelica.SIunits.Distance h(min = 0.05) "Vertical air gap between car and solenoid";
  parameter Modelica.SIunits.Distance thresholdStart(min = 0.001, start = 0.05) "threshold distance to turn on the solenoid";
  parameter Modelica.SIunits.Distance thresholdStop(min = 0.001, start = 0.05) "threshold distance to turn on the solenoid";
  Boolean near;
  XogenyModels.EE.SolenoidForce solenoidForce(n = N, a = A, m = mu, voltage = V, res = R, p = PWM, px = Px, height = h) annotation(Placement(visible = true, transformation(origin = {-0, 36.722}, extent = {{-28.278, -28.278}, {28.278, 28.278}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(length = 0.04, width = 0.04, height = 0.08, color = {255, 128, 0}) annotation(Placement(visible = true, transformation(origin = {5, -80}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {0.143, -20.143}, extent = {{-14.857, -14.857}, {14.857, 14.857}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput x[3] annotation(Placement(visible = true, transformation(origin = {35, 75}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-77.557, -72.76000000000001}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput v[3] annotation(Placement(visible = true, transformation(origin = {-50, 75}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-77.96299999999999, 73.863}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-135, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-90.90900000000001, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b annotation(Placement(visible = true, transformation(origin = {135, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {90.90900000000001, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
algorithm
  near := Px - x[1] <= thresholdStart and Px - x[1] >= thresholdStop;
  solenoidForce.command := near;
equation
  connect(fixedShape.frame_a, frame_a) annotation(Line(visible = true, origin = {-96.75, -40}, points = {{76.75, -40}, {-19.25, -40}, {-19.25, 40}, {-38.25, 40}}));
  connect(force.frame_a, frame_a) annotation(Line(visible = true, origin = {-95.428, -10.072}, points = {{80.715, -10.072}, {-20.572, -10.072}, {-20.572, 10.072}, {-39.572, 10.072}}));
  connect(force.frame_b, frame_b) annotation(Line(visible = true, origin = {95.5, -10.072}, points = {{-80.5, -10.071}, {20.5, -10.072}, {20.5, 10.072}, {39.5, 10.072}}));
  connect(v, solenoidForce.v) annotation(Line(visible = true, origin = {-40.244, 49.481}, points = {{-9.756, 25.519}, {-9.756, -12.759}, {19.513, -12.759}}, color = {0, 0, 127}));
  connect(x, solenoidForce.x) annotation(Line(visible = true, origin = {30.34, 49.481}, points = {{4.66, 25.519}, {4.66, -12.759}, {-9.319000000000001, -12.759}}, color = {0, 0, 127}));
  connect(solenoidForce.solF, force.force) annotation(Line(visible = true, origin = {-4.386, 8.945}, points = {{4.386, 27.777}, {4.386, -8.259}, {-4.386, -8.259}, {-4.386, -11.259}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, origin = {-0.276, 0}, fillColor = {76, 76, 76}, fillPattern = FillPattern.Solid, extent = {{-97.289, -97.014}, {97.289, 97.014}}), Ellipse(visible = true, origin = {-1.73, 3.307}, fillColor = {128, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-88.27, -89.297}, {88.27, 89.297}}), Text(visible = true, origin = {-66.377, 59.492}, textColor = {255, 255, 255}, extent = {{-40.908, -10.508}, {40.908, 10.508}}, textString = "v"), Text(visible = true, origin = {-66.44199999999999, -53.55}, textColor = {255, 255, 255}, extent = {{-41.826, -12.044}, {41.826, 12.044}}, textString = "x"), Text(visible = true, origin = {-90, 26.851}, textColor = {255, 255, 255}, extent = {{-20.209, -8.661}, {20.209, 8.661}}, textString = "a"), Text(visible = true, origin = {90, 26.615}, textColor = {255, 255, 255}, extent = {{-27.907, -10}, {27.907, 10}}, textString = "b")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Solenoid;