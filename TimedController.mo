model TimedController "A controller that activates in a given time interval"
  input Real x "Position";
  output Boolean command "True if solenoid should be turned on";
  parameter Real onTime "Time to turn on";
  parameter Real offTime "Time to turn off";
equation
  command = time>=onTime and time<=offTime;
end TimedController;
