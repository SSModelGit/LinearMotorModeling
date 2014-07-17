within XogenyModels.Components.SolenoidSystemComponents;
model XControl "Controller that is based on position x"
  MagProperties mag(N, A, chi, mu, h);
  parameter SIunits.Distance startx "position at when the solenoid turns on";
  parameter SIunits.Distance endx "position at when the solenoid turns off";
  SIunits.Position x "position of cart";
  SIunits.Velocity v "velocity of the cart";
  Boolean notFinished;
  output Boolean command;
  input SIunits.Voltage V "Voltage of the sensor";
initial equation 
  notFinished=true;
  command=false;
equation 
  v=der(x);
  V=-mag.N*mag.A*mag.chi*mag.mu*(x*v/(x^2 + mag.h^2)^(3/2));
  if notFinished then
    command=x >= startx and x <= endx;
  else
    command=false;
  end if;
  when abs(x - endx) < 0.001 then
    notFinished=false;
  end when;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end XControl;
