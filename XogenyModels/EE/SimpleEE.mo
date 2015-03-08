within XogenyModels.EE;

model SimpleEE "Tries to use the graphical connectors"
  import XogenyModels.Components.SolenoidSystemComponents;
  SolenoidSystemComponents.TrackWC trackWC(m = 0.75, l = 4, h = 1, mu = 0.1, g = 9.81, fTol = 0.001) annotation(Placement(visible = true, transformation(origin = {-85, 0}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  SolenoidSystemComponents.SolFWConnector solFWConnector(N = 50, A = 0.015 ^ 2 * Modelica.Constants.pi, mu = 4 * Modelica.Constants.pi * 10 ^ (-7), V = 12.8, R = 2, PWM = 1, Px = 0.02, h = 0.02) annotation(Placement(visible = true, transformation(origin = {0, -50}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass(L = 0.07000000000000001, m = 0.75) annotation(Placement(visible = true, transformation(origin = {1.482, 0}, extent = {{-21.482, -21.482}, {21.482, 21.482}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = 0.015) annotation(Placement(visible = true, transformation(origin = {0, -82.07899999999999}, extent = {{-12.079, -12.079}, {12.079, 12.079}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor annotation(Placement(visible = true, transformation(origin = {57.456, -0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(Placement(visible = true, transformation(origin = {-43.552, 21.448}, extent = {{-13.552, -13.552}, {13.552, 13.552}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.SpeedSensor speedSensor annotation(Placement(visible = true, transformation(origin = {57.456, 32.72}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  SolenoidSystemComponents.SolFWConnector solFWConnector1(A = 0.015 ^ 2 * Modelica.Constants.pi, N = 50, PWM = 1, Px = 0.04, R = 2, V = 12.8, h = 0.02, mu = 4 * Modelica.Constants.pi * 10 ^ (-7)) annotation(Placement(visible = true, transformation(origin = {-52.5, -50}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  SolenoidSystemComponents.SolFWConnector solFWConnector2(A = 0.015 ^ 2 * Modelica.Constants.pi, N = 50, PWM = 1, Px = 0.06, R = 2, V = 12.8, h = 0.02, mu = 4 * Modelica.Constants.pi * 10 ^ (-7)) annotation(Placement(visible = true, transformation(origin = {-52.5, -80}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold1(threshold = 0.035) annotation(Placement(visible = true, transformation(origin = {-92.095, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold2(threshold = 0.045) annotation(Placement(visible = true, transformation(origin = {-92.604, -77.849}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(greaterEqualThreshold.y, solFWConnector.command) annotation(Line(visible = true, origin = {6.608, -60.355}, points = {{6.679, -21.724}, {6.679, 10.862}, {-13.358, 10.862}}, color = {255, 0, 255}));
  connect(greaterEqualThreshold2.y, solFWConnector2.command) annotation(Line(visible = true, origin = {-74.22799999999999, -78.67100000000001}, points = {{-7.377, 0.822}, {-3.801, 0.822}, {-3.801, -0.822}, {14.978, -0.822}}, color = {255, 0, 255}));
  connect(greaterEqualThreshold1.y, solFWConnector1.command) annotation(Line(visible = true, origin = {-74.09999999999999, -49.747}, points = {{-6.995, -0.253}, {-3.928, -0.253}, {-3.928, 0.253}, {14.85, 0.253}}, color = {255, 0, 255}));
  connect(positionSensor.s, greaterEqualThreshold.u) annotation(Line(visible = true, origin = {32.481, -35.176}, points = {{46.975, 35.176}, {49.975, 35.176}, {49.975, 11.726}, {-49.975, 11.726}, {-49.975, -46.903}, {-46.975, -46.903}}, color = {0, 0, 127}));
  connect(positionSensor.s, greaterEqualThreshold2.u) annotation(Line(visible = true, origin = {-12.574, -33.766}, points = {{92.03, 33.766}, {95.03, 33.766}, {95.03, 10.316}, {-95.03, 10.316}, {-95.03, -44.082}, {-92.03, -44.082}}, color = {0, 0, 127}));
  connect(positionSensor.s, greaterEqualThreshold1.u) annotation(Line(visible = true, origin = {-12.32, -24.483}, points = {{91.776, 24.483}, {94.776, 24.483}, {94.776, 1.033}, {-94.776, 1.033}, {-94.776, -25.517}, {-91.776, -25.517}}, color = {0, 0, 127}));
  connect(mass.flange_a, solFWConnector2.sol) annotation(Line(visible = true, origin = {-41.667, -26.456}, points = {{21.667, 26.456}, {-10.833, 26.456}, {-10.833, -52.911}}, color = {0, 127, 0}));
  connect(mass.flange_a, solFWConnector1.sol) annotation(Line(visible = true, origin = {-41.667, -16.456}, points = {{21.667, 16.456}, {-10.833, 16.456}, {-10.833, -32.911}}, color = {0, 127, 0}));
  connect(speedSensor.v, trackWC.v) annotation(Line(visible = true, origin = {-49.03, 21.814}, points = {{84.486, 10.907}, {-42.556, 10.907}, {-41.93, -21.814}}, color = {0, 0, 127}));
  connect(mass.flange_b, speedSensor.flange) annotation(Line(visible = true, origin = {47.575, 10.544}, points = {{-24.611, -10.544}, {-17.575, -10.544}, {-17.575, -0.544}, {29.881, -0.544}, {29.881, 22.176}}, color = {0, 127, 0}));
  connect(force.flange, mass.flange_a) annotation(Line(visible = true, origin = {-23.333, 14.299}, points = {{-6.667, 7.149}, {3.333, 7.149}, {3.333, -14.299}}, color = {0, 127, 0}));
  connect(trackWC.W, force.f) annotation(Line(visible = true, origin = {-68.488, 17.979}, points = {{-12.012, -17.979}, {-12.012, 5.521}, {7.675, 5.521}, {7.675, 3.469}, {8.675000000000001, 3.469}}, color = {0, 0, 127}));
  connect(solFWConnector.sol, mass.flange_a) annotation(Line(visible = true, origin = {-12.593, -20.473}, points = {{12.593, -28.893}, {12.593, -6.027}, {-8.890000000000001, -6.027}, {-8.890000000000001, 20.473}, {-7.407, 20.473}}, color = {0, 127, 0}));
  connect(mass.flange_b, positionSensor.flange) annotation(Line(visible = true, origin = {30.21, 0}, points = {{-7.246, -0}, {7.246, 0}}, color = {0, 127, 0}));
  connect(trackWC.Cf, mass.flange_a) annotation(Line(visible = true, origin = {-52.5, 0}, points = {{-32.5, 0}, {32.5, -0}}, color = {0, 127, 0}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end SimpleEE;