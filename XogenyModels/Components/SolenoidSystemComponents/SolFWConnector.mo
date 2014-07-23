within XogenyModels.Components.SolenoidSystemComponents;
model SolFWConnector "Model of just solenoid force (no control)"
  parameter Real N "Property of the solenoid design";
  parameter SIunits.Area A "Property of the solenoid design";
  parameter SIunits.Permeability mu "Property of the solenoid design";
  parameter SIunits.Voltage V "Voltage across solenoid";
  parameter SIunits.Resistance R "Resistance of solenoid";
  parameter Real PWM "Pulse Width Modulation of voltage across solenoid";
  parameter SIunits.Position Px "Position of solenoid";
  parameter SIunits.Distance h "Vertical air gap between car and solenoid";
  Modelica.Mechanics.Translational.Interfaces.Flange_a sol annotation(Placement(visible=true, transformation(origin={0,0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={-0.0,2.8147}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Modelica.Blocks.Interfaces.BooleanInput command annotation(Placement(visible=true, transformation(origin={-38.2801,1.6888}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0), iconTransformation(origin={-30.0,2.2518}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0)));
equation 
  if command then
    sol.f=-N^2*A*mu*V^2/R^2*PWM^2*(Px - sol.s)/(h^2 + (Px - sol.s)^2)^(3/2);
  else
    sol.f=0;
  end if;
  annotation(Icon(graphics={Ellipse(extent={{-100,50},{0,-50}}, lineColor={0,0,255}, fillColor={0,0,0}, fillPattern=FillPattern.Backward),Ellipse(extent={{100,50},{0,-50}}, lineColor={0,0,255}, fillColor={0,0,0}, fillPattern=FillPattern.Forward),Rectangle(extent={{-50,50},{50,-50}}, fillColor={100,100,100}, fillPattern=FillPattern.CrossDiag, pattern=LinePattern.None)}));
end SolFWConnector;
