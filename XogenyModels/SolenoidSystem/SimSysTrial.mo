within XogenyModels.SolenoidSystem;
model SimSysTrial "Tries to use the graphical connectors"
  import XogenyModels.Components.SolenoidSystemComponents;
  XogenyModels.Components.SolenoidSystemComponents.CarWithConnector c(x0=0, m=0.75) annotation(Placement(visible=true, transformation(origin={-37.7299,30.0}, extent={{-17.7299,-17.7299},{17.7299,17.7299}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol1(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=2.0, h=1) annotation(Placement(visible=true, transformation(origin={-87.5,27.5}, extent={{-22.5,-22.5},{22.5,22.5}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol2(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=4.0, h=1) annotation(Placement(visible=true, transformation(origin={-85.0,-7.7614}, extent={{-22.2386,-22.2386},{22.2386,22.2386}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol3(N=1, A=1, mu=1, V=12.8, R=2, PWM=1, Px=6.0, h=1) annotation(Placement(visible=true, transformation(origin={-87.5,65.0}, extent={{-22.5,-22.5},{22.5,22.5}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor1(Px=2) annotation(Placement(visible=true, transformation(origin={36.5252,16.5252}, extent={{-21.5252,-21.5252},{21.5252,21.5252}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl control1(threshold=1) annotation(Placement(visible=true, transformation(origin={89.1647,73.8384}, extent={{-19.1647,-19.1647},{19.1647,19.1647}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor2(Px=4) annotation(Placement(visible=true, transformation(origin={35.0,76.761}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl control2(threshold=1) annotation(Placement(visible=true, transformation(origin={96.1694,-46.645}, extent={{-23.8306,-23.8306},{23.8306,23.8306}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.MagSen sensor3(Px=6) annotation(Placement(visible=true, transformation(origin={37.5118,-45.0}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.VControl control3(threshold=1) annotation(Placement(visible=true, transformation(origin={92.5,15.0}, extent={{-22.5,-22.5},{22.5,22.5}}, rotation=0)));
  XogenyModels.Components.SolenoidSystemComponents.TrackWC channel(m=0.75, l=4, h=1, mu=1, g=9.81, fTol=1) annotation(Placement(visible=true, transformation(origin={-84.2001,-65.7999}, extent={{-20.7999,-20.7999},{20.7999,20.7999}}, rotation=0)));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
equation 
  connect(channel.Cf,c.c) annotation(Line(visible=true, origin={-49.8194,-31.6108}, points={{-34.3807,-34.1891},{4.8194,-34.1891},{4.8194,1.6108},{12.371,1.6108},{12.371,65.1568}}, color={0,127,0}));
  connect(sol2.sol,c.c) annotation(Line(visible=true, origin={-59.842,13.2053}, points={{-25.158,-20.3407},{1.3822,-20.3407},{1.3822,20.3407},{22.3936,20.3407}}, color={0,127,0}));
  connect(sol1.sol,c.c) annotation(Line(visible=true, origin={-60.467,30.8396}, points={{-27.033,-2.7063},{2.0072,-2.7063},{2.0072,2.7063},{23.0186,2.7063}}, color={0,127,0}));
  connect(sol3.sol,c.c) annotation(Line(visible=true, origin={-35.8521,50.0}, points={{-51.6479,15.6333},{-1.5964,15.6333},{-1.5964,-16.454},{-1.5964,-16.454}}, color={0,127,0}));
  connect(sensor3.CartMag,c.c) annotation(Line(visible=true, origin={-22.4361,-9.3111}, points={{60.0495,-35.7905},{-15.0124,-35.6889},{-15.0124,14.3111},{-15.0124,14.3111},{-15.0124,42.8571}}, color={0,127,0}));
  connect(sensor1.CartMag,c.c) annotation(Line(visible=true, origin={-8.7035,24.9809}, points={{45.338,-8.5651},{-8.2965,-8.5651},{-8.2965,8.5651},{-28.745,8.5651}}, color={0,127,0}));
  connect(sensor2.CartMag,c.c) annotation(Line(visible=true, origin={-9.0867,55.1027}, points={{44.1884,21.5567},{-7.9133,21.5567},{-7.9133,-21.5567},{-28.3617,-21.5567}}, color={0,127,0}));
end SimSysTrial;
