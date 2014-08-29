within XogenyModels.Components.SolenoidSystemComponents;

record MagProperties
  parameter Real N "Number of turns on solenoid";
  parameter SIunits.Area A "Area of cross section of solenoid";
  parameter SIunits.Current chi "Property of magnet";
  parameter SIunits.Permeability mu "Property of surroundings between magnet and solenoid";
  parameter SIunits.Distance h "Vertical distance between magnet and solenoid";
  annotation(Diagram(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end MagProperties;