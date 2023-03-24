within Tutorial.Mechanics.Translational.Examples;
model SpringMass
  Components.Ground ground
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-84,0})));
  Components.LinearSpring linearSpring
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Components.Mass mass( v(start=1))
    annotation (Placement(transformation(extent={{-26,-10},{-6,10}})));
  Components.NonLinearSpring nonLinearSpring
    annotation (Placement(transformation(extent={{14,-10},{34,10}})));
  Components.Mass mass1
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
equation
  connect(ground.point, linearSpring.left)
    annotation (Line(points={{-80,0},{-60,0}}, color={0,0,0}));
  connect(linearSpring.right, mass.left)
    annotation (Line(points={{-40,0},{-26,0}}, color={0,0,0}));
  connect(mass.right, nonLinearSpring.left)
    annotation (Line(points={{-6,0},{14,0}}, color={0,0,0}));
  connect(nonLinearSpring.right, mass1.left)
    annotation (Line(points={{34,0},{50,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SpringMass;
