within XogenyModels.Components.SolenoidSystemComponents;
model SolFWConnector "Model of just solenoid force (no control)"
  Interfaces.Flange_a sol;
  type MagneticPermeability= Real(unit="N/A2");
  parameter Real N "Property of the solenoid design";
  parameter SIunits.Area A "Property of the solenoid design";
  parameter MagneticPermeability mu "Property of the solenoid design";
  parameter SIunits.Voltage V "Voltage across solenoid";
  parameter SIunits.Resistance R "Resistance of solenoid";
  parameter Real PWM "Pulse Width Modulation of voltage across solenoid";
  parameter SIunits.Position Px "Position of solenoid";
  parameter SIunits.Distance h "Vertical air gap between car and solenoid";
  input Boolean command "True if the solenoid is on, otherwise false";
equation 
  if command then
    sol.f=-N^2*A*mu*V^2/R^2*PWM^2*(Px - sol.s)/(h^2 + (Px - sol.s)^2)^(3/2);
  else
    sol.f=0;
  end if;
  annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})), Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})));
end SolFWConnector;
