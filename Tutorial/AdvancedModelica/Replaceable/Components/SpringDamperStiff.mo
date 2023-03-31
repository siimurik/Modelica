within Tutorial.AdvancedModelica.Replaceable.Components;
model SpringDamperStiff "Stiff variant of the spring damper"
  extends Modelica.Mechanics.Rotational.Components.SpringDamper(d=10, c=1000);
  annotation (Icon(graphics={Text(
          extent={{-100,60},{100,-20}},
          textColor={0,0,255},
          textString="STIFF")}));
end SpringDamperStiff;
