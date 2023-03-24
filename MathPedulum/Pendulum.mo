within ;
model Pendulum

  parameter Modelica.Units.SI.Mass m=1 "Mass of pendulum";
  parameter Modelica.Units.SI.Length L=1 "Length of pendulum";
  parameter Modelica.Units.SI.Acceleration g=9.81;
  parameter Modelica.Units.SI.MomentOfInertia J=m*L^2 "Moment of inertia";
  Modelica.Units.SI.Angle phi(start=0.1, fixed=true) "Pendulum angle";
  Modelica.Units.SI.AngularVelocity w(start=0.0, fixed=true);
equation
  der(phi) = w;
  J*der(w) = -m*g*L*sin(phi);

  annotation (uses(Modelica(version="4.0.0")));
end Pendulum;
