model SolenoidForceModel "Model of force exerted by solenoids upon a cart"
  parameter Real N=1;
  parameter Real A=1;
  parameter Real mu=1;
  parameter Real V=1;
  parameter Real R=1;
  parameter Real PWM=1;
  parameter Real x1=1;
  parameter Real x2=2;
  parameter Real x3=3;
  parameter Real h=1;
  Real F_s1;
  Real F_s2;
  Real F_s3;
  Boolean onF1;
  Boolean onF2;
initial equation 
  onF1=true;
  onF2=false;
  F_s3=0;
equation 
  if onF1 then
    F_s1=N^2*A*mu*V^2/R^2*(PWM^2*(x1 - x)/(h^2 + (x1 - x)^2)^(3/2));
  else
    F_s1=0;
  end if;
  when time > 1 then
    F_s1=0;
    onF1=false;
  end when;
  when {time < 1,time > 1.54} then
    F_s2=0;
    onF2=false;
  end when;
  when time > 1 then
    onF2=true;
  end when;
  if onF2 then
    F_s2=N^2*A*mu*V^2/R^2*(PWM^2*(x2 - x)/(h^2 + (x2 - x)^2)^(3/2));
  else
    F_s2=0;
  end if;
  when time > 1.54 then
    F_s3=N^2*A*mu*V^2/R^2*(PWM^2*(x3 - x)/(h^2 + (x3 - x)^2)^(3/2));
  end when;
  when time > 1.98 then
    F_s3=0;
  end when;
end SolenoidForceModel;
