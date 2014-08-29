within XogenyModels.Components.SolenoidSystemComponents.OldComponents;

block TimedController "A controller that activates in a given time interval"
  output Boolean command "True if solenoid should be turned on";
  input SIunits.Time t "Time variable";
  parameter SIunits.Time onTime "Time to turn on";
  parameter SIunits.Time offTime "Time to turn off";
equation
  command = t >= onTime and t <= offTime;
  annotation(Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.None), Rectangle(extent = {{-50, -50}, {50, 50}}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, pattern = LinePattern.None, lineColor = {0, 0, 0}), Text(extent = {{-100, -100}, {100, -140}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
end TimedController;