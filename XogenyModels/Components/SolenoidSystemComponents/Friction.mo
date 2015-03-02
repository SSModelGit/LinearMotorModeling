within XogenyModels.Components.SolenoidSystemComponents;
model Friction
  Modelica.Blocks.Interfaces.RealInput v[3] annotation(Placement(visible = true, transformation(origin = {-3.113, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {21.606, -2.205}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Ff[3] annotation(Placement(visible = true, transformation(origin = {-5, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-10, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  parameter Real fTol;
  parameter Real k;
equation
  if v[1] < (-fTol) then
    Ff[1] = k;
  elseif v[1] > fTol then
    Ff[1] = -k;
  else
    Ff[1] = -k * Modelica.Math.sin(2 * Modelica.Constants.pi / (4 * fTol) * v[1]);
  end if;
  Ff[2] = 0;
  Ff[3] = 0;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {-19.109, -2.572}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-53.652, 37.85}, {107.303, 2.572}, {-53.652, -40.422}})}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Friction;