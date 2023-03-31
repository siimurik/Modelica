within Tutorial.Mechanics.MultiBody.Experiments;
model SeatTest "test of the reclining seat"
  Examples.Seat seat
    annotation (Placement(transformation(extent={{-72,-34},{0,36}})));
  Modelica.Blocks.Sources.Trapezoid trapezoid(
    amplitude=-0.35,
    rising=1,
    width=1,
    falling=1,
    period=7,
    nperiod=1,
    offset=0.65,
    startTime=1)
    annotation (Placement(transformation(extent={{62,-30},{42,-10}})));
equation
  connect(trapezoid.y, seat.s_ref)
    annotation (Line(points={{41,-20},{2.88,-20}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(StopTime=8, __Dymola_Algorithm="Dassl"));
end SeatTest;
