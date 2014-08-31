within XogenyModels.SolenoidSystem;

model SimSysTrial "Tries to use the graphical connectors"
  import XogenyModels.Components.SolenoidSystemComponents;
  XogenyModels.Components.SolenoidSystemComponents.CarWithConnector c(x0 = 1, v0 = 0, m = 0.75) annotation(Placement(visible = true, transformation(origin = {-37.7299, 30.0}, extent = {{-17.7299, -17.7299}, {17.7299, 17.7299}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol1(N = 20, A = 3, mu = 0.5, V = 12.8, R = 2, PWM = 1, Px = 2.0, h = 1) annotation(Placement(visible = true, transformation(origin = {-87.5, 27.5}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol2(N = 20, A = 3, mu = 0.5, V = 12.8, R = 2, PWM = 1, Px = 4.0, h = 1) annotation(Placement(visible = true, transformation(origin = {-85.0, -7.7614}, extent = {{-22.2386, -22.2386}, {22.2386, 22.2386}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol3(N = 20, A = 3, mu = 0.5, V = 12.8, R = 2, PWM = 1, Px = 6.0, h = 1) annotation(Placement(visible = true, transformation(origin = {-87.5, 65.0}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor1(Px = 2) annotation(Placement(visible = true, transformation(origin = {36.5252, 16.5252}, extent = {{-21.5252, -21.5252}, {21.5252, 21.5252}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl control1(threshold = 0.021) annotation(Placement(visible = true, transformation(origin = {89.1647, 73.83839999999999}, extent = {{-19.1647, -19.1647}, {19.1647, 19.1647}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor2(Px = 4) annotation(Placement(visible = true, transformation(origin = {35.0, 76.761}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl control2(threshold = 0.1) annotation(Placement(visible = true, transformation(origin = {96.1694, -46.645}, extent = {{-23.8306, -23.8306}, {23.8306, 23.8306}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor3(Px = 6) annotation(Placement(visible = true, transformation(origin = {37.5118, -45.0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl control3(threshold = 0.1) annotation(Placement(visible = true, transformation(origin = {92.5, 15.0}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  XogenyModels.Components.SolenoidSystemComponents.TrackWC channel(m = 0.75, l = 4, h = 1, mu = 0.5, g = 9.81, fTol = 0.001) annotation(Placement(visible = true, transformation(origin = {-84.20010000000001, -65.79989999999999}, extent = {{-20.7999, -20.7999}, {20.7999, 20.7999}}, rotation = 0)));
equation
  connect(sol3.sol, c.c) annotation(Line(visible = true, origin = {-35.8521, 50.0}, points = {{-51.6479, 15.6333}, {-1.5964, 15.6333}, {-1.5964, -16.454}, {-1.5963, -16.454}}, color = {0, 127, 0}));
  connect(sol3.command, control3.command) annotation(Line(visible = true, origin = {17.9266, 35.7371}, points = {{-112.1766, 29.7696}, {-14.1786, 4.2629}, {48.3254, -13.7717}, {75.52589999999999, -20.2608}}, color = {255, 0, 255}));
  connect(sensor2.V, control2.V) annotation(Line(visible = true, origin = {42.4245, 8.8497}, points = {{4.958, 68.3347}, {14.9851, 39.5741}, {47.692, -55.1163}}, color = {0, 0, 127}));
  connect(sensor1.V, control1.V) annotation(Line(visible = true, origin = {50.3506, 54.0539}, points = {{-0.4986, -37.0731}, {11.4816, -19.0539}, {33.9462, 20.0887}}, color = {0, 0, 127}));
  connect(sensor3.V, control3.V) annotation(Line(visible = true, origin = {52.7031, -1.6349}, points = {{-2.8088, -42.9418}, {12.2969, -19.9779}, {34.0819, 16.9921}}, color = {0, 0, 127}));
  connect(sol1.command, control1.command) annotation(Line(visible = true, origin = {15.1815, 53.0627}, points = {{-109.4315, -25.056}, {-20.1815, 1.9373}, {54.8185, 1.9373}, {74.7945, 21.1814}}, color = {255, 0, 255}));
  connect(c.v, channel.v) annotation(Line(visible = true, origin = {-68.1281, -28.7946}, points = {{34.4325, 62.3406}, {-1.8719, -6.2054}, {-10.2485, -19.1299}, {-22.312, -37.0053}}, color = {0, 0, 127}));
  connect(sol2.command, control2.command) annotation(Line(visible = true, origin = {36.0312, -26.7006}, points = {{-127.7027, 19.44}, {33.2778, 19.44}, {33.2778, -19.44}, {61.1471, -19.44}}, color = {255, 0, 255}));
  connect(channel.Cf, c.c) annotation(Line(visible = true, origin = {-49.8194, -31.6108}, points = {{-34.3807, -34.1891}, {4.8194, -34.1891}, {4.8194, 1.6108}, {12.371, 1.6108}, {12.371, 65.1568}}, color = {0, 127, 0}));
  connect(sol2.sol, c.c) annotation(Line(visible = true, origin = {-59.842, 13.2053}, points = {{-25.158, -20.3407}, {1.3822, -20.3407}, {1.3822, 20.3407}, {22.3936, 20.3407}}, color = {0, 127, 0}));
  connect(sol1.sol, c.c) annotation(Line(visible = true, origin = {-60.467, 30.8396}, points = {{-27.033, -2.7063}, {2.0072, -2.7063}, {2.0072, 2.7063}, {23.0186, 2.7063}}, color = {0, 127, 0}));
  connect(sensor3.CartMag, c.c) annotation(Line(visible = true, origin = {-22.4361, -9.3111}, points = {{60.0495, -35.7905}, {-15.0124, -35.6889}, {-15.0124, 14.3111}, {-15.0124, 14.3111}, {-15.0124, 42.8571}}, color = {0, 127, 0}));
  connect(sensor1.CartMag, c.c) annotation(Line(visible = true, origin = {-8.7035, 24.9809}, points = {{45.338, -8.565099999999999}, {-8.2965, -8.565099999999999}, {-8.2965, 8.565099999999999}, {-28.745, 8.565099999999999}}, color = {0, 127, 0}));
  connect(sensor2.CartMag, c.c) annotation(Line(visible = true, origin = {-9.0867, 55.1027}, points = {{44.1884, 21.5567}, {-7.9133, 21.5567}, {-7.9133, -21.5567}, {-28.3617, -21.5567}}, color = {0, 127, 0}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end SimSysTrial;