within XogenyModels.Tests.CompTests.SolSysCompTests;
model TestJustForce
  SolenoidSystemComponents.OldComponents.JustForce f1(N=1, A=1, mu=1, V=1, R=1, PWM=1, Px=2, h=1);
  Real force;
  Boolean com;
initial equation 
  f1.command=false;
  f1.x=1;
equation 
  when time > 0.5 then
    f1.command=true;
  end when;
  der(f1.x)=0;
  when time >= 1.0 then
    assert(abs(force - 0.3535) < 0.001, "Force is not within 0.001 of 0.3535");
  end when;
  force=f1.F;
  com=f1.command;
  annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})), Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})));
end TestJustForce;
