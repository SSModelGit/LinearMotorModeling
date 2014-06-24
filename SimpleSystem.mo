model SimpleSystem
  Car c;
  JustForce f1(N=1);
  TimedController t1(onTime=0.5, offTime=1.0);
equation
  connect(c.x, f1.x) "Tell solenoid f1 what the car's position is";
  connect(c.x, t1.x) "Tell controller t1 what the car's position is";
  connect(f1.f, c.f) "Tell car what force is being applied";
  connect(t1.command, f1.command) "Tell solenoid f1 when to turn on";
end SimpleSystem;
