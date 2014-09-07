model RLCVbChange "A resistor-inductor-capacitor circuit model"
  type Voltage= Real(unit="V");
  type Current= Real(unit="A");
  type Resistance= Real(unit="Ohm");
  type Capacitance= Real(unit="F");
  type Inductance= Real(unit="H");
  type AngularFrequency= Real(unit="rad/s");
  type VperS= Real(unit="V/s");
  parameter Inductance L=1;
  parameter Resistance R=100;
  parameter Capacitance C=0.001;
  parameter Voltage a=1;
  parameter Voltage b=10;
  parameter AngularFrequency omega=1;
  Voltage Vb;
  Voltage V;
  Current i_L;
  Current i_C;
  Current i_R;
  VperS dVb(start=1);
equation 
  der(Vb)=dVb;
  der(dVb)=-omega^2*Vb;
  V=i_R*R;
  C*der(V)=i_C;
  L*der(i_L)=Vb - V;
  i_L=i_R + i_C;
end RLCVbChange;
