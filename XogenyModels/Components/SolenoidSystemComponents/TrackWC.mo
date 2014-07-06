within XogenyModels.Components.SolenoidSystemComponents;
model TrackWC
  SolenoidSystemComponents.CarF Cf;
  parameter Real m "Mass of the cart";
  parameter Real l "Length of the cart";
  parameter Real h "Height of cart from ground";
  parameter Real mu "Coefficient of friction of the track";
  parameter Real g "Local value of g acting on cart (in vertical direction)";
  parameter Real stopt "final stop time of solenoid";
  Real W "Weight acting along track";
  Real Ff "Frictional force from track surface";
  input Real v "Velocity of cart";
  input Real t "Time";
  Real angle "Calculated value of the angle of the incline";
equation 
  angle=Math.atan(h/l);
  if abs(t - stopt) < 0.001 and v - 0 < 0.001 then
    Ff=-W;
  else
    Ff=-mu*m*g*Math.cos(angle);
  end if;
  W=m*g*Math.sin(angle);
  Cf.F=-(W + Ff);
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end TrackWC;
