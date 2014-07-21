within XogenyModels.Components.SolenoidSystemComponents;
model VControl "Controller that is based on position x"
  parameter SIunits.Voltage threshold "Threshold voltage to determine wanted proximity";
  Boolean notFinished;
  Boolean Started;
  output Boolean command;
  input SIunits.Voltage V "Voltage of the sensor";
initial equation 
  notFinished=true;
  command=false;
  Started = true;
equation 
  when abs(abs(V)-threshold) <1e-3 and Started then
	notFinished = false;
  end when;
  when abs(V)>threshold and notFinished then
    command = true;
	Started = true;
  end when; 
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end VControl;
