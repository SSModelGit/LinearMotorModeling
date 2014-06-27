model SimpleSystem
  Car c(x0=0, v0=0, m=10);
  JustForce f1(N=1, A=1, mu=1, V=1, R=1, PWM=1, Px=1, h=1);
  TimedController t1(onTime=0.5, offTime=1.0);
equation
  connect(c.x, f1.x) "Tell solenoid f1 what the car's position is";
  connect(t1.command, f1.command) "Tell solenoid f1 when to turn on";
  connect(f1.f, c.f) "Tell car what force is being applied";
  t1.t = time;
end SimpleSystem;
