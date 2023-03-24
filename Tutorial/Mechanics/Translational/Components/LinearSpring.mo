within Tutorial.Mechanics.Translational.Components;
model LinearSpring
  extends Base.BaseSpring;
  parameter Types.Stiffness stiffness=1 "Spring stiffness";
  parameter Types.Damping damping=1 "Spring damping";
equation
  c = stiffness;
  d = damping;
  annotation (Icon(graphics={
        Line(points={{-100,0},{-60,0}}, color={0,0,0}),
        Line(points={{60,0},{100,0}}, color={0,0,0}),
        Line(
          points={{-40,-1.22464e-15},{40,2.28848e-16}},
          color={0,0,0},
          origin={-60,0},
          rotation=90),
        Line(
          points={{-40,-1.22464e-15},{40,2.28848e-16}},
          color={0,0,0},
          origin={60,0},
          rotation=90),
        Line(points={{-60,-40},{0,-40}}, color={0,0,0}),
        Line(
          points={{-20,-1.11703e-15},{20,-3.69853e-16}},
          color={0,0,0},
          origin={0,-40},
          rotation=90),
        Line(
          points={{-20,-1.11703e-15},{20,-3.69853e-16}},
          color={0,0,0},
          origin={40,-40},
          rotation=90),
        Line(points={{60,-40},{40,-40}}, color={0,0,0}),
        Line(points={{-20,-20},{40,-20}}, color={0,0,0}),
        Line(points={{-20,-60},{40,-60}}, color={0,0,0}),
        Line(points={{-60,40},{-52,40},{-40,40},{-30,60},{-20,20},{-10,60},{0,
              20},{10,60}}, color={0,0,0}),
        Line(points={{10,60},{20,20},{30,60},{40,40},{60,40}}, color={0,0,0}),
        Line(
          points={{-50,20},{52,60}},
          color={0,0,0},
          thickness=1),
        Line(
          points={{-52,84}},
          color={0,0,0},
          smooth=Smooth.Bezier),
        Text(
          extent={{-100,120},{100,80}},
          textColor={0,0,0},
          textString="c = %stiffness
d = %damping")}));
end LinearSpring;
