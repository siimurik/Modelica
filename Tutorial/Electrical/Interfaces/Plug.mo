within Tutorial.Electrical.Interfaces;
connector Plug
  Modelica.Electrical.Analog.Interfaces.PositivePin positive
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin negative
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(extent={{28,14},{54,-12}}, lineColor={28,108,200}),
        Rectangle(
          extent={{-54,14},{-28,-12}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-100,100},{100,-98}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.None,
          lineThickness=1)}), Diagram(coordinateSystem(preserveAspectRatio=
            false), graphics={Ellipse(extent={{-100,100},{100,-100}},
            lineThickness=0.5)}));
end Plug;
