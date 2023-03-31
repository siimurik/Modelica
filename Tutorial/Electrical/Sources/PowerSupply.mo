within Tutorial.Electrical.Sources;
model PowerSupply
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V=110)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-48,14})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R=1)
    annotation (Placement(transformation(extent={{-4,52},{16,72}})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-58,-52},{-38,-32}})));
  Interfaces.Plug plug annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={64,14}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={80,0})));
equation
  connect(constantVoltage.p, resistor.p)
    annotation (Line(points={{-48,24},{-48,62},{-4,62}}, color={0,0,255}));
  connect(resistor.n, plug.positive)
    annotation (Line(points={{16,62},{64,62},{64,18}}, color={0,0,255}));
  connect(plug.negative, ground.p) annotation (Line(points={{64,10},{64,-26},{
          -48,-26},{-48,-32}}, color={28,108,200}));
  connect(constantVoltage.n, ground.p)
    annotation (Line(points={{-48,4},{-48,-32}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-100,60},{66,-64}},
          lineColor={0,0,0},
          lineThickness=1,
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={238,46,47}), Text(
          extent={{-116,-62},{84,-96}},
          textColor={0,0,0},
          textString="powerSupply")}), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end PowerSupply;
