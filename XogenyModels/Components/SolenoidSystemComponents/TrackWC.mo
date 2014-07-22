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
  Real tanAngle;
equation 
  tanAngle=h/l;
  angle=Math.atan(tanAngle);
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
  annotation(Icon(graphics={Rectangle(extent={{-50,45},{-45,55}}, fillColor={100,100,100}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Rectangle(extent={{-100,-30},{100,30}}, fillColor={0,0,0}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Rectangle(extent={{-75,30},{-50,70}}, fillColor={0,128,255}, fillPattern=FillPattern.Solid, pattern=LinePattern.None, lineColor={0,0,0}),Ellipse(extent={{-20,-20},{20,20}}, lineColor={255,0,0}, fillColor={0,0,0}, fillPattern=FillPattern.None),Ellipse(extent={{-15,-15},{15,15}}, lineColor={255,0,0}, fillColor={0,0,0}, fillPattern=FillPattern.None),Ellipse(extent={{-10,-10},{10,10}}, lineColor={255,0,0}, fillColor={0,0,0}, fillPattern=FillPattern.None),Text(extent={{-100,-100},{100,-140}}, lineColor={0,0,255}, fillColor={85,170,255}, fillPattern=FillPattern.Solid, textString="%name")}));
end TrackWC;
