within Tutorial.Mechanics.Translational.Components;
model NonLinearSpring
  extends Base.BaseSpring;
  parameter Real stiffness[:,2]=[0, 1; 0.1, 1; 0.2, 2; 0.3, 4; 0.4, 8]
      "Spring stiffness [displacement (m), stiffness(N/m)]";
  parameter Real damping[:,2]=[0, 1; 1, 1; 1.1, 10]
    "Spring damping [realative speed (m/s), damping(Ns/m)]";
equation
  c = Modelica.Math.Vectors.interpolate(
    stiffness[:, 1],
    stiffness[:, 2],
    abs(srel-srel0));
  d = Modelica.Math.Vectors.interpolate(
    damping[:, 1],
    damping[:, 2],
    abs(vrel));
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
          points={{-54,20},{-30,48},{20,26},{52,60}},
          color={0,0,0},
          smooth=Smooth.Bezier,
          thickness=1)}));
end NonLinearSpring;
