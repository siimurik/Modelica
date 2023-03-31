within Tutorial.AdvancedModelica.Replaceable.Examples;
model SpringInertia "Spring inertia parameterised example"
  extends Base.SpringInertia(
    redeclare Components.SpringDamperStiff springDamper1,
    redeclare Components.SpringDamperSoft springDamper2,
    inertia1(J=1, w(start=10)),
    inertia2(J=1));
end SpringInertia;
