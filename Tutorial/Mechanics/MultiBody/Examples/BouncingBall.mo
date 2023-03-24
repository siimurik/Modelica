within Tutorial.Mechanics.MultiBody.Examples;
model BouncingBall
  parameter Real c=0.9 "Coefficient of restitution";
  parameter SI.Length r=0.1 "Radius of the ball";
  parameter SI.Position h0=1 "Initial height of the ball";
  //SI.Position height(start=h0) "Height of the ball";
  SI.Position height "Height of the ball";
  SI.Velocity v "Velocity of the ball";
  Boolean impact "true if ball in impact mode";
  //Boolean bouncing( start=true) "true if ball in bouncing mode";
  Boolean bouncing "true if ball in bouncing mode";

  inner Modelica.Mechanics.MultiBody.World world(n={0,0,-1})
    annotation (Placement(transformation(extent={{-32,-10},{-12,10}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(
    shapeType="sphere",
    r_shape={0.5,0.5,height},
    length=r*2,
    width=fixedShape.length,
    height=fixedShape.length)
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
initial equation
  height = h0;
  bouncing=true;
equation
  der(height) = v;
  der(v) = if bouncing then -world.g else 0;
  impact = height <= r;
  when impact and v<0 then
    bouncing = edge(impact);
    reinit(v, if bouncing then -c*pre(v) else 0);
  end when;
  connect(world.frame_b, fixedShape.frame_a) annotation (Line(
      points={{-12,0},{20,0}},
      color={95,95,95},
      thickness=0.5));
 annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end BouncingBall;
