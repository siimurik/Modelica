within Tutorial.Mechanics.Translational.Experiments;
model SpringTestBed
  Modelica.Blocks.Sources.Ramp ramp(
    height=2,
    duration=10,
    offset=-1,
    startTime=0)
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  Modelica.Mechanics.Translational.Sources.Position position
    annotation (Placement(transformation(extent={{-38,26},{-18,46}})));
  Modelica.Mechanics.Translational.Sources.Position position1
    annotation (Placement(transformation(extent={{-36,-48},{-16,-28}})));
  Components.LinearSpring linearSpring
    annotation (Placement(transformation(extent={{18,26},{38,46}})));
  Components.NonLinearSpring nonLinearSpring
    annotation (Placement(transformation(extent={{16,-48},{36,-28}})));
  Components.Ground ground
    annotation (Placement(transformation(extent={{68,28},{88,48}})));
  Components.Ground ground1
    annotation (Placement(transformation(extent={{66,-48},{86,-28}})));
equation
  connect(ramp.y, position.s_ref) annotation (Line(points={{-59,0},{-46,0},{-46,
          36},{-40,36}}, color={0,0,127}));
  connect(position1.s_ref, position.s_ref) annotation (Line(points={{-38,-38},{
          -46,-38},{-46,36},{-40,36}}, color={0,0,127}));
  connect(position.flange, linearSpring.left) annotation (Line(points={{-18,36},
          {-12,36},{-12,38},{18,38},{18,36}}, color={0,127,0}));
  connect(position1.flange, nonLinearSpring.left)
    annotation (Line(points={{-16,-38},{16,-38}}, color={0,127,0}));
  connect(nonLinearSpring.right, ground1.point) annotation (Line(points={{36,
          -38},{42,-38},{42,-36},{66,-36},{66,-38}}, color={0,0,0}));
  connect(linearSpring.right, ground.point)
    annotation (Line(points={{38,36},{46,36},{46,38},{68,38}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SpringTestBed;
