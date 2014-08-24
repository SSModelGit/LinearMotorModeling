within XogenyModels.Tests.CompTests.SolSysCompTests;
model TestMagSen
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  XogenyModels.Components.SolenoidSystemComponents.MagSen magSen1(Px=2) annotation(Placement(visible=true, transformation(origin={-81.3227,-1.3227}, extent={{-53.6773,-53.6773},{53.6773,53.6773}}, rotation=0)));
  XogenyModels.Tests.CompTests.SolSysCompTests.FlangeForTests flangeForTests1 annotation(Placement(visible=true, transformation(origin={1.5252,-1.5252}, extent={{-23.4748,-23.4748},{23.4748,23.4748}}, rotation=0)));
  Modelica.SIunits.Voltage V annotation(Placement(visible=true, transformation(origin={5.0,-22.4646}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0), iconTransformation(origin={3.0255,-21.3949}, extent={{-20.0,-20.0},{20.0,20.0}}, rotation=0)));
equation 
  magsen1.V=V;
  connect(magSen1.CartMag,flangeForTests1.f) annotation(Line(visible=true, origin={-31.2629,-1.5604}, points={{-49.787,-0.0352},{8.3132,-0.0352},{8.3132,0.0352},{33.1607,0.0352}}, color={0,127,0}));
end TestMagSen;
