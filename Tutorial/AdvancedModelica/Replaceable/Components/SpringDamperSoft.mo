within Tutorial.AdvancedModelica.Replaceable.Components;
model SpringDamperSoft "Soft variant of the spring damper"
  extends Modelica.Mechanics.Rotational.Components.SpringDamper(d=1, c=100);
  annotation (Icon(graphics={Text(
          extent={{-100,60},{100,-20}},
          textColor={0,0,255},
          textString="SOFT")}));
end SpringDamperSoft;
