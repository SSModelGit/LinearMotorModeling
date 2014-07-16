model XControl "Controller that is based on position x"
  parameter SIunits.Distance startx "position at when the solenoid turns on";
  parameter SIunits.Distance endX "position at when the solenoid turns off";
  parameter Real N "Number of turns on solenoid";
  parameter SIunits.Area A "Area of cross section of solenoid";
  parameter SIunits.Current chi "Property of magnet";
  parameter SIunits.Permeability mu "Property of surroundings between magnet and solenoid";
  parameter SIunits.Distance h "Vertical distance between magnet and solenoid";
  SIunits.Position x "position of cart";
  SIunits.Velocity v "velocity of the cart";
  Boolean turnback;
  input SIunits.Voltage V "Voltage of the sensor";
initial equation 
  turnback=false;
equation 
  v=der(x);
  V=-N*A*chi*mu*(x*v/(x^2 + h^2)^(3/2));
  if v < 0 then
    turnback=true;
  end if;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end XControl;
