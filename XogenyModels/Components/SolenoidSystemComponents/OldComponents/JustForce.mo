within XogenyModels.Components.SolenoidSystemComponents.OldComponents;
block JustForce "Model of just solenoid force (no control)"
  parameter Real N "Property of the solenoid design";
  parameter Real A "Property of the solenoid design";
  parameter Real mu "Property of the solenoid design";
  parameter Real V "Voltage across solenoid";
  parameter Real R "Resistance of solenoid";
  parameter Real PWM "Pulse Width Modulation of voltage across solenoid";
  parameter Real Px "Position of solenoid";
  parameter Real h "Vertical air gap between car and solenoid";
  output Real F "Solenoid force";
  input Real x "Position of car";
  input Boolean command "True if the solenoid is on, otherwise false";
equation 
  if command then
    F=N^2*A*mu*V^2/R^2*PWM^2*(Px - x)/(h^2 + (Px - x)^2)^(3/2);
  else
    F=0;
  end if;
  annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})), Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})));
end JustForce;
