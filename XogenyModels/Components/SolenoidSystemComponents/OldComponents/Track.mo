within XogenyModels.Components.SolenoidSystemComponents.OldComponents;
model Track
  parameter Real CartMass "Mass of the cart";
  parameter Real l "Length of the cart";
  parameter Real h "Height of cart from ground";
  parameter Real mu "Coefficient of friction of the track";
  parameter Real gLocal "Local value of g acting on cart (in vertical direction)";
  output Real Weightx "Weight acting along track";
  output Real fTrack "Frictional force from track surface";
  input Real Totalf "Force from solenoid";
  input Real v "Velocity of cart";
  Real angle "Calculated value of the angle of the incline";
equation 
  angle=Math.atan(h/l);
  if Totalf - 0 < 0.001 and v - 0 < 0.001 then
    fTrack=-Weightx;
  else
    fTrack=-mu*CartMass*gLocal*Math.cos(angle);
  end if;
  Weightx=CartMass*gLocal*Math.sin(angle);
  annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})), Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, initialScale=0.1, grid={2,2})));
end Track;
