within XogenyModels.Components.SolenoidSystemComponents;
model TrackWC
  Interfaces.Flange_a Cf;
  parameter SIunits.Mass m "Mass of the cart";
  parameter SIunits.Length l "Length of the cart";
  parameter SIunits.Length h "Height of cart from ground";
  parameter Real mu "Coefficient of friction of the track";
  parameter SIunits.Acceleration g "Local value of g acting on cart (in vertical direction)";
  parameter Real fTol "The tolerance between switching of signs for friction";
  SIunits.Force N "Normal force from track";
  SIunits.Force W "Weight acting along track";
  SIunits.Force Ff "Frictional force from track surface";
  input SIunits.Velocity v "Velocity of cart";
  input SIunits.Time t "Time";
  SIunits.Angle angle "Calculated value of the angle of the incline";
equation 
  angle=Math.atan(h/l);
  N=m*g*Math.cos(angle);
  if v < -fTol then
    Ff=mu*N;
  elseif v > 0 then
    Ff=-mu*N;
  else
    Ff=(-2*mu*N)/fTol*v - mu*N;
  end if;
  W=m*g*Math.sin(angle);
  Cf.f=-(W + Ff);
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105.0},{148.5,105.0}}, preserveAspectRatio=true, initialScale=0.1, grid={5,5})));
end TrackWC;
