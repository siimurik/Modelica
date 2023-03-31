within Tutorial.Electrical.Motors;
model Motor
  Modelica.Electrical.Analog.Basic.Resistor resistor(R=1)
    annotation (Placement(transformation(extent={{-60,26},{-40,46}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L=1)
    annotation (Placement(transformation(extent={{-14,26},{6,46}})));
  Interfaces.Plug plug annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-72,0}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-100,0})));
  Modelica.Electrical.Analog.Basic.RotationalEMF emf(k=1)
    annotation (Placement(transformation(extent={{18,-10},{38,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J=1)
    annotation (Placement(transformation(extent={{58,-10},{78,10}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b1
                    "Flange of right shaft" annotation (Placement(
        transformation(extent={{92,-10},{112,10}}), iconTransformation(extent={
            {92,-10},{112,10}})));
equation
  connect(plug.positive, resistor.p)
    annotation (Line(points={{-72,4},{-72,36},{-60,36}}, color={28,108,200}));
  connect(plug.negative, emf.n) annotation (Line(points={{-72,-4},{-72,-52},{28,
          -52},{28,-10}}, color={28,108,200}));
  connect(resistor.n, inductor.p)
    annotation (Line(points={{-40,36},{-14,36}}, color={0,0,255}));
  connect(inductor.n, emf.p)
    annotation (Line(points={{6,36},{28,36},{28,10}}, color={0,0,255}));
  connect(emf.flange, inertia.flange_a)
    annotation (Line(points={{38,0},{58,0}}, color={0,0,0}));
  connect(inertia.flange_b, flange_b1)
    annotation (Line(points={{78,0},{102,0}}, color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-90,100},{50,-100}},
          lineColor={28,108,200},
          lineThickness=1,
          fillColor={28,108,200},
          fillPattern=FillPattern.HorizontalCylinder),
        Rectangle(
          extent={{52,14},{92,-12}},
          lineColor={215,215,215},
          lineThickness=1,
          fillPattern=FillPattern.HorizontalCylinder,
          fillColor={215,215,215}),
        Text(
          extent={{-98,-100},{100,-140}},
          textColor={0,0,0},
          textString="motor")}), Diagram(coordinateSystem(preserveAspectRatio=
            false)));
end Motor;
