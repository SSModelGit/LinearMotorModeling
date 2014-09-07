model NewtonCoolingWithDefaults "Cooling example with default parameter values"
  parameter Real T_inf=25 "Ambient temperature";
  parameter Real T0=90 "Initial temperature";
  parameter Real h=0.7 "Convective cooling coefficient";
  parameter Real A0=1.0 "Initial surface area";
  parameter Real m=0.1 "Mass of thermal capacitance";
  parameter Real c_p=1.2 "Specific heat";
  parameter Real k=0.177 "Expansion coefficient";
  Real T "Temperature";
  Real A "Surface Area";
initial equation 
  T=T0 "Specify initial value for T";
  A=A0 "Specify initial value for A";
equation 
  m*c_p*der(T)=h*A*(T_inf - T) "Newton's Law of Cooling";
  der(A)=A0 + k*(T - T_inf) "Expansion of surface formula";
end NewtonCoolingWithDefaults;
