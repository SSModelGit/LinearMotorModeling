within XogenyModels.Components.SolenoidSystemComponents;
connector ElMag
  parameter Real N "Property of the solenoid design";
  parameter Real A "Property of the solenoid design";
  parameter Real mu "Property of the solenoid design";
  parameter Real V "Voltage across solenoid";
  parameter Real R "Resistance of solenoid";
  parameter Real PWM "Pulse Width Modulation of voltage across solenoid";
  parameter Real Px "Position of solenoid";
  parameter Real h "Vertical air gap between car and solenoid";
  Modelica.SIunits.Distance x;
  flow Modelica.SIunits.Force F;
  annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
end ElMag;
