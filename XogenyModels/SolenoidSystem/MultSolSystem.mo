within XogenyModels.SolenoidSystem;

model MultSolSystem
  import XogenyModels.Components.SolenoidSystemComponents.OldComponents;
  OldComponents.ControlledSol s1(N1 = 1, A1 = 1, mu1 = 1, V1 = 12.8, R1 = 2, PWM1 = 1, Px1 = 2.0, h1 = 1, onTime1 = 0.0, offTime1 = 1.38, x0 = 0) "First solenoid out of three";
  OldComponents.ControlledSol s2(N1 = 1, A1 = 1, mu1 = 1, V1 = 12.8, R1 = 2, PWM1 = 1, Px1 = 4.0, h1 = 1, onTime1 = 1.38, offTime1 = 2.12, x0 = 0) "Second solenoid out of three";
  OldComponents.ControlledSol s3(N1 = 1, A1 = 1, mu1 = 1, V1 = 12.8, R1 = 2, PWM1 = 1, Px1 = 6.0, h1 = 1, onTime1 = 2.12, offTime1 = 2.98, x0 = 0) "Third solenoid out of three";
  OldComponents.Track channel(CartMass = 0.75, l = 4, h = 0.3, mu = 0.2, gLocal = 9.81);
  OldComponents.CarWf c(alpha = 0.1, beta = 0.05, m = 0.75, x0 = 0);
  Real TotalF;
equation
  time = s1.t1;
  time = s2.t1;
  time = s3.t1;
  TotalF = s1.solForce + s2.solForce + s3.solForce + channel.Weightx + channel.fTrack;
  connect(c.x, s1.carX);
  connect(c.x, s2.carX);
  connect(c.x, s3.carX);
  c.F = TotalF;
  connect(c.F, channel.Totalf);
  connect(c.v, channel.v);
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02));
end MultSolSystem;