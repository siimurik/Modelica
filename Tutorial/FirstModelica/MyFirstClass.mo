within Tutorial.FirstModelica;
model MyFirstClass
public
  parameter Real g = 9.8;
  Real x(start=0);
  Real v(start=3);
equation
  v = der(x);
  der(v) = -g;
end MyFirstClass;
