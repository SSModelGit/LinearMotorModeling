within XogenyModels.Components.SolenoidSystemComponents;
model ControlledSol
  SolenoidSystemComponents.JustForce solF(N=N1, A=A1, mu=mu1, V=V1, R=R1, PWM=PWM1, Px=Px1, h=h1);
  SolenoidSystemComponents.TimedController solControl(onTime=onTime1, offTime=offTime1);
  parameter Real N1 "Property of the solenoid design";
  parameter Real A1 "Property of the solenoid design";
  parameter Real mu1 "Property of the solenoid design";
  parameter Real V1 "Voltage across solenoid";
  parameter Real R1 "Resistance of solenoid";
  parameter Real PWM1 "Pulse Width Modulation of voltage across solenoid";
  parameter Real Px1 "Position of solenoid";
  parameter Real h1 "Vertical air gap between car and solenoid";
  parameter Real onTime1 "Time to turn on";
  parameter Real offTime1 "Time to turn off";
  parameter Real x0 "Starting position";
  output Real solForce;
  input Real carX;
  input Real t1;
initial equation 
  carX=x0;
equation 
  connect(solControl.command,solF.command);
  carX=solF.x;
  solControl.t=t1;
  solForce=solF.F;
  annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})), Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})));
end ControlledSol;
