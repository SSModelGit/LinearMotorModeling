model SolenoidForceModel "Model of force exerted by solenoids upon a cart"
  parameter Real N = 1;
  parameter Real A = 1;
  parameter Real mu = 1;
  parameter Real V = 1;
  parameter Real R = 1;
  parameter Real PWM = 1;
  parameter Real sol[3] = {1,2,3};
  parameter Real h = 1;
  Real F_s1;
  Real F_s2;
  Real F_s3;
  Boolean onF1;
  Boolean onF2;
initial equation
  onF1 = true;
  onF2 = false;
  F_s3 = 0;
end SolenoidForceModel;