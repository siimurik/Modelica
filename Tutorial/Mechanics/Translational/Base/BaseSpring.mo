within Tutorial.Mechanics.Translational.Base;
partial model BaseSpring
  extends TransCompliant;
  parameter SI.Length srel0=0 "Unstreched spring length";
  SI.Velocity vrel "Relative velocity of connectors";
  Types.Stiffness c "Spring stiffness";
  Types.Damping d "Spring damping";
equation
  vrel = der(srel);
  f = c*(srel-srel0) + d * vrel;
end BaseSpring;
