within XogenyModels.SolenoidSystem;
model SimSysWC "Simple System Model expanded to multiple solenoids, using connectors"
  XogenyModels.Components.SolenoidSystemComponents.CarWithConnector c(x0=0, m=0.75) annotation(Placement(visible=true, transformation(origin={-100.0,75.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol1(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=2.0, h=1) annotation(Placement(visible=true, transformation(origin={32.9481,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol2(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=4.0, h=1) annotation(Placement(visible=true, transformation(origin={41.934,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol3(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=6.0, h=1) annotation(Placement(visible=true, transformation(origin={75.0,26.8711}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor2(Px=4) annotation(Placement(visible=true, transformation(origin={-60.0,57.2917}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor3(Px=6) annotation(Placement(visible=true, transformation(origin={-22.2131,18.4709}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor1(Px=2) annotation(Placement(visible=true, transformation(origin={-97.9638,7.9874}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl VControl1(threshold=1) annotation(Placement(visible=true, transformation(origin={-17.4725,-62.9009}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl VControl2(threshold=1) annotation(Placement(visible=true, transformation(origin={-75.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl VControl3(threshold=1) annotation(Placement(visible=true, transformation(origin={17.5904,-65.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.TrackWC trackWC1 annotation(Placement(visible=true, transformation(origin={-47.9245,-21.7689}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  connect(c.c,sol1.sol) "Relay position from car to solenoid, sum up all forces automatically";
  connect(c.c,sol2.sol) "Relay position from car to solenoid, sum up all forces automatically";
  connect(c.c,sol3.sol) "Relay position from car to solenoid, sum up all forces automatically";
  connect(c.c,sensor2.CartMag);
  connect(c.c,sensor3.CartMag);
  true=sol1.command "Tell solenoid when to turn on";
  true=sol2.command "Tell solenoid when to turn on";
  true=sol3.command "Tell solenoid when to turn on";
  channel.t=time;
  c.v=channel.v;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end SimSysWC;
