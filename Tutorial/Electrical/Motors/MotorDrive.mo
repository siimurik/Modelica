within Tutorial.Electrical.Motors;
model MotorDrive "Model of a DC electronic motor"

  parameter SI.Temperature T(displayUnit="K") = 293 "Fixed temperature at port";

  Modelica.Blocks.Sources.Constant const(k=20)
    annotation (Placement(transformation(extent={{-10,74},{10,94}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(final T(
        displayUnit="K") = T)   annotation (Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={78,60})));
  Modelica.Thermal.HeatTransfer.Components.Convection convection
    annotation (Placement(transformation(extent={{30,50},{50,70}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(C=452*5,
      T(start=293.15)) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-42,60})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(
    R=1e-2,
    alpha=0.0068,
    useHeatPort=true)
    annotation (Placement(transformation(extent={{-12,40},{8,20}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=90,
        origin={-24,0})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-34,-80},{-14,-60}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J=(1512*0.31595^2)/(
        7.938^2))
    annotation (Placement(transformation(extent={{74,-60},{94,-40}})));
  Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm(
    VaNominal=250,
    IaNominal=90,
    wNominal=963.42174710087,
    Ra=0.05,
    La=0.0015,
    useSupport=false)
    annotation (Placement(transformation(extent={{20,-60},{40,-40}})));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={60,-78})));
  Modelica.Blocks.Continuous.LimPID PID(
    k=5,
    Ti=0.1,
    yMax=500)
    annotation (Placement(transformation(extent={{-66,-10},{-46,10}})));
  Modelica.Blocks.Sources.TimeTable timeTable(table=[0,0.0; 11,0; 15,104; 23,
        104; 28,0.0; 49,0.0; 54,104; 56,104; 61,223; 85,223; 93,68; 94,44; 96,0;
        100,0.0])
    annotation (Placement(transformation(extent={{-98,-10},{-78,10}})));

equation
  connect(const.y, convection.Gc)
    annotation (Line(points={{11,84},{40,84},{40,70}}, color={0,0,127}));
  connect(fixedTemperature.port, convection.fluid) annotation (Line(points={{68,
          60},{64,60},{64,60},{50,60}}, color={191,0,0}));
  connect(resistor.n, dcpm.pin_ap)
    annotation (Line(points={{8,30},{36,30},{36,-40}}, color={0,0,255}));
  connect(PID.u_s, timeTable.y)
    annotation (Line(points={{-68,0},{-77,0}}, color={0,0,127}));
  connect(signalVoltage.p, resistor.p)
    annotation (Line(points={{-24,10},{-24,30},{-12,30}}, color={0,0,255}));
  connect(PID.u_m, speedSensor.w) annotation (Line(points={{-56,-12},{-56,-94},
          {60,-94},{60,-89}}, color={0,0,127}));
  connect(heatCapacitor.port, convection.solid)
    annotation (Line(points={{-32,60},{30,60}}, color={191,0,0}));
  connect(resistor.heatPort, convection.solid)
    annotation (Line(points={{-2,40},{-2,60},{30,60}}, color={191,0,0}));
  connect(PID.y, signalVoltage.v)
    annotation (Line(points={{-45,0},{-36,0}}, color={0,0,127}));
  connect(signalVoltage.n, ground.p)
    annotation (Line(points={{-24,-10},{-24,-60}}, color={0,0,255}));
  connect(dcpm.pin_an, signalVoltage.n)
    annotation (Line(points={{24,-40},{-24,-40},{-24,-10}}, color={0,0,255}));
  connect(dcpm.flange, inertia.flange_a)
    annotation (Line(points={{40,-50},{74,-50}}, color={0,0,0}));
  connect(speedSensor.flange, inertia.flange_a)
    annotation (Line(points={{60,-68},{60,-50},{74,-50}}, color={0,0,0}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(StopTime=100, __Dymola_Algorithm="Dassl"));
end MotorDrive;
