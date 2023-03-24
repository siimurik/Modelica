within Tutorial.Mechanics.Translational.Base;
partial model TransRigid
  extends Interfaces.TransTwoConnector;
  SI.Position s "Position";
  SI.Force f "Internal force";
equation
  left.s = s;
  right.s = s;
  0 = left.f + right.f - f;
end TransRigid;
