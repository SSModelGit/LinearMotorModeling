within XogenyModels.Components.SolenoidSystemComponents;
model SolFWConnector "Model of just solenoid force (no control)"
  SolenoidSystemComponents.ElMag sol(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=2.0, h=1);
  input Boolean command "True if the solenoid is on, otherwise false";
equation 
  if command then
    sol.F=sol.N^2*sol.A*sol.mu*sol.V^2/sol.R^2*sol.PWM^2*(sol.Px - sol.x)/(sol.h^2 + (sol.Px - sol.x)^2)^(3/2);
  else
    sol.F=0;
  end if;
  annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})), Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})));
end SolFWConnector;
