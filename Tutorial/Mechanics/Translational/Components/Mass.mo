within Tutorial.Mechanics.Translational.Components;
model Mass
  extends Base.TransRigid;
  parameter SI.Mass m = 1 "Mass";
  SI.Velocity v "Velocity";
  SI.Acceleration a  "Acceleration";
equation
  der(s) = v;
  der(v) = a;
  f = m * a;
  annotation (Icon(graphics={
        Rectangle(
          extent={{-60,40},{60,-40}},
          lineColor={0,0,0},
          fillColor={175,175,175},
          fillPattern=FillPattern.Sphere),
        Line(points={{60,0},{80,0},{100,0}}, color={28,108,200}),
        Line(points={{-60,0},{-100,0}}, color={28,108,200}),
        Text(
          extent={{-82,88},{84,46}},
          textColor={0,0,0},
          textString="%name"),
        Text(
          extent={{-80,-48},{86,-90}},
          textColor={0,0,0},
          textString="m = %m")}));
end Mass;
