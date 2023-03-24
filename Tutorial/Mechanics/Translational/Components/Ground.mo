within Tutorial.Mechanics.Translational.Components;
model Ground "Ground for 1D translational motion"
  Interfaces.Trans1D point annotation (Placement(transformation(extent={{-10,30},
            {10,50}}), iconTransformation(extent={{-10,30},{10,50}})));
equation
  point.s = 0;
  annotation (Icon(graphics={
        Line(points={{0,-20},{0,40}}, color={28,108,200}),
        Line(
          points={{7.23345e-15,-100},{-7.01142e-15,100}},
          color={28,108,200},
          origin={0,-20},
          rotation=90),
        Line(points={{-100,-20},{-60,-60}}, color={28,108,200}),
        Line(points={{-60,-20},{-20,-60}}, color={28,108,200}),
        Line(points={{-20,-20},{20,-60}}, color={28,108,200}),
        Line(points={{20,-20},{60,-60}}, color={28,108,200}),
        Line(points={{60,-20},{100,-60}}, color={28,108,200}),
        Text(
          extent={{-100,-60},{100,-100}},
          textColor={0,0,0},
          textString="%name")}));
end Ground;
