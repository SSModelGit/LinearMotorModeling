# Xogeny-Models
This repository is for all work done by me during my internship for Xogeny.
## Location of files
The Modelica files are stored in a directory called XogenyModels.
## Solenoid System
The solenoid system is a directory that contains work on modeling the motion of a cart moving under the influence of a solenoid. The componenets folder stores the components CarWC, TrackWC, VControl, etc. Those are the components used in the solenoid system to: detect the location of the car in relation to each individual solenoid; control the solenoid to either turn on or off, and modulate the PWM acting upon it; model the track, gravity/normal force, and the friction conditions; model the solenoid and the force produced by it; model the cart. The tests folder is the part of the directory where the tests of components are stored. The tests are made in order to ensure that the components are working properly. The SimSysWC is the finalized version of the solenoid system.
