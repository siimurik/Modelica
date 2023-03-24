within Tutorial.AdvancedModelica.Annotations;
model WorkbenchModel
  parameter SI.Mass m = 0.1 "Mass of shaft"
            annotation(Dialog(tab="Mass and Inertia", group="Mass"));
  parameter SI.Inertia J = 1 "Inertia of shaft"
            annotation(Dialog(tab="Mass and Inertia", group="Inertia"));
  parameter Boolean includeCompliance=true
  "true = include compliance in shadt, false = no compliance in shaft"
            annotation(Dialog(tab="Compliance"));
  parameter SI.RotationalSpringConstant c(final min=0) = 1e5 "Spring constant"
            annotation(Dialog(tab="Compliance", group="Stiffness and Damping", enable = includeCompliance));
  parameter SI.RotationalDampingConstant d(final min=0) = c*0.01 "Damping constant"
            annotation(Dialog(tab="Compliance", group="Stiffness and Damping", enable = includeCompliance));
  parameter SI.Length L=0.1 "Length of shaft"
            annotation(Dialog(group="Geometry"));
  SI.Temperature T "Time related temperature";
equation
  T = 273.15 + min(500, time * 500);
            annotation (
              Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(
          points={{-80,20}},
          color={0,0,0},
          visible = includeCompliance,
          thickness=1,
          smooth=Smooth.Bezier),
        Line(points={{-80,20},{-70,0},{-50,40},{-30,0}}, color={28,108,200}),
        Line(points={{-30,0},{-10,40},{10,0}}, color={28,108,200}),
        Line(points={{10,0},{30,40},{50,0}}, color={28,108,200}),
        Line(points={{50,0},{70,40},{80,20}}, color={28,108,200}),
        Rectangle(
          extent={{-80,-40},{80,-80}},
          lineColor={28,108,200},
          fillPattern=FillPattern.Solid,
          fillColor=DynamicSelect({0,128,225},{255/773.15*T,255-(255/773.15*T),0}))}),
                                           Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end WorkbenchModel;
