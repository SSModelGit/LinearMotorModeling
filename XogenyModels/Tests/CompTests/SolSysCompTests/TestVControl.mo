within XogenyModels.Tests.CompTests.SolSysCompTests;
model TestVControl
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  SolenoidSystemComponents.VControl VControl1(threshold=0.5) annotation(Placement(visible=true, transformation(origin={-1.9575,25.0}, extent={{-35.0,-35.0},{35.0,35.0}}, rotation=0)));
  Modelica.Blocks.Sources.Sine sine1(freqHz=1) annotation(Placement(visible=true, transformation(origin={-115.0,25.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
  Boolean testRunningCurrently;
  Boolean com;
equation 
  connect(sine1.y,VControl1.V) annotation(Line(visible=true, origin={-48.7125,25.2778}, points={{-55.2875,-0.2778},{8.7112,-0.2778},{8.7112,0.2778},{37.865,0.2778}}, color={0,0,127}));
  com=VControl1.command;
  when abs(sine1.y - 0.5) < 0.001 then
    assert(com == true, "Unexpected result for command");
  end when;
end TestVControl;
