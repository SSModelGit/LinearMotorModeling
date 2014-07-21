within XogenyModels.Components.SolenoidSystemComponents;
model SolFWConnector "Model of just solenoid force (no control)"
  Interfaces.Flange_a sol;
  parameter Real N "Property of the solenoid design";
  parameter SIunits.Area A "Property of the solenoid design";
  parameter SIunits.Permeability mu "Property of the solenoid design";
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
  annotation(Icon(graphics={Ellipse(extent={{-50,50},{50,-50}}, lineColor={0,0,255}, fillColor={0,0,0}, fillPattern=FillPattern.Solid),Rectangle(extent={{-50,50},{50,-50}}, fillColor={0,128,255}, fillPattern=FillPattern.Solid, pattern=LinePattern.None)}));
end SolFWConnector;
