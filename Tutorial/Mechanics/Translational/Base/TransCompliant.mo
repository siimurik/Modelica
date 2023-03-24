within Tutorial.Mechanics.Translational.Base;
partial model TransCompliant
  extends Interfaces.TransTwoConnector;
  SI.Position srel "Relative displacemnt between connectors";
  SI.Force f "Force acting on connectors";
equation
  srel = right.s - left.s;
  -f = left.f;
  f = right.f;
end TransCompliant;
