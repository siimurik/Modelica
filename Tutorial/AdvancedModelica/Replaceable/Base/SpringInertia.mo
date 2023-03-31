within Tutorial.AdvancedModelica.Replaceable.Base;
partial model SpringInertia "Template for the spring inertia system model"
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-80,0})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1
    annotation (Placement(transformation(extent={{-28,-10},{-8,10}})));
  replaceable Modelica.Mechanics.Rotational.Components.SpringDamper
    springDamper1 constrainedby
    Modelica.Mechanics.Rotational.Components.SpringDamper annotation (Placement(
        transformation(extent={{-64,-10},{-44,10}})), choicesAllMatching=true);
  Modelica.Mechanics.Rotational.Components.Inertia inertia2
    annotation (Placement(transformation(extent={{48,-10},{68,10}})));
  replaceable Modelica.Mechanics.Rotational.Components.SpringDamper
    springDamper2 constrainedby
    Modelica.Mechanics.Rotational.Components.SpringDamper annotation (Placement(
        transformation(extent={{10,-10},{30,10}})), choicesAllMatching=true);
equation
  connect(fixed.flange, springDamper1.flange_a)
    annotation (Line(points={{-80,0},{-64,0}}, color={0,0,0}));
  connect(springDamper1.flange_b, inertia1.flange_a)
    annotation (Line(points={{-44,0},{-28,0}}, color={0,0,0}));
  connect(inertia1.flange_b, springDamper2.flange_a)
    annotation (Line(points={{-8,0},{10,0}}, color={0,0,0}));
  connect(springDamper2.flange_b, inertia2.flange_a)
    annotation (Line(points={{30,0},{48,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SpringInertia;
