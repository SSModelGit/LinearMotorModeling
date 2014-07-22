within XogenyModels.SolenoidSystem;
model SimSysTrial "Tries to use the graphical connectors"
  import XogenyModels.Components.SolenoidSystemComponents;
  XogenyModels.Components.SolenoidSystemComponents.CarWithConnector c(x0=0, m=0.75) annotation(Placement(visible=true, transformation(origin={-87.3624,42.5668}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  SolenoidSystemComponents.SolFWConnector sol1(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=2.0, h=1);
  SolenoidSystemComponents.SolFWConnector sol2(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=4.0, h=1);
  SolenoidSystemComponents.SolFWConnector sol3(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=6.0, h=1);
  SolenoidSystemComponents.MagSen sensor1(Px=2);
  SolenoidSystemComponents.VControl control1(threshold=1);
  SolenoidSystemComponents.MagSen sensor2(Px=4);
  SolenoidSystemComponents.VControl control2(threshold=1);
  SolenoidSystemComponents.MagSen sensor3(Px=6);
  SolenoidSystemComponents.VControl control3(threshold=1);
  SolenoidSystemComponents.TrackWC y(m=0.75, l=4, h=1, mu=1, g=9.81, fTol=1);
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end SimSysTrial;
