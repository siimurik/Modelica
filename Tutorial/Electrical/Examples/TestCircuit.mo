within Tutorial.Electrical.Examples;
model TestCircuit
  Motors.Motor motor
    annotation (Placement(transformation(extent={{36,-10},{56,10}})));
  Sources.PowerSupply powerSupply
    annotation (Placement(transformation(extent={{-56,-10},{-36,10}})));
equation
  connect(powerSupply.plug, motor.plug)
    annotation (Line(points={{-38,0},{36,0}}, color={28,108,200}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TestCircuit;
