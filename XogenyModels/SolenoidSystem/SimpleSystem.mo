within XogenyModels.SolenoidSystem;
model SimpleSystem
  import XogenyModels.Components.SolenoidSystemComponents.OldComponents;
  OldComponents.Car c(x0=0, v0=0, m=0.75);
  OldComponents.JustForce f1(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=2.0, h=1);
  SolenoidSystemComponents.TimedController t1(onTime=1.0, offTime=6.0);
equation 
  connect(c.x,f1.x) "Tell solenoid f1 what the car's position is";
  connect(t1.command,f1.command) "Tell solenoid f1 when to turn on";
  connect(f1.F,c.F) "Tell car what force is being applied";
  t1.t=time;
  annotation(experiment(StartTime=0, StopTime=10, Tolerance=1e-06, Interval=0.02));
end SimpleSystem;
