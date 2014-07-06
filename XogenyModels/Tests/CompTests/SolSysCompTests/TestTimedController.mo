within XogenyModels.Tests.CompTests.SolSysCompTests;
model TestTimedController
  SolenoidSystemComponents.TimedController t1(onTime=1.0, offTime=2.0);
  Boolean com;
equation 
  time=t1.t;
  com=t1.command;
  annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})), Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})));
end TestTimedController;
