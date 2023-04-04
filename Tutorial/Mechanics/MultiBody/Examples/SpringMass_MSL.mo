within Tutorial.Mechanics.MultiBody.Examples;
model SpringMass_MSL
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-80,0})));
  Modelica.Mechanics.Translational.Components.SpringDamper springDamper1(c=3000,
      d=30) annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Modelica.Mechanics.Translational.Components.SpringDamper springDamper2(c=1000,
      d=10) annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  Modelica.Mechanics.Translational.Components.Mass mass1(m=1, v(start=1))
    annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  Modelica.Mechanics.Translational.Components.Mass mass2(m=10)
    annotation (Placement(transformation(extent={{60,-10},{80,10}})));
equation
  connect(fixed.flange, springDamper1.flange_a)
    annotation (Line(points={{-80,0},{-60,0}}, color={0,127,0}));
  connect(springDamper1.flange_b, mass1.flange_a)
    annotation (Line(points={{-40,0},{-20,0}}, color={0,127,0}));
  connect(mass1.flange_b, springDamper2.flange_a)
    annotation (Line(points={{0,0},{20,0}}, color={0,127,0}));
  connect(springDamper2.flange_b, mass2.flange_a)
    annotation (Line(points={{40,0},{60,0}}, color={0,127,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SpringMass_MSL;
