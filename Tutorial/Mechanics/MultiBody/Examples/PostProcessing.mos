within Tutorial.Mechanics.MultiBody.Examples;
model PostProcessing
  // Simulate the model
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    __Dymola_DymolaStoredErrors(thetext="model PostProcessing
  // Simulate the model
  simulateModel(\"Tutorial.Mechanics.Translational.Examples.SpringMass_MSL\",stopTime = 5, method=\"dassl\",  resultFile=\"SpringMass_MSL\");
  
  // We want to read the variables out of the results file, first we need to know
  // the number of result points in the file. We can read the size using this 
  // function and assingn that size to a parameter n
  n = readTrajectorySize(\"SpringMass_MSL.mat\");
  
  // We can then read the Time variable from the file and assign it to the
  // parameter Time
  Time = readTrajectory(\"SpingMass_MSL.mat\", {\"Time\"}, n);
  
  // We can read multible variables from the result file in the same way to 
  // create a vector called SpringForce
  SpringForce = readTrajectory(\"SpingMass_MSL.mat\", {\"springDamper1.f\",\"springDamper2.f\"},n);
  
  // The vector SpringForce can then be used to calculate the diffrence between
  // the spring forces (delta); the notation being [row, column] with : meaning
  // all elements
  delta = SpringForce[1,:]-SpringForce[2,:];
  
  //Plot the resulting delta vector against time
  plotArray(vector(Time),delta);
  
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PostProcessing;
"));
end PostProcessing;
