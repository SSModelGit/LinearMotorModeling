within XogenyModels.Components.SolenoidSystemComponents;
block TimedController "A controller that activates in a given time interval"
  output Boolean command "True if solenoid should be turned on";
  input Real t "Time variable";
  parameter Real onTime "Time to turn on";
  parameter Real offTime "Time to turn off";
equation
  command = t >= onTime and t <= offTime;
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end TimedController;