model MultiBodyEE
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-125, -3.053}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-100, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -270)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(n = {1, 0, 0}, useAxisFlange = false) annotation(Placement(visible = true, transformation(origin = {-55, 48.067}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(r = {1, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-55, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(animateSphere = false, r = {0.15, 0, 0}, r_CM = {0.08, 0, 0}, m = 0.3, shapeType = "gearwheel", r_shape = {0.04, 0, 0}) annotation(Placement(visible = true, transformation(origin = {-11.581, 48.175}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedRotation(angle = 30, n = {0, 0, -1}) annotation(Placement(visible = true, transformation(origin = {-88.093, 48.114}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.Solenoid solenoid(N = 50, A = 0.0005, mu = 4 * 3.14 * 10 ^ (-7), V = 12.8, R = 2, PWM = 1, Px = 0.5, h = 0.01) annotation(Placement(visible = true, transformation(origin = {32.144, 35}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Force force annotation(Placement(visible = true, transformation(origin = {-10, 15}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Sensors.AbsolutePosition absolutePosition annotation(Placement(visible = true, transformation(origin = {30, 53.181}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(absolutePosition.r[1], solenoid.u) annotation(Line(visible = true, origin = {38.381, 41.06}, points = {{2.619, 12.121}, {2.619, -6.06}, {-5.237, -6.06}}, color = {0, 0, 127}));
  connect(bodyShape.frame_b, absolutePosition.frame_a) annotation(Line(visible = true, origin = {13.105, 50.678}, points = {{-14.686, -2.503}, {3.895, -2.503}, {3.895, 2.503}, {6.895, 2.503}}));
  connect(bodyBox.frame_a, fixedRotation.frame_b) annotation(Line(visible = true, origin = {-71.00700000000001, 31.557}, points = {{6.007, -16.557}, {0.539, -16.557}, {0.539, 16.557}, {-7.086, 16.557}}));
  connect(solenoid.solF, force.force[1]) annotation(Line(visible = true, origin = {-0.715, 32.333}, points = {{30.569, 2.667}, {-15.285, 2.667}, {-15.285, -5.333}}, color = {0, 0, 127}));
  connect(force.frame_b, bodyShape.frame_b) annotation(Line(visible = true, origin = {1.105, 31.588}, points = {{-1.105, -16.588}, {1.895, -16.588}, {1.895, 16.587}, {-2.685, 16.587}}));
  connect(force.frame_a, bodyBox.frame_b) annotation(Line(visible = true, origin = {-32.5, 15}, points = {{12.5, 0}, {-12.5, 0}}));
  connect(fixedRotation.frame_b, prismatic.frame_a) annotation(Line(visible = true, origin = {-69.78, 48.09}, points = {{-8.314, 0.024}, {1.767, 0.024}, {1.767, -0.024}, {4.78, -0.024}}));
  connect(fixedRotation.frame_a, fixedTranslation.frame_b) annotation(Line(visible = true, origin = {-99.364, 43.743}, points = {{1.271, 4.371}, {-0.636, 4.371}, {-0.636, -8.743}}, color = {95, 95, 95}));
  connect(prismatic.frame_b, bodyShape.frame_a) annotation(Line(visible = true, origin = {-28.942, 48.121}, points = {{-16.058, -0.054}, {4.349, -0.054}, {4.349, 0.054}, {7.361, 0.054}}));
  connect(world.frame_b, fixedTranslation.frame_a) annotation(Line(visible = true, origin = {-105, 2.965}, points = {{-10, -6.018}, {5, -6.018}, {5, 12.035}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end MultiBodyEE;