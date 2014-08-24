within XogenyModels.Tests.CompTests.SolSysCompTests;
model FlangeForTests
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
  Modelica.Mechanics.Translational.Interfaces.Flange_a f annotation(Placement(visible=true, transformation(origin={2.3574,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0), iconTransformation(origin={1.5875,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=0)));
equation 
  f.s=1;
end FlangeForTests;
