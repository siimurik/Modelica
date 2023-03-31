within Tutorial.Mechanics.MultiBody.Examples;
model Seat "Model of an aircraft seat that reclines"
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed
    annotation (Placement(transformation(extent={{-98,-80},{-78,-60}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation toActuation(r={0.8,0.0,
        0.3})
    annotation (Placement(transformation(extent={{-60,-80},{-40,-60}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation toSeatBase(r={0,0,0.6})
    annotation (Placement(transformation(extent={{-60,-58},{-40,-38}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation controlArmCentre(r={0.65,
        0,0}) annotation (Placement(transformation(extent={{-16,-30},{4,-10}})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation controlArmFront(r={-
        legRest.length/3,0,-0.1}) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-60,-4})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation controlArmRear(r={-
        backRest.length/5,0,-backRest.length/5}) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={40,0})));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation toActuationHingeUpper(r={
        backRest.length/2,0,-0.1}) annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=270,
        origin={60,48})));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint
    actuationHingeLower(n(displayUnit="1") = {0,1,0})
    annotation (Placement(transformation(extent={{26,-80},{46,-60}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute jointLegRest(n(displayUnit="1")
       = {0,1,0})
    annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute jointBackRest(
    n(displayUnit="1") = {0,1,0},
    stateSelect=StateSelect.always,
    phi(start=-1.0471975511966))
    annotation (Placement(transformation(extent={{10,10},{30,30}})));
  Modelica.Mechanics.MultiBody.Joints.RevolutePlanarLoopConstraint jointFront(n(
        displayUnit="1") = {0,1,0})
    annotation (Placement(transformation(extent={{-50,-30},{-30,-10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute jointRear(n(displayUnit="1") = {
      0,1,0}) annotation (Placement(transformation(extent={{16,-30},{36,-10}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute actuationHingeUpper(n(
        displayUnit="1") = {0,1,0})
    annotation (Placement(transformation(extent={{68,62},{88,82}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox seatBase(
    r={0.6,0,0},
    length(displayUnit="mm") = 0.6,
    width(displayUnit="mm") = 0.5,
    height(displayUnit="mm") = 0.05,
    density(displayUnit="kg/m3") = 200)
    annotation (Placement(transformation(extent={{-20,10},{0,30}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox backRest(
    r={0.8,0,0},
    length(displayUnit="mm") = 0.8,
    width(displayUnit="mm") = 0.5,
    height(displayUnit="mm") = 0.05,
    density(displayUnit="kg/m3") = 200) annotation (Placement(transformation(
        extent={{-22,-9},{22,9}},
        rotation=90,
        origin={41,52})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox legRest(
    r={0.6,0,0},
    length(displayUnit="mm") = 0.6,
    width(displayUnit="mm") = 0.5,
    height(displayUnit="mm") = 0.05,
    density(displayUnit="kg/m3") = 200) annotation (Placement(transformation(
        extent={{-22,-9},{22,9}},
        rotation=90,
        origin={-79,-10})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrameLegRest
    annotation (Placement(transformation(
        extent={{7,-7},{-7,7}},
        rotation=90,
        origin={-79,-45})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedFrame fixedFrameBackRest
    annotation (Placement(transformation(
        extent={{-7,-7},{7,7}},
        rotation=90,
        origin={41,91})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange=true)
    annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={60,-34})));
  Modelica.Mechanics.Translational.Sources.Position position(useSupport=true)
    annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={80,-38})));
  Modelica.Blocks.Interfaces.RealInput s_ref
    "Reference position of flange as input signal"
    annotation (Placement(transformation(extent={{128,-80},{88,-40}})));
equation
  connect(fixed.frame_b, toSeatBase.frame_a) annotation (Line(
      points={{-78,-70},{-66,-70},{-66,-48},{-60,-48}},
      color={95,95,95},
      thickness=0.5));
  connect(toActuation.frame_b, actuationHingeLower.frame_a) annotation (Line(
      points={{-40,-70},{26,-70}},
      color={95,95,95},
      thickness=0.5));
  connect(jointLegRest.frame_a, controlArmFront.frame_a) annotation (Line(
      points={{-50,20},{-60,20},{-60,6}},
      color={95,95,95},
      thickness=0.5));
  connect(jointBackRest.frame_b, controlArmRear.frame_a) annotation (Line(
      points={{30,20},{40,20},{40,10}},
      color={95,95,95},
      thickness=0.5));
  connect(toActuationHingeUpper.frame_a, controlArmRear.frame_a) annotation (
      Line(
      points={{60,38},{60,20},{40,20},{40,10}},
      color={95,95,95},
      thickness=0.5));
  connect(jointFront.frame_a, controlArmFront.frame_b) annotation (Line(
      points={{-50,-20},{-60,-20},{-60,-14}},
      color={95,95,95},
      thickness=0.5));
  connect(jointFront.frame_b, controlArmCentre.frame_a) annotation (Line(
      points={{-30,-20},{-16,-20}},
      color={95,95,95},
      thickness=0.5));
  connect(toActuation.frame_a, toSeatBase.frame_a) annotation (Line(
      points={{-60,-70},{-66,-70},{-66,-48},{-60,-48}},
      color={95,95,95},
      thickness=0.5));
  connect(controlArmCentre.frame_b, jointRear.frame_a) annotation (Line(
      points={{4,-20},{16,-20}},
      color={95,95,95},
      thickness=0.5));
  connect(controlArmRear.frame_b, jointRear.frame_b) annotation (Line(
      points={{40,-10},{40,-20},{36,-20}},
      color={95,95,95},
      thickness=0.5));
  connect(actuationHingeUpper.frame_a, toActuationHingeUpper.frame_b)
    annotation (Line(
      points={{68,72},{60,72},{60,58}},
      color={95,95,95},
      thickness=0.5));
  connect(jointLegRest.frame_b, seatBase.frame_a) annotation (Line(
      points={{-30,20},{-20,20}},
      color={95,95,95},
      thickness=0.5));
  connect(jointBackRest.frame_a, seatBase.frame_b) annotation (Line(
      points={{10,20},{0,20}},
      color={95,95,95},
      thickness=0.5));
  connect(backRest.frame_a, controlArmRear.frame_a) annotation (Line(
      points={{41,30},{41,20},{40,20},{40,10}},
      color={95,95,95},
      thickness=0.5));
  connect(toSeatBase.frame_b, seatBase.frame_a) annotation (Line(
      points={{-40,-48},{-24,-48},{-24,20},{-20,20}},
      color={95,95,95},
      thickness=0.5));
  connect(legRest.frame_b, controlArmFront.frame_a) annotation (Line(
      points={{-79,12},{-79,20},{-60,20},{-60,6}},
      color={95,95,95},
      thickness=0.5));
  connect(backRest.frame_b, fixedFrameBackRest.frame_a) annotation (Line(
      points={{41,74},{41,84}},
      color={95,95,95},
      thickness=0.5));
  connect(legRest.frame_a, fixedFrameLegRest.frame_a) annotation (Line(
      points={{-79,-32},{-79,-38}},
      color={95,95,95},
      thickness=0.5));
  connect(actuationHingeLower.frame_b, prismatic.frame_a) annotation (Line(
      points={{46,-70},{60,-70},{60,-44}},
      color={95,95,95},
      thickness=0.5));
  connect(prismatic.frame_b, actuationHingeUpper.frame_b) annotation (Line(
      points={{60,-24},{60,18},{94,18},{94,72},{88,72}},
      color={95,95,95},
      thickness=0.5));
  connect(prismatic.axis, position.flange) annotation (Line(points={{66,-26},{
          68,-26},{68,-14},{80,-14},{80,-28}}, color={0,127,0}));
  connect(prismatic.support, position.support)
    annotation (Line(points={{66,-38},{70,-38}}, color={0,127,0}));
  connect(position.s_ref, s_ref)
    annotation (Line(points={{80,-50},{80,-60},{108,-60}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Polygon(
          points={{-70,-80},{-60,-80},{-30,0},{20,0},{60,80},{50,80},{10,6},{
              -40,6},{-70,-80}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.Solid), Polygon(
          points={{-40,-80},{-40,-72},{-8,-72},{-8,0},{0,0},{0,-72},{30,-72},{
              30,-80},{-40,-80}},
          lineColor={28,108,200},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid)}), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end Seat;
