package Modelica "Modelica Standard Library - Version 3.2.1 (Build 2)"
  extends Modelica.Icons.Package;

  package Blocks "Library of basic input/output control blocks (continuous, discrete, logical, table blocks)"
    import SI = Modelica.SIunits;
    extends Modelica.Icons.Package;

    package Interfaces "Library of connectors and partial models for input/output blocks"
      import Modelica.SIunits;
      extends Modelica.Icons.InterfacesPackage;
      connector RealInput = input Real "'input Real' as connector" annotation(defaultComponentName = "u", Icon(graphics = {Polygon(lineColor = {0, 0, 127}, fillColor = {0, 0, 127}, fillPattern = FillPattern.Solid, points = {{-100.0, 100.0}, {100.0, 0.0}, {-100.0, -100.0}})}, coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.2)), Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 0.2, extent = {{-100.0, -100.0}, {100.0, 100.0}}), graphics = {Polygon(lineColor = {0, 0, 127}, fillColor = {0, 0, 127}, fillPattern = FillPattern.Solid, points = {{0.0, 50.0}, {100.0, 0.0}, {0.0, -50.0}, {0.0, 50.0}}), Text(lineColor = {0, 0, 127}, extent = {{-10.0, 60.0}, {-10.0, 85.0}}, textString = "%name")}), Documentation(info = "<html>
         <p>
         Connector with one input signal of type Real.
         </p>
         </html>"));
      connector RealOutput = output Real "'output Real' as connector" annotation(defaultComponentName = "y", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Polygon(lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-100.0, 100.0}, {100.0, 0.0}, {-100.0, -100.0}})}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Polygon(lineColor = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-100.0, 50.0}, {0.0, 0.0}, {-100.0, -50.0}}), Text(lineColor = {0, 0, 127}, extent = {{30.0, 60.0}, {30.0, 110.0}}, textString = "%name")}), Documentation(info = "<html>
         <p>
         Connector with one output signal of type Real.
         </p>
         </html>"));
      connector BooleanInput = input Boolean "'input Boolean' as connector" annotation(defaultComponentName = "u", Icon(graphics = {Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid)}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.2)), Diagram(coordinateSystem(preserveAspectRatio = true, initialScale = 0.2, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{0, 50}, {100, 0}, {0, -50}, {0, 50}}, lineColor = {255, 0, 255}, fillColor = {255, 0, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-10, 85}, {-10, 60}}, lineColor = {255, 0, 255}, textString = "%name")}), Documentation(info = "<html>
         <p>
         Connector with one input signal of type Boolean.
         </p>
         </html>"));
      connector BooleanOutput = output Boolean "'output Boolean' as connector" annotation(defaultComponentName = "y", Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, lineColor = {255, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(points = {{-100, 50}, {0, 0}, {-100, -50}, {-100, 50}}, lineColor = {255, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{30, 110}, {30, 60}}, lineColor = {255, 0, 255}, textString = "%name")}), Documentation(info = "<html>
         <p>
         Connector with one output signal of type Boolean.
         </p>
         </html>"));
      annotation(Documentation(info = "<HTML>
 <p>
 This package contains interface definitions for
 <b>continuous</b> input/output blocks with Real,
 Integer and Boolean signals. Furthermore, it contains
 partial models for continuous and discrete blocks.
 </p>
 
 </html>", revisions = "<html>
 <ul>
 <li><i>Oct. 21, 2002</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        Added several new interfaces.
 <li><i>Oct. 24, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        RealInputSignal renamed to RealInput. RealOutputSignal renamed to
        output RealOutput. GraphBlock renamed to BlockIcon. SISOreal renamed to
        SISO. SOreal renamed to SO. I2SOreal renamed to M2SO.
        SignalGenerator renamed to SignalSource. Introduced the following
        new models: MIMO, MIMOs, SVcontrol, MVcontrol, DiscreteBlockIcon,
        DiscreteBlock, DiscreteSISO, DiscreteMIMO, DiscreteMIMOs,
        BooleanBlockIcon, BooleanSISO, BooleanSignalSource, MI2BooleanMOs.</li>
 <li><i>June 30, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized a first version, based on an existing Dymola library
        of Dieter Moormann and Hilding Elmqvist.</li>
 </ul>
 </html>"));
    end Interfaces;
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Rectangle(origin = {0.0, 35.1488}, fillColor = {255, 255, 255}, extent = {{-30.0, -20.1488}, {30.0, 20.1488}}), Rectangle(origin = {0.0, -34.8512}, fillColor = {255, 255, 255}, extent = {{-30.0, -20.1488}, {30.0, 20.1488}}), Line(origin = {-51.25, 0.0}, points = {{21.25, -35.0}, {-13.75, -35.0}, {-13.75, 35.0}, {6.25, 35.0}}), Polygon(origin = {-40.0, 35.0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{10.0, 0.0}, {-5.0, 5.0}, {-5.0, -5.0}}), Line(origin = {51.25, 0.0}, points = {{-21.25, 35.0}, {13.75, 35.0}, {13.75, -35.0}, {-6.25, -35.0}}), Polygon(origin = {40.0, -35.0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-10.0, 0.0}, {5.0, 5.0}, {5.0, -5.0}})}), Documentation(info = "<html>
 <p>
 This library contains input/output blocks to build up block diagrams.
 </p>
 
 <dl>
 <dt><b>Main Author:</b>
 <dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
     Deutsches Zentrum f&uuml;r Luft und Raumfahrt e. V. (DLR)<br>
     Oberpfaffenhofen<br>
     Postfach 1116<br>
     D-82230 Wessling<br>
     email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br>
 </dl>
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>June 23, 2004</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Introduced new block connectors and adapted all blocks to the new connectors.
        Included subpackages Continuous, Discrete, Logical, Nonlinear from
        package ModelicaAdditions.Blocks.
        Included subpackage ModelicaAdditions.Table in Modelica.Blocks.Sources
        and in the new package Modelica.Blocks.Tables.
        Added new blocks to Blocks.Sources and Blocks.Logical.
        </li>
 <li><i>October 21, 2002</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        New subpackage Examples, additional components.
        </li>
 <li><i>June 20, 2000</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and
        Michael Tiller:<br>
        Introduced a replaceable signal type into
        Blocks.Interfaces.RealInput/RealOutput:
 <pre>
    replaceable type SignalType = Real
 </pre>
        in order that the type of the signal of an input/output block
        can be changed to a physical type, for example:
 <pre>
    Sine sin1(outPort(redeclare type SignalType=Modelica.SIunits.Torque))
 </pre>
       </li>
 <li><i>Sept. 18, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Renamed to Blocks. New subpackages Math, Nonlinear.
        Additional components in subpackages Interfaces, Continuous
        and Sources. </li>
 <li><i>June 30, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized a first version, based on an existing Dymola library
        of Dieter Moormann and Hilding Elmqvist.</li>
 </ul>
 </html>"));
  end Blocks;

  package Mechanics "Library of 1-dim. and 3-dim. mechanical components (multi-body, rotational, translational)"
    extends Modelica.Icons.Package;

    package Translational "Library to model 1-dimensional, translational mechanical systems"
      extends Modelica.Icons.Package;
      import SI = Modelica.SIunits;

      package Interfaces "Interfaces for 1-dim. translational mechanical components"
        extends Modelica.Icons.InterfacesPackage;

        connector Flange_a "(left) 1D translational flange (flange axis directed INTO cut plane, e. g. from left to right)"
          SI.Position s "Absolute position of flange";
          flow SI.Force f "Cut force directed into flange";
          annotation(defaultComponentName = "flange_a", Documentation(info = "<html>
 <p>
 This is a flange for 1D translational mechanical systems. In the cut plane of
 the flange a unit vector n, called flange axis, is defined which is directed
 INTO the cut plane, i. e. from left to right. All vectors in the cut plane are
 resolved with respect to
 this unit vector. E.g. force f characterizes a vector which is directed in
 the direction of n with value equal to f. When this flange is connected to
 other 1D translational flanges, this means that the axes vectors of the connected
 flanges are identical.
 </p>
 <p>
 The following variables are transported through this connector:
 </p>
 <pre>
   s: Absolute position of the flange in [m]. A positive translation
      means that the flange is translated along the flange axis.
   f: Cut-force in direction of the flange axis in [N].
 </pre>
 </html>"), Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, -100}, {100, 100}}, lineColor = {0, 127, 0}, fillColor = {0, 127, 0}, fillPattern = FillPattern.Solid)}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-40, -40}, {40, 40}}, lineColor = {0, 127, 0}, fillColor = {0, 127, 0}, fillPattern = FillPattern.Solid), Text(extent = {{-160, 110}, {40, 50}}, lineColor = {0, 127, 0}, textString = "%name")}));
        end Flange_a;
        annotation(Documentation(info = "<html>
 <p>
 This package contains connectors and partial models for 1-dim.
 translational mechanical components. The components of this package can
 only be used as basic building elements for models.
 </p>
 
 </html>"));
      end Interfaces;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(origin = {14, 53}, points = {{-84, -73}, {66, -73}}), Rectangle(origin = {14, 53}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Sphere, extent = {{-81, -65}, {-8, -22}}), Line(visible = true, origin = {14, 53}, points = {{-8, -43}, {-1, -43}, {6, -64}, {17, -23}, {29, -65}, {40, -23}, {50, -44}, {61, -44}}), Line(origin = {14, 53}, points = {{-59, -73}, {-84, -93}}), Line(origin = {14, 53}, points = {{-11, -73}, {-36, -93}}), Line(origin = {14, 53}, points = {{-34, -73}, {-59, -93}}), Line(origin = {14, 53}, points = {{14, -73}, {-11, -93}}), Line(origin = {14, 53}, points = {{39, -73}, {14, -93}}), Line(origin = {14, 53}, points = {{63, -73}, {38, -93}})}), Documentation(info = "<html>
 <p>
 This package contains components to model <i>1-dimensional translational
 mechanical</i> systems.
 </p>
 <p>
 The <i>filled</i> and <i>non-filled green squares</i> at the left and
 right side of a component represent <i>mechanical flanges</i>.
 Drawing a line between such squares means that the corresponding
 flanges are <i>rigidly attached</i> to each other. The components of this
 library can be usually connected together in an arbitrary way. E.g. it is
 possible to connect two springs or two sliding masses with inertia directly
 together.
 <p> The only <i>connection restriction</i> is that the Coulomb friction
 elements (e.g., MassWithStopAndFriction) should be only connected
 together provided a compliant element, such as a spring, is in between.
 The reason is that otherwise the frictional force is not uniquely
 defined if the elements are stuck at the same time instant (i.e., there
 does not exist a unique solution) and some simulation systems may not be
 able to handle this situation, since this leads to a singularity during
 simulation. It can only be resolved in a \"clean way\" by combining the
 two connected friction elements into
 one component and resolving the ambiguity of the frictional force in the
 stuck mode.
 </p>
 <p> Another restriction arises if the hard stops in model MassWithStopAndFriction are used, i. e.
 the movement of the mass is limited by a stop at smax or smin.
 <font color=\"#ff0000\"> <b>This requires the states Stop.s and Stop.v</b> </font>. If these states are eliminated during the index reduction
 the model will not work. To avoid this any inertias should be connected via springs
 to the Stop element, other sliding masses, dampers or hydraulic chambers must be avoided.</p>
 <p>
 In the <i>icon</i> of every component an <i>arrow</i> is displayed in grey
 color. This arrow characterizes the coordinate system in which the vectors
 of the component are resolved. It is directed into the positive
 translational direction (in the mathematical sense).
 In the flanges of a component, a coordinate system is rigidly attached
 to the flange. It is called <i>flange frame</i> and is directed in parallel
 to the component coordinate system. As a result, e.g., the positive
 cut-force of a \"left\" flange (flange_a) is directed into the flange, whereas
 the positive cut-force of a \"right\" flange (flange_b) is directed out of the
 flange. A flange is described by a Modelica connector containing
 the following variables:
 </p>
 <pre>
    Modelica.SIunits.Position s    \"Absolute position of flange\";
    <b>flow</b> Modelica.SIunits.Force f  \"Cut-force in the flange\";
 </pre>
 
 <p>
 This library is designed in a fully object oriented way in order that
 components can be connected together in every meaningful combination
 (e.g., direct connection of two springs or two shafts with inertia).
 As a consequence, most models lead to a system of
 differential-algebraic equations of <i>index 3</i> (= constraint
 equations have to be differentiated twice in order to arrive at
 a state space representation) and the Modelica translator or
 the simulator has to cope with this system representation.
 According to our present knowledge, this requires that the
 Modelica translator is able to symbolically differentiate equations
 (otherwise it is e.g., not possible to provide consistent initial
 conditions; even if consistent initial conditions are present, most
 numerical DAE integrators can cope at most with index 2 DAEs).
 </p>
 
 <p>
 In version 3.2 of the Modelica Standard Library, all <b>dissipative</b> components
 of the Translational library got an optional <b>heatPort</b> connector to which the
 dissipated energy is transported in form of heat. This connector is enabled
 via parameter \"useHeatPort\". If the heatPort connector is enabled,
 it must be connected, and if it is not enabled, it must not be connected.
 Independently, whether the heatPort is enabled or not,
 the dissipated power is available from the new variable \"<b>lossPower</b>\" (which is
 positive if heat is flowing out of the heatPort). For an example, see
 <a href=\"modelica://Modelica.Mechanics.Translational.Examples.HeatLosses\">Examples.HeatLosses</a>.
 </p>
 
 <dl>
 <dt><b>Library Officer</b>
 <dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> <br>
     Deutsches Zentrum f&uuml;r Luft und Raumfahrt e.V. (DLR)<br>
     Institut f&uuml;r Robotik und Mechatronik (DLR-RM)<br>
     Abteilung Systemdynamik und Regelungstechnik<br>
     Postfach 1116<br>
     D-82230 Wessling<br>
     Germany<br>
     email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br><br>
 </dl>
 
 <p>
 <b>Contributors to this library:</b>
 </p>
 
 <ul>
 <li> Main author until 2006:<br>
      Peter Beater <br>
      Universit&auml;t Paderborn, Abteilung Soest<br>
      Fachbereich Maschinenbau/Automatisierungstechnik<br>
      L&uuml;becker Ring 2 <br>
      D 59494 Soest <br>
      Germany <br>
      email: <A HREF=\"mailto:info@beater.de\">info@beater.de</A><br><br>
      </li>
 
 <li> <a href=\"http://www.haumer.at/\">Anton Haumer</a><br>
      Technical Consulting &amp; Electrical Engineering<br>
      A-3423 St.Andrae-Woerdern, Austria<br>
      email: <a href=\"mailto:a.haumer@haumer.at\">a.haumer@haumer.at</a><br><br></li>
 
 <li> <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> (DLR-RM)</li>
 </ul>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association, Anton Haumer and Universit&auml;t Paderborn, FB 12.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>Version 1.2.0 2010-07-22</i>
        by Anton Haumer and Martin Otter<br>
        heatPort introduced for all dissipative elements, and
        text in icons improved.
        <br></li>
 
 <li><i>Version 1.1.0 2007-11-16</i>
        by Anton Haumer<br>
        Redesign for Modelica 3.0-compliance<br>
        Added new components according to Mechanics.Rotational library
        <br></li>
 
 <li><i>Version 1.01 (July 18, 2001)</i>
        by Peter Beater <br>
        Assert statement added to \"Stop\", small bug fixes in examples.
        <br></li>
 
 <li><i>Version 1.0 (January 5, 2000)</i>
        by Peter Beater <br>
        Realized a first version based on Modelica library Mechanics.Rotational
        by Martin Otter and an existing Dymola library onedof.lib by Peter Beater.</li>
 </ul>
 </html>"));
    end Translational;
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}, initialScale = 0.1), graphics = {Rectangle(origin = {8.6, 63.3333}, lineColor = {64, 64, 64}, fillColor = {192, 192, 192}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-4.6, -93.33329999999999}, {41.4, -53.3333}}), Ellipse(origin = {9.0, 46.0}, extent = {{-90.0, -60.0}, {-80.0, -50.0}}), Line(origin = {9.0, 46.0}, points = {{-85.0, -55.0}, {-60.0, -21.0}}, thickness = 0.5), Ellipse(origin = {9.0, 46.0}, extent = {{-65.0, -26.0}, {-55.0, -16.0}}), Line(origin = {9.0, 46.0}, points = {{-60.0, -21.0}, {9.0, -55.0}}, thickness = 0.5), Ellipse(origin = {9.0, 46.0}, fillPattern = FillPattern.Solid, extent = {{4.0, -60.0}, {14.0, -50.0}}), Line(origin = {9.0, 46.0}, points = {{-10.0, -26.0}, {72.0, -26.0}, {72.0, -86.0}, {-10.0, -86.0}})}), Documentation(info = "<HTML>
 <p>
 This package contains components to model the movement
 of 1-dim. rotational, 1-dim. translational, and
 3-dim. <b>mechanical systems</b>.
 </p>
 
 <p>
 Note, all <b>dissipative</b> components of the Modelica.Mechanics library have
 an optional <b>heatPort</b> connector to which the
 dissipated energy is transported in form of heat. This connector is enabled
 via parameter \"useHeatPort\". If the heatPort connector is enabled,
 it must be connected, and if it is not enabled, it must not be connected.
 Independently, whether the heatPort is enabled or not,
 the dissipated power is available from variable \"<b>lossPower</b>\" (which is
 positive if heat is flowing out of the heatPort).
 </p>
 </html>"));
  end Mechanics;

  package Math "Library of mathematical functions (e.g., sin, cos) and of functions operating on vectors and matrices"
    import SI = Modelica.SIunits;
    extends Modelica.Icons.Package;

    package Icons "Icons for Math"
      extends Modelica.Icons.IconsPackage;

      partial function AxisLeft "Basic icon for mathematical function with y-axis on left side"
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-80, 68}}, color = {192, 192, 192}), Polygon(points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 80}, {-88, 80}}, color = {95, 95, 95}), Line(points = {{-80, -80}, {-88, -80}}, color = {95, 95, 95}), Line(points = {{-80, -90}, {-80, 84}}, color = {95, 95, 95}), Text(extent = {{-75, 104}, {-55, 84}}, lineColor = {95, 95, 95}, textString = "y"), Polygon(points = {{-80, 98}, {-86, 82}, {-74, 82}, {-80, 98}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>
 Icon for a mathematical function, consisting of an y-axis on the left side.
 It is expected, that an x-axis is added and a plot of the function.
 </p>
 </html>"));
      end AxisLeft;

      partial function AxisCenter "Basic icon for mathematical function with y-axis in the center"
        annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{0, -80}, {0, 68}}, color = {192, 192, 192}), Polygon(points = {{0, 90}, {-8, 68}, {8, 68}, {0, 90}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 150}, {150, 110}}, textString = "%name", lineColor = {0, 0, 255})}), Diagram(graphics = {Line(points = {{0, 80}, {-8, 80}}, color = {95, 95, 95}), Line(points = {{0, -80}, {-8, -80}}, color = {95, 95, 95}), Line(points = {{0, -90}, {0, 84}}, color = {95, 95, 95}), Text(extent = {{5, 104}, {25, 84}}, lineColor = {95, 95, 95}, textString = "y"), Polygon(points = {{0, 98}, {-6, 82}, {6, 82}, {0, 98}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>
 Icon for a mathematical function, consisting of an y-axis in the middle.
 It is expected, that an x-axis is added and a plot of the function.
 </p>
 </html>"));
      end AxisCenter;
    end Icons;

    function sin "Sine"
      extends Modelica.Math.Icons.AxisLeft;
      input Modelica.SIunits.Angle u;
      output Real y;
    
      external "builtin" y = sin(u);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {-68.7, 34.2}, {-61.5, 53.1}, {-55.1, 66.40000000000001}, {-49.4, 74.59999999999999}, {-43.8, 79.09999999999999}, {-38.2, 79.8}, {-32.6, 76.59999999999999}, {-26.9, 69.7}, {-21.3, 59.4}, {-14.9, 44.1}, {-6.83, 21.2}, {10.1, -30.8}, {17.3, -50.2}, {23.7, -64.2}, {29.3, -73.09999999999999}, {35, -78.40000000000001}, {40.6, -80}, {46.2, -77.59999999999999}, {51.9, -71.5}, {57.5, -61.9}, {63.9, -47.2}, {72, -24.8}, {80, 0}}, color = {0, 0, 0}), Text(extent = {{12, 84}, {84, 36}}, lineColor = {192, 192, 192}, textString = "sin")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, 0}, {84, 0}}, color = {95, 95, 95}), Polygon(points = {{100, 0}, {84, 6}, {84, -6}, {100, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 0}, {-68.7, 34.2}, {-61.5, 53.1}, {-55.1, 66.40000000000001}, {-49.4, 74.59999999999999}, {-43.8, 79.09999999999999}, {-38.2, 79.8}, {-32.6, 76.59999999999999}, {-26.9, 69.7}, {-21.3, 59.4}, {-14.9, 44.1}, {-6.83, 21.2}, {10.1, -30.8}, {17.3, -50.2}, {23.7, -64.2}, {29.3, -73.09999999999999}, {35, -78.40000000000001}, {40.6, -80}, {46.2, -77.59999999999999}, {51.9, -71.5}, {57.5, -61.9}, {63.9, -47.2}, {72, -24.8}, {80, 0}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{-105, 72}, {-85, 88}}, textString = "1", lineColor = {0, 0, 255}), Text(extent = {{70, 25}, {90, 5}}, textString = "2*pi", lineColor = {0, 0, 255}), Text(extent = {{-103, -72}, {-83, -88}}, textString = "-1", lineColor = {0, 0, 255}), Text(extent = {{82, -6}, {102, -26}}, lineColor = {95, 95, 95}, textString = "u"), Line(points = {{-80, 80}, {-28, 80}}, color = {175, 175, 175}, smooth = Smooth.None), Line(points = {{-80, -80}, {50, -80}}, color = {175, 175, 175}, smooth = Smooth.None)}), Documentation(info = "<html>
 <p>
 This function returns y = sin(u), with -&infin; &lt; u &lt; &infin;:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Math/sin.png\">
 </p>
 </html>"));
    end sin;

    function cos "Cosine"
      extends Modelica.Math.Icons.AxisLeft;
      input SI.Angle u;
      output Real y;
    
      external "builtin" y = cos(u);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, 80}, {-74.40000000000001, 78.09999999999999}, {-68.7, 72.3}, {-63.1, 63}, {-56.7, 48.7}, {-48.6, 26.6}, {-29.3, -32.5}, {-22.1, -51.7}, {-15.7, -65.3}, {-10.1, -73.8}, {-4.42, -78.8}, {1.21, -79.90000000000001}, {6.83, -77.09999999999999}, {12.5, -70.59999999999999}, {18.1, -60.6}, {24.5, -45.7}, {32.6, -23}, {50.3, 31.3}, {57.5, 50.7}, {63.9, 64.59999999999999}, {69.5, 73.40000000000001}, {75.2, 78.59999999999999}, {80, 80}}, color = {0, 0, 0}), Text(extent = {{-36, 82}, {36, 34}}, lineColor = {192, 192, 192}, textString = "cos")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Text(extent = {{-103, 72}, {-83, 88}}, textString = "1", lineColor = {0, 0, 255}), Text(extent = {{-103, -72}, {-83, -88}}, textString = "-1", lineColor = {0, 0, 255}), Text(extent = {{70, 25}, {90, 5}}, textString = "2*pi", lineColor = {0, 0, 255}), Line(points = {{-100, 0}, {84, 0}}, color = {95, 95, 95}), Polygon(points = {{98, 0}, {82, 6}, {82, -6}, {98, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, 80}, {-74.40000000000001, 78.09999999999999}, {-68.7, 72.3}, {-63.1, 63}, {-56.7, 48.7}, {-48.6, 26.6}, {-29.3, -32.5}, {-22.1, -51.7}, {-15.7, -65.3}, {-10.1, -73.8}, {-4.42, -78.8}, {1.21, -79.90000000000001}, {6.83, -77.09999999999999}, {12.5, -70.59999999999999}, {18.1, -60.6}, {24.5, -45.7}, {32.6, -23}, {50.3, 31.3}, {57.5, 50.7}, {63.9, 64.59999999999999}, {69.5, 73.40000000000001}, {75.2, 78.59999999999999}, {80, 80}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{78, -6}, {98, -26}}, lineColor = {95, 95, 95}, textString = "u"), Line(points = {{-80, -80}, {18, -80}}, color = {175, 175, 175}, smooth = Smooth.None)}), Documentation(info = "<html>
 <p>
 This function returns y = cos(u), with -&infin; &lt; u &lt; &infin;:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Math/cos.png\">
 </p>
 </html>"));
    end cos;

    function atan "Inverse tangent"
      extends Modelica.Math.Icons.AxisCenter;
      input Real u;
      output SI.Angle y;
    
      external "builtin" y = atan(u);
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-90, 0}, {68, 0}}, color = {192, 192, 192}), Polygon(points = {{90, 0}, {68, 8}, {68, -8}, {90, 0}}, lineColor = {192, 192, 192}, fillColor = {192, 192, 192}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-52.7, -75.2}, {-37.4, -69.7}, {-26.9, -63}, {-19.7, -55.2}, {-14.1, -45.8}, {-10.1, -36.4}, {-6.03, -23.9}, {-1.21, -5.06}, {5.23, 21}, {9.25, 34.1}, {13.3, 44.2}, {18.1, 52.9}, {24.5, 60.8}, {33.4, 67.59999999999999}, {47, 73.59999999999999}, {69.5, 78.59999999999999}, {80, 80}}, color = {0, 0, 0}), Text(extent = {{-86, 68}, {-14, 20}}, lineColor = {192, 192, 192}, textString = "atan")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-100, 0}, {84, 0}}, color = {95, 95, 95}), Polygon(points = {{96, 0}, {80, 6}, {80, -6}, {96, 0}}, lineColor = {95, 95, 95}, fillColor = {95, 95, 95}, fillPattern = FillPattern.Solid), Line(points = {{-80, -80}, {-52.7, -75.2}, {-37.4, -69.7}, {-26.9, -63}, {-19.7, -55.2}, {-14.1, -45.8}, {-10.1, -36.4}, {-6.03, -23.9}, {-1.21, -5.06}, {5.23, 21}, {9.25, 34.1}, {13.3, 44.2}, {18.1, 52.9}, {24.5, 60.8}, {33.4, 67.59999999999999}, {47, 73.59999999999999}, {65, 77}, {80, 78}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{-34, 87}, {-14, 74}}, textString = "pi/2", lineColor = {0, 0, 255}), Text(extent = {{-32, -71}, {-12, -91}}, textString = "-pi/2", lineColor = {0, 0, 255}), Text(extent = {{84, -4}, {104, -24}}, lineColor = {95, 95, 95}, textString = "u"), Line(points = {{-2, 80}, {84, 80}}, color = {175, 175, 175}, smooth = Smooth.None)}), Documentation(info = "<html>
 <p>
 This function returns y = atan(u), with -&infin; &lt; u &lt; &infin;:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/Math/atan.png\">
 </p>
 </html>"));
    end atan;
    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-80, 0}, {-68.7, 34.2}, {-61.5, 53.1}, {-55.1, 66.40000000000001}, {-49.4, 74.59999999999999}, {-43.8, 79.09999999999999}, {-38.2, 79.8}, {-32.6, 76.59999999999999}, {-26.9, 69.7}, {-21.3, 59.4}, {-14.9, 44.1}, {-6.83, 21.2}, {10.1, -30.8}, {17.3, -50.2}, {23.7, -64.2}, {29.3, -73.09999999999999}, {35, -78.40000000000001}, {40.6, -80}, {46.2, -77.59999999999999}, {51.9, -71.5}, {57.5, -61.9}, {63.9, -47.2}, {72, -24.8}, {80, 0}}, color = {0, 0, 0}, smooth = Smooth.Bezier)}), Documentation(info = "<HTML>
 <p>
 This package contains <b>basic mathematical functions</b> (such as sin(..)),
 as well as functions operating on
 <a href=\"modelica://Modelica.Math.Vectors\">vectors</a>,
 <a href=\"modelica://Modelica.Math.Matrices\">matrices</a>,
 <a href=\"modelica://Modelica.Math.Nonlinear\">nonlinear functions</a>, and
 <a href=\"modelica://Modelica.Math.BooleanVectors\">Boolean vectors</a>.
 </p>
 
 <dl>
 <dt><b>Main Authors:</b>
 <dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and
     Marcus Baur<br>
     Deutsches Zentrum f&uuml;r Luft und Raumfahrt e.V. (DLR)<br>
     Institut f&uuml;r Robotik und Mechatronik<br>
     Postfach 1116<br>
     D-82230 Wessling<br>
     Germany<br>
     email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br>
 </dl>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>October 21, 2002</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
        and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br>
        Function tempInterpol2 added.</li>
 <li><i>Oct. 24, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Icons for icon and diagram level introduced.</li>
 <li><i>June 30, 1999</i>
        by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
        Realized.</li>
 </ul>
 
 </html>"));
  end Math;

  package Icons "Library of icons"
    extends Icons.Package;

    partial package Package "Icon for standard packages"
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0), Rectangle(lineColor = {128, 128, 128}, fillPattern = FillPattern.None, extent = {{-100.0, -100.0}, {100.0, 100.0}}, radius = 25.0)}), Documentation(info = "<html>
 <p>Standard package icon.</p>
 </html>"));
    end Package;

    partial package InterfacesPackage "Icon for packages containing interfaces"
      extends Modelica.Icons.Package;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {20.0, 0.0}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, points = {{-10.0, 70.0}, {10.0, 70.0}, {40.0, 20.0}, {80.0, 20.0}, {80.0, -20.0}, {40.0, -20.0}, {10.0, -70.0}, {-10.0, -70.0}}), Polygon(fillColor = {102, 102, 102}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-100.0, 20.0}, {-60.0, 20.0}, {-30.0, 70.0}, {-10.0, 70.0}, {-10.0, -70.0}, {-30.0, -70.0}, {-60.0, -20.0}, {-100.0, -20.0}})}), Documentation(info = "<html>
 <p>This icon indicates packages containing interfaces.</p>
 </html>"));
    end InterfacesPackage;

    partial package IconsPackage "Icon for packages containing icons"
      extends Modelica.Icons.Package;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {-8.167, -17}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier, lineColor = {0, 0, 0}), Ellipse(origin = {-0.5, 56.5}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}}, lineColor = {0, 0, 0})}));
    end IconsPackage;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(origin = {-8.167, -17}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15.833, 20.0}, {-15.833, 30.0}, {14.167, 40.0}, {24.167, 20.0}, {4.167, -30.0}, {14.167, -30.0}, {24.167, -30.0}, {24.167, -40.0}, {-5.833, -50.0}, {-15.833, -30.0}, {4.167, 20.0}, {-5.833, 20.0}}, smooth = Smooth.Bezier, lineColor = {0, 0, 0}), Ellipse(origin = {-0.5, 56.5}, fillColor = {128, 128, 128}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-12.5, -12.5}, {12.5, 12.5}}, lineColor = {0, 0, 0})}), Documentation(info = "<html>
 <p>This package contains definitions for the graphical layout of components which may be used in different libraries. The icons can be utilized by inheriting them in the desired class using &quot;extends&quot; or by directly copying the &quot;icon&quot; layer. </p>
 
 <h4>Main Authors:</h4>
 
 <dl>
 <dt><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a></dt>
     <dd>Deutsches Zentrum fuer Luft und Raumfahrt e.V. (DLR)</dd>
     <dd>Oberpfaffenhofen</dd>
     <dd>Postfach 1116</dd>
     <dd>D-82230 Wessling</dd>
     <dd>email: <a href=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</a></dd>
 <dt>Christian Kral</dt>
     <dd><a href=\"http://www.ait.ac.at/\">Austrian Institute of Technology, AIT</a></dd>
     <dd>Mobility Department</dd><dd>Giefinggasse 2</dd>
     <dd>1210 Vienna, Austria</dd>
     <dd>email: <a href=\"mailto:dr.christian.kral@gmail.com\">dr.christian.kral@gmail.com</a></dd>
 <dt>Johan Andreasson</dt>
     <dd><a href=\"http://www.modelon.se/\">Modelon AB</a></dd>
     <dd>Ideon Science Park</dd>
     <dd>22370 Lund, Sweden</dd>
     <dd>email: <a href=\"mailto:johan.andreasson@modelon.se\">johan.andreasson@modelon.se</a></dd>
 </dl>
 
 <p>Copyright &copy; 1998-2013, Modelica Association, DLR, AIT, and Modelon AB. </p>
 <p><i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified under the terms of the <b>Modelica license</b>, see the license conditions and the accompanying <b>disclaimer</b> in <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a>.</i> </p>
 </html>"));
  end Icons;

  package SIunits "Library of type and unit definitions based on SI units according to ISO 31-1992"
    extends Modelica.Icons.Package;
    // Space and Time (chapter 1 of ISO 31-1992)
    type Angle = Real(final quantity = "Angle", final unit = "rad", displayUnit = "deg");
    type Length = Real(final quantity = "Length", final unit = "m");
    type Position = Length;
    type Distance = Length(min = 0);
    type Area = Real(final quantity = "Area", final unit = "m2");
    type Acceleration = Real(final quantity = "Acceleration", final unit = "m/s2");
    // Periodic and related phenomens (chapter 2 of ISO 31-1992)
    // For compatibility reasons only
    // added to ISO-chapter
    // Mechanics (chapter 3 of ISO 31-1992)
    type Mass = Real(quantity = "Mass", final unit = "kg", min = 0);
    type Force = Real(final quantity = "Force", final unit = "N");
    // added to ISO-chapter 3
    // Heat (chapter 4 of ISO 31-1992)
    // added to ISO-chapter 4
    // Electricity and Magnetism (chapter 5 of ISO 31-1992)
    type ElectricCurrent = Real(final quantity = "ElectricCurrent", final unit = "A");
    type Current = ElectricCurrent;
    type ElectricPotential = Real(final quantity = "ElectricPotential", final unit = "V");
    type Voltage = ElectricPotential;
    type Permeability = Real(final quantity = "Permeability", final unit = "H/m");
    type Resistance = Real(final quantity = "Resistance", final unit = "Ohm");
    // added to ISO-chapter 5
    // Light and Related Electromagnetic Radiations (chapter 6 of ISO 31-1992)"
    // Acoustics (chapter 7 of ISO 31-1992)
    // Physical chemistry and molecular physics (chapter 8 of ISO 31-1992)
    // Atomic and Nuclear Physics (chapter 9 of ISO 31-1992)
    // Nuclear Reactions and Ionizing Radiations (chapter 10 of ISO 31-1992)
    // chapter 11 is not defined in ISO 31-1992
    // Characteristic Numbers (chapter 12 of ISO 31-1992)
    // The Biot number (Bi) is used when
    // the Nusselt number is reserved
    // for convective transport of heat.
    // Solid State Physics (chapter 13 of ISO 31-1992)
    // Other types not defined in ISO 31-1992
    // Complex types for electrical systems (not defined in ISO 31-1992)
    annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics = {Line(points = {{-66, 78}, {-66, -40}}, color = {64, 64, 64}, smooth = Smooth.None), Ellipse(extent = {{12, 36}, {68, -38}}, lineColor = {64, 64, 64}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Rectangle(extent = {{-74, 78}, {-66, -40}}, lineColor = {64, 64, 64}, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Polygon(points = {{-66, -4}, {-66, 6}, {-16, 56}, {-16, 46}, {-66, -4}}, lineColor = {64, 64, 64}, smooth = Smooth.None, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Polygon(points = {{-46, 16}, {-40, 22}, {-2, -40}, {-10, -40}, {-46, 16}}, lineColor = {64, 64, 64}, smooth = Smooth.None, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid), Ellipse(extent = {{22, 26}, {58, -28}}, lineColor = {64, 64, 64}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Polygon(points = {{68, 2}, {68, -46}, {64, -60}, {58, -68}, {48, -72}, {18, -72}, {18, -64}, {46, -64}, {54, -60}, {58, -54}, {60, -46}, {60, -26}, {64, -20}, {68, -6}, {68, 2}}, lineColor = {64, 64, 64}, smooth = Smooth.Bezier, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
 <p>This package provides predefined types, such as <i>Mass</i>,
 <i>Angle</i>, <i>Time</i>, based on the international standard
 on units, e.g.,
 </p>
 
 <pre>   <b>type</b> Angle = Real(<b>final</b> quantity = \"Angle\",
                      <b>final</b> unit     = \"rad\",
                      displayUnit    = \"deg\");
 </pre>
 
 <p>
 as well as conversion functions from non SI-units to SI-units
 and vice versa in subpackage
 <a href=\"modelica://Modelica.SIunits.Conversions\">Conversions</a>.
 </p>
 
 <p>
 For an introduction how units are used in the Modelica standard library
 with package SIunits, have a look at:
 <a href=\"modelica://Modelica.SIunits.UsersGuide.HowToUseSIunits\">How to use SIunits</a>.
 </p>
 
 <p>
 Copyright &copy; 1998-2013, Modelica Association and DLR.
 </p>
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 </html>", revisions = "<html>
 <ul>
 <li><i>May 25, 2011</i> by Stefan Wischhusen:<br/>Added molar units for energy and enthalpy.</li>
 <li><i>Jan. 27, 2010</i> by Christian Kral:<br/>Added complex units.</li>
 <li><i>Dec. 14, 2005</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Add User&#39;;s Guide and removed &quot;min&quot; values for Resistance and Conductance.</li>
 <li><i>October 21, 2002</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and <a href=\"http://www.robotic.dlr.de/Christian.Schweiger/\">Christian Schweiger</a>:<br/>Added new package <b>Conversions</b>. Corrected typo <i>Wavelenght</i>.</li>
 <li><i>June 6, 2000</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Introduced the following new types<br/>type Temperature = ThermodynamicTemperature;<br/>types DerDensityByEnthalpy, DerDensityByPressure, DerDensityByTemperature, DerEnthalpyByPressure, DerEnergyByDensity, DerEnergyByPressure<br/>Attribute &quot;final&quot; removed from min and max values in order that these values can still be changed to narrow the allowed range of values.<br/>Quantity=&quot;Stress&quot; removed from type &quot;Stress&quot;, in order that a type &quot;Stress&quot; can be connected to a type &quot;Pressure&quot;.</li>
 <li><i>Oct. 27, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>New types due to electrical library: Transconductance, InversePotential, Damping.</li>
 <li><i>Sept. 18, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Renamed from SIunit to SIunits. Subpackages expanded, i.e., the SIunits package, does no longer contain subpackages.</li>
 <li><i>Aug 12, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Type &quot;Pressure&quot; renamed to &quot;AbsolutePressure&quot; and introduced a new type &quot;Pressure&quot; which does not contain a minimum of zero in order to allow convenient handling of relative pressure. Redefined BulkModulus as an alias to AbsolutePressure instead of Stress, since needed in hydraulics.</li>
 <li><i>June 29, 1999</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br/>Bug-fix: Double definition of &quot;Compressibility&quot; removed and appropriate &quot;extends Heat&quot; clause introduced in package SolidStatePhysics to incorporate ThermodynamicTemperature.</li>
 <li><i>April 8, 1998</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and Astrid Jaschinski:<br/>Complete ISO 31 chapters realized.</li>
 <li><i>Nov. 15, 1997</i> by <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a> and <a href=\"http://www.control.lth.se/~hubertus/\">Hubertus Tummescheit</a>:<br/>Some chapters realized.</li>
 </ul>
 </html>"));
  end SIunits;
  annotation(__Wolfram(totalModelPart = true, totalModelId = "{8263ea68-b38c-4bdf-8431-3ce8535e00f9}"), preferredView = "info", version = "3.2.1", versionBuild = 2, versionDate = "2013-08-14", dateModified = "2013-08-14 08:44:41Z", revisionId = "$Id:: package.mo 6931 2013-08-14 11:38:51Z #$", uses(Complex(version = "3.2.1"), ModelicaServices(version = "3.2.1")), conversion(noneFromVersion = "3.2", noneFromVersion = "3.1", noneFromVersion = "3.0.1", noneFromVersion = "3.0", from(version = "2.1", script = "modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"), from(version = "2.2", script = "modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"), from(version = "2.2.1", script = "modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos"), from(version = "2.2.2", script = "modelica://Modelica/Resources/Scripts/Dymola/ConvertModelica_from_2.2.2_to_3.0.mos")), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}), graphics = {Polygon(origin = {-6.9888, 20.048}, fillColor = {0, 0, 0}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-93.0112, 10.3188}, {-93.0112, 10.3188}, {-73.011, 24.6}, {-63.011, 31.221}, {-51.219, 36.777}, {-39.842, 38.629}, {-31.376, 36.248}, {-25.819, 29.369}, {-24.232, 22.49}, {-23.703, 17.463}, {-15.501, 25.135}, {-6.24, 32.015}, {3.02, 36.777}, {15.191, 39.423}, {27.097, 37.306}, {32.653, 29.633}, {35.035, 20.108}, {43.501, 28.046}, {54.085, 35.19}, {65.991, 39.952}, {77.89700000000001, 39.688}, {87.422, 33.338}, {91.126, 21.696}, {90.068, 9.525}, {86.099, -1.058}, {79.749, -10.054}, {71.283, -21.431}, {62.816, -33.337}, {60.964, -32.808}, {70.489, -16.14}, {77.36799999999999, -2.381}, {81.072, 10.054}, {79.749, 19.05}, {72.605, 24.342}, {61.758, 23.019}, {49.587, 14.817}, {39.003, 4.763}, {29.214, -6.085}, {21.012, -16.669}, {13.339, -26.458}, {5.401, -36.777}, {-1.213, -46.037}, {-6.24, -53.446}, {-8.092000000000001, -52.387}, {-0.6840000000000001, -40.746}, {5.401, -30.692}, {12.81, -17.198}, {19.424, -3.969}, {23.658, 7.938}, {22.335, 18.785}, {16.514, 23.283}, {8.047000000000001, 23.019}, {-1.478, 19.05}, {-11.267, 11.113}, {-19.734, 2.381}, {-29.259, -8.202}, {-38.519, -19.579}, {-48.044, -31.221}, {-56.511, -43.392}, {-64.449, -55.298}, {-72.386, -66.93899999999999}, {-77.678, -74.61199999999999}, {-79.53, -74.083}, {-71.857, -61.383}, {-62.861, -46.037}, {-52.278, -28.046}, {-44.869, -15.346}, {-38.784, -2.117}, {-35.344, 8.731}, {-36.403, 19.844}, {-42.488, 23.813}, {-52.013, 22.49}, {-60.744, 16.933}, {-68.947, 10.054}, {-76.884, 2.646}, {-93.0112, -12.1707}, {-93.0112, -12.1707}}, smooth = Smooth.Bezier), Ellipse(origin = {40.8208, -37.7602}, fillColor = {161, 0, 4}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-17.8562, -17.8563}, {17.8563, 17.8562}})}), Documentation(info = "<HTML>
 <p>
 Package <b>Modelica&reg;</b> is a <b>standardized</b> and <b>free</b> package
 that is developed together with the Modelica&reg; language from the
 Modelica Association, see
 <a href=\"https://www.Modelica.org\">https://www.Modelica.org</a>.
 It is also called <b>Modelica Standard Library</b>.
 It provides model components in many domains that are based on
 standardized interface definitions. Some typical examples are shown
 in the next figure:
 </p>
 
 <p>
 <img src=\"modelica://Modelica/Resources/Images/UsersGuide/ModelicaLibraries.png\">
 </p>
 
 <p>
 For an introduction, have especially a look at:
 </p>
 <ul>
 <li> <a href=\"modelica://Modelica.UsersGuide.Overview\">Overview</a>
   provides an overview of the Modelica Standard Library
   inside the <a href=\"modelica://Modelica.UsersGuide\">User's Guide</a>.</li>
 <li><a href=\"modelica://Modelica.UsersGuide.ReleaseNotes\">Release Notes</a>
  summarizes the changes of new versions of this package.</li>
 <li> <a href=\"modelica://Modelica.UsersGuide.Contact\">Contact</a>
   lists the contributors of the Modelica Standard Library.</li>
 <li> The <b>Examples</b> packages in the various libraries, demonstrate
   how to use the components of the corresponding sublibrary.</li>
 </ul>
 
 <p>
 This version of the Modelica Standard Library consists of
 </p>
 <ul>
 <li><b>1360</b> models and blocks, and</li>
 <li><b>1280</b> functions</li>
 </ul>
 <p>
 that are directly usable (= number of public, non-partial classes). It is fully compliant
 to <a href=\"https://www.modelica.org/documents/ModelicaSpec32Revision2.pdf\">Modelica Specification Version 3.2 Revision 2</a>
 and it has been tested with Modelica tools from different vendors.
 </p>
 
 <p>
 <b>Licensed by the Modelica Association under the Modelica License 2</b><br>
 Copyright &copy; 1998-2013, ABB, AIT, T.&nbsp;B&ouml;drich, DLR, Dassault Syst&egrave;mes AB, Fraunhofer, A.Haumer, ITI, Modelon,
 TU Hamburg-Harburg, Politecnico di Milano, XRG Simulation.
 </p>
 
 <p>
 <i>This Modelica package is <u>free</u> software and the use is completely at <u>your own risk</u>; it can be redistributed and/or modified under the terms of the Modelica License 2. For license conditions (including the disclaimer of warranty) see <a href=\"modelica://Modelica.UsersGuide.ModelicaLicense2\">Modelica.UsersGuide.ModelicaLicense2</a> or visit <a href=\"https://www.modelica.org/licenses/ModelicaLicense2\"> https://www.modelica.org/licenses/ModelicaLicense2</a>.</i>
 </p>
 
 <p>
 <b>Modelica&reg;</b> is a registered trademark of the Modelica Association.
 </p>
 </html>"));
end Modelica;

package XogenyModels
  package SolenoidSystem
    model SimSysTrial "Tries to use the graphical connectors"
      import XogenyModels.Components.SolenoidSystemComponents;
      XogenyModels.Components.SolenoidSystemComponents.CarWithConnector c(x0 = 0, m = 0.75) annotation(Placement(visible = true, transformation(origin = {-37.7299, 30.0}, extent = {{-17.7299, -17.7299}, {17.7299, 17.7299}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol1(N = 1, A = 1, mu = 1, V = 12.8, R = 2, PWM = 1, Px = 2.0, h = 1) annotation(Placement(visible = true, transformation(origin = {-87.5, 27.5}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol2(N = 1, A = 1, mu = 1, V = 12.8, R = 2, PWM = 1, Px = 4.0, h = 1) annotation(Placement(visible = true, transformation(origin = {-85.0, -7.7614}, extent = {{-22.2386, -22.2386}, {22.2386, 22.2386}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.SolFWConnector sol3(N = 1, A = 1, mu = 1, V = 12.8, R = 2, PWM = 1, Px = 6.0, h = 1) annotation(Placement(visible = true, transformation(origin = {-87.5, 65.0}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.MagSen sensor1(Px = 2) annotation(Placement(visible = true, transformation(origin = {36.5252, 16.5252}, extent = {{-21.5252, -21.5252}, {21.5252, 21.5252}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.VControl control1(threshold = 1) annotation(Placement(visible = true, transformation(origin = {89.1647, 73.83839999999999}, extent = {{-19.1647, -19.1647}, {19.1647, 19.1647}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.MagSen sensor2(Px = 4) annotation(Placement(visible = true, transformation(origin = {35.0, 76.761}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.VControl control2(threshold = 1) annotation(Placement(visible = true, transformation(origin = {96.1694, -46.645}, extent = {{-23.8306, -23.8306}, {23.8306, 23.8306}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.MagSen sensor3(Px = 6) annotation(Placement(visible = true, transformation(origin = {37.5118, -45.0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.VControl control3(threshold = 1) annotation(Placement(visible = true, transformation(origin = {92.5, 15.0}, extent = {{-22.5, -22.5}, {22.5, 22.5}}, rotation = 0)));
      XogenyModels.Components.SolenoidSystemComponents.TrackWC channel(m = 0.75, l = 4, h = 1, mu = 1, g = 9.81, fTol = 1) annotation(Placement(visible = true, transformation(origin = {-84.20010000000001, -65.79989999999999}, extent = {{-20.7999, -20.7999}, {20.7999, 20.7999}}, rotation = 0)));
    equation
      connect(sensor2.V, control2.V) annotation(Line(visible = true, origin = {42.4245, 8.8497}, points = {{4.958, 68.3347}, {14.9851, 39.5741}, {47.692, -55.1163}}, color = {0, 0, 127}));
      connect(sensor1.V, control1.V) annotation(Line(visible = true, origin = {50.3506, 54.0539}, points = {{-0.4986, -37.0731}, {11.4816, -19.0539}, {33.9462, 20.0887}}, color = {0, 0, 127}));
      connect(sensor3.V, control3.V) annotation(Line(visible = true, origin = {52.7031, -1.6349}, points = {{-2.8088, -42.9418}, {12.2969, -19.9779}, {34.0819, 16.9921}}, color = {0, 0, 127}));
      connect(sol1.command, control1.command) annotation(Line(visible = true, origin = {15.1815, 53.0627}, points = {{-109.4315, -25.056}, {-20.1815, 1.9373}, {54.8185, 1.9373}, {74.7945, 21.1814}}, color = {255, 0, 255}));
      connect(c.v, channel.v) annotation(Line(visible = true, origin = {-68.1281, -28.7946}, points = {{34.4325, 62.3406}, {-1.8719, -6.2054}, {-10.2485, -19.1299}, {-22.312, -37.0053}}, color = {0, 0, 127}));
      connect(sol3.command, control3.command) annotation(Line(visible = true, origin = {17.9266, 35.7371}, points = {{-112.1766, 29.7696}, {-14.1786, 4.2629}, {48.3254, -13.7717}, {75.52589999999999, -20.2608}}, color = {255, 0, 255}));
      connect(sol2.command, control2.command) annotation(Line(visible = true, origin = {36.0312, -26.7006}, points = {{-127.7027, 19.44}, {33.2778, 19.44}, {33.2778, -19.44}, {61.1471, -19.44}}, color = {255, 0, 255}));
      connect(channel.Cf, c.c) annotation(Line(visible = true, origin = {-49.8194, -31.6108}, points = {{-34.3807, -34.1891}, {4.8194, -34.1891}, {4.8194, 1.6108}, {12.371, 1.6108}, {12.371, 65.1568}}, color = {0, 127, 0}));
      connect(sol2.sol, c.c) annotation(Line(visible = true, origin = {-59.842, 13.2053}, points = {{-25.158, -20.3407}, {1.3822, -20.3407}, {1.3822, 20.3407}, {22.3936, 20.3407}}, color = {0, 127, 0}));
      connect(sol1.sol, c.c) annotation(Line(visible = true, origin = {-60.467, 30.8396}, points = {{-27.033, -2.7063}, {2.0072, -2.7063}, {2.0072, 2.7063}, {23.0186, 2.7063}}, color = {0, 127, 0}));
      connect(sol3.sol, c.c) annotation(Line(visible = true, origin = {-35.8521, 50.0}, points = {{-51.6479, 15.6333}, {-1.5964, 15.6333}, {-1.5964, -16.454}, {-1.5964, -16.454}}, color = {0, 127, 0}));
      connect(sensor3.CartMag, c.c) annotation(Line(visible = true, origin = {-22.4361, -9.3111}, points = {{60.0495, -35.7905}, {-15.0124, -35.6889}, {-15.0124, 14.3111}, {-15.0124, 14.3111}, {-15.0124, 42.8571}}, color = {0, 127, 0}));
      connect(sensor1.CartMag, c.c) annotation(Line(visible = true, origin = {-8.7035, 24.9809}, points = {{45.338, -8.565099999999999}, {-8.2965, -8.565099999999999}, {-8.2965, 8.565099999999999}, {-28.745, 8.565099999999999}}, color = {0, 127, 0}));
      connect(sensor2.CartMag, c.c) annotation(Line(visible = true, origin = {-9.0867, 55.1027}, points = {{44.1884, 21.5567}, {-7.9133, 21.5567}, {-7.9133, -21.5567}, {-28.3617, -21.5567}}, color = {0, 127, 0}));
      annotation(Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
    end SimSysTrial;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end SolenoidSystem;

  package Components
    package SolenoidSystemComponents
      model VControl "Controller that is based on position x"
        parameter SIunits.Voltage threshold "Threshold voltage to determine wanted proximity";
        Boolean near;
        Modelica.Blocks.Interfaces.BooleanOutput command annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {4.2333, 2.1167}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput V annotation(Placement(visible = true, transformation(origin = {-20, 0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0), iconTransformation(origin = {-25.4, 1.5875}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
      algorithm
        near := abs(V) > threshold;
        when near then
          command := true;
        end when;
        when not near then
          command := false;
        end when;
        annotation(Icon(graphics = {Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {0, 0, 0}, fillPattern = FillPattern.None), Rectangle(extent = {{-25, 25}, {25, 75}}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, pattern = LinePattern.None, lineColor = {0, 0, 0}), Rectangle(extent = {{-80, 5}, {80, -5}}, fillColor = {100, 100, 100}, fillPattern = FillPattern.Solid, pattern = LinePattern.None, lineColor = {0, 0, 0}), Rectangle(extent = {{-25, -25}, {25, -75}}, fillColor = {0, 255, 0}, fillPattern = FillPattern.Solid, pattern = LinePattern.None, lineColor = {0, 0, 0}), Text(extent = {{-100, -100}, {100, -140}}, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, textString = "%name")}));
      end VControl;

      model TrackWC
        parameter SIunits.Mass m "Mass of the cart";
        parameter SIunits.Length l "Length of the cart";
        parameter SIunits.Length h "Height of cart from ground";
        parameter Real mu "Coefficient of friction of the track";
        parameter SIunits.Acceleration g "Local value of g acting on cart (in vertical direction)";
        parameter Real fTol "The tolerance between switching of signs for friction";
        SIunits.Force N "Normal force from track";
        SIunits.Force W "Weight acting along track";
        SIunits.Force Ff "Frictional force from track surface";
        Modelica.Blocks.Interfaces.RealInput v annotation(Placement(visible = true, transformation(origin = {-22.225, -0.5292}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0), iconTransformation(origin = {-30.0, 0.0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
        SIunits.Angle angle "Calculated value of the angle of the incline";
        Real tanAngle;
        Modelica.Mechanics.Translational.Interfaces.Flange_a Cf annotation(Placement(visible = true, transformation(origin = {0.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, -0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
      equation
        tanAngle = h / l;
        angle = Math.atan(tanAngle);
        N = m * g * Math.cos(angle);
        if v < (-fTol) then
          Ff = mu * N;
        elseif v > 0 then
          Ff = -mu * N;
        else
          Ff = (-2 * mu * N) / fTol * v - mu * N;
        end if;
        W = m * g * Math.sin(angle);
        Cf.f = -(W + Ff);
        annotation(Icon(graphics = {Rectangle(visible = true, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100.0, -30.0}, {100.0, 30.0}}), Ellipse(visible = true, lineColor = {255, 0, 0}, extent = {{-20.0, -20.0}, {20.0, 20.0}}), Ellipse(visible = true, lineColor = {255, 0, 0}, extent = {{-15.0, -15.0}, {15.0, 15.0}}), Ellipse(visible = true, lineColor = {255, 0, 0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), Text(visible = true, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, extent = {{-100.0, -140.0}, {100.0, -100.0}}, textString = "%name", fontName = "Arial")}, coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
      end TrackWC;

      model SolFWConnector "Model of just solenoid force (no control)"
        parameter Real N "Property of the solenoid design";
        parameter SIunits.Area A "Property of the solenoid design";
        parameter SIunits.Permeability mu "Property of the solenoid design";
        parameter SIunits.Voltage V "Voltage across solenoid";
        parameter SIunits.Resistance R "Resistance of solenoid";
        parameter Real PWM "Pulse Width Modulation of voltage across solenoid";
        parameter SIunits.Position Px "Position of solenoid";
        parameter SIunits.Distance h "Vertical air gap between car and solenoid";
        Modelica.Mechanics.Translational.Interfaces.Flange_a sol annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-0.0, 2.8147}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
        Modelica.Blocks.Interfaces.BooleanInput command annotation(Placement(visible = true, transformation(origin = {-38.2801, 1.6888}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0), iconTransformation(origin = {-30.0, 2.2518}, extent = {{-20.0, -20.0}, {20.0, 20.0}}, rotation = 0)));
      equation
        if command then
          sol.f = -N ^ 2 * A * mu * V ^ 2 / R ^ 2 * PWM ^ 2 * (Px - sol.s) / (h ^ 2 + (Px - sol.s) ^ 2) ^ (3 / 2);
        else
          sol.f = 0;
        end if;
        annotation(Icon(graphics = {Ellipse(extent = {{-100, 50}, {0, -50}}, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Backward), Ellipse(extent = {{100, 50}, {0, -50}}, lineColor = {0, 0, 255}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Forward), Rectangle(extent = {{-50, 50}, {50, -50}}, fillColor = {100, 100, 100}, fillPattern = FillPattern.CrossDiag, pattern = LinePattern.None)}));
      end SolFWConnector;

      model MagSen "Senses magnet on cart"
        MagProperties mag(N = 1, A = 1, chi = 1, mu = 1, h = 1);
        parameter SIunits.Position Px;
        Modelica.Mechanics.Translational.Interfaces.Flange_a CartMag annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.5083, -0.5083}, extent = {{-50.5083, -50.5083}, {50.5083, 50.5083}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput V annotation(Placement(visible = true, transformation(origin = {61.9125, 2.1167}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {61.9125, 2.1167}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
      protected
        SIunits.Position dx = CartMag.s - Px;
      equation
        CartMag.f = 0;
        V = -mag.N * mag.A * mag.chi * mag.mu * dx * der(CartMag.s) / (dx ^ 2 + mag.h ^ 2) ^ (3 / 2);
        annotation(Icon(graphics = {Ellipse(visible = true, lineColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-100.0, -100.0}, {100.0, 100.0}}), Text(visible = true, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, extent = {{-100.0, -140.0}, {100.0, -100.0}}, textString = "%name", fontName = "Arial")}, coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
      end MagSen;

      record MagProperties
        parameter Real N "Number of turns on solenoid";
        parameter SIunits.Area A "Area of cross section of solenoid";
        parameter SIunits.Current chi "Property of magnet";
        parameter SIunits.Permeability mu "Property of surroundings between magnet and solenoid";
        parameter SIunits.Distance h "Vertical distance between magnet and solenoid";
        annotation(Diagram(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
      end MagProperties;

      model CarWithConnector
        parameter SIunits.Mass m "Mass of the car";
        parameter SIunits.Position x0 "Starting position of the car";
        SIunits.Acceleration a "Acceleration of the car";
        Modelica.Mechanics.Translational.Interfaces.Flange_a c annotation(Placement(visible = true, transformation(origin = {1.5875, 20.1083}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {1.5875, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput v annotation(Placement(visible = true, transformation(origin = {22.7542, 20.1083}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {22.7542, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0)));
      initial equation
        c.s = x0;
      equation
        v = der(c.s);
        a = der(v);
        c.f = m * a;
        annotation(Icon(graphics = {Rectangle(visible = true, pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-75.0, 0.0}, {75.0, 40.0}}), Ellipse(visible = true, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, extent = {{-50.0, -25.0}, {-25.0, 0.0}}), Ellipse(visible = true, fillColor = {175, 175, 175}, fillPattern = FillPattern.Solid, extent = {{25.0, -25.0}, {50.0, 0.0}}), Text(visible = true, lineColor = {0, 0, 255}, fillColor = {85, 170, 255}, fillPattern = FillPattern.Solid, extent = {{-100.0, -140.0}, {100.0, -100.0}}, textString = "%name", fontName = "Arial")}, coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
      end CarWithConnector;

      import Modelica.Math;
      import Modelica.SIunits;
      import Modelica.Mechanics.Translational.Interfaces;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end SolenoidSystemComponents;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Components;
  annotation(__Wolfram(totalModelPart = true, totalModelId = "{8263ea68-b38c-4bdf-8431-3ce8535e00f9}"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end XogenyModels;

model XogenyModels_SolenoidSystem_SimSysTrial
  extends XogenyModels.SolenoidSystem.SimSysTrial;
  annotation(__Wolfram(totalModelMain = true, totalModelId = "{8263ea68-b38c-4bdf-8431-3ce8535e00f9}"));
end XogenyModels_SolenoidSystem_SimSysTrial;