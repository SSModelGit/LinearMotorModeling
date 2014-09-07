model ClassicModelInitialEquations "This is the typical equation-oriented model"
  parameter Real alpha=0.1 "Reproduction rate of prey";
  parameter Real beta=0.02 "Mortality rate of predator per prey";
  parameter Real gamma=0.4 "Mortality rate of predator";
  parameter Real delta=0.02 "Reproduction rate of predator per prey";
  parameter Real epsilon=0.02 "Reproduction rate of super-predator per predator";
  parameter Real tau=0.4 "Mortality rate of super-predator";
  parameter Real phi=0.02 "Mortality rate of super-predator per predator";
  parameter Real psi=0.1 "Reproduction rate of predator";
  parameter Real x0=10 "Initial prey population";
  parameter Real y0=10 "Initial predator population";
  parameter Real z0=10 "Initial super-predator population";
  Real x "Prey population";
  Real y "Predator population";
  Real z "Super-predator population";
initial equation 
  x=x0;
  y=y0;
  z=z0;
equation 
  der(x)=x*(alpha - beta*y);
  der(y)=y*(delta*x - gamma + (psi - phi*z));
  der(z)=z*(epsilon*y - tau);
end ClassicModelInitialEquations;
