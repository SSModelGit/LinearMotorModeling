within XogenyModels.SolenoidSystem;
model SimSysWC "Simple System Model expanded to multiple solenoids, using connectors"
  import XogenyModels.Components.SolenoidSystemComponents;
  SolenoidSystemComponents.CarWithConnector c(x0=0, m=0.75);
  SolenoidSystemComponents.SolFWConnector sol1(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=2.0, h=1);
  SolenoidSystemComponents.SolFWConnector sol2(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=4.0, h=1);
  SolenoidSystemComponents.SolFWConnector sol3(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=6.0, h=1);
  SolenoidSystemComponents.TimedController t1(onTime=1.0, offTime=1.59);
  SolenoidSystemComponents.TimedController t2(onTime=1.59, offTime=1.83);
  SolenoidSystemComponents.TimedController t3(onTime=1.83, offTime=1.99);
  SolenoidSystemComponents.TrackWC channel(m=0.75, l=4, h=0.6, mu=0.2, g=9.81, fTol=0.005);
equation 
  connect(c.c,sol1.sol) "Relay position from car to solenoid, sum up all forces automatically";
  connect(c.c,sol2.sol) "Relay position from car to solenoid, sum up all forces automatically";
  connect(c.c,sol3.sol) "Relay position from car to solenoid, sum up all forces automatically";
  connect(c.c,channel.Cf) "Relay position from car to solenoid, sum up all forces automatically";
  t1.command=sol1.command "Tell solenoid when to turn on";
  t2.command=sol2.command "Tell solenoid when to turn on";
  t3.command=sol3.command "Tell solenoid when to turn on";
  t1.t=time;
  t2.t=time;
  t3.t=time;
  channel.t=time;
  c.v=channel.v;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end SimSysWC;
