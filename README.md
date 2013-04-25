# About

These files were created by Philip Thomas, Sophie Jacobson, and Rachel Blake in completion of the Robotics Laboratory at Washington University in St. Louis. It uses a mathematical model of a robot arm to swing the arm up


# Files

* anim_function.mdl: Simulink visualization of the robot position based on the encoder readings

* BalancePoles.m: Function we used to place the poles of the system at a desired location.

* Hamiltonian.m - Determines the system parameters using Lagrangian mechanics

* lab2.m: Deprecated - sets system parameters as global variables


* lab2animation.m: Helper functions for the animation function

* lab2fxn.m: Calculates new time constants based on current constants

* robot.m: Draws the robot on the screen

* robot2.m: Improved robot plotter 

* Robot_anim.m: Dynamic robot plot as a function of a theta input

* Robot_control.mdl - This simulink model controls the whole simulation. It is what interfaces with the robot to swing it up and balance it. 

* robot_real.m: Work envelope visualization

* TRANS0_1.m: Transition matrix

* TRANS1_2.m: Transition matrix