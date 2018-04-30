# Poroelastic Serpentinization #

This repository contains supplementary [*TerraFERMA*](http://terraferma.github.io) model files to accompany the paper 

>Evans, O., Spiegelman, M., Kelemen, P.B., 
*A poroelastic model of serpentinization: exploring the interplay between rheology, surface energy, reaction and fluid flow*, JGR-Solid Earth, 2018

### Contents ###
This repository contains the following directories:

* **models:** Directories containing input files for describing and running the models used to produce all of the figures in the paper, for runs with surface energy (Figures 5 - 8) and without surface energy (Figures 1 - 4).
* **meshes:** gmsh input files and Dolfin Meshes used in the models

### Running the Models ###

* **Install TerraFERMA:** To view and run these models will require building and installing the open source code [*TerraFERMA*](http://terraferma.github.io). 

* **Running Models:** If the software is installed successfully the models can be run from within each subdirectory using

  	    	'''
		$ tfsimulationharness --test <filename>.shml
		'''

where `<filename>.shml` is the name of the *simulation harness* file that controls parameter sweeps and parallelization options. Models are described (boundary/initial conditions, timesteppers, weak forms, solvers etc.) in the *TerraFERMA* markup language files with suffix `.tfml`.

* **Viewing Input files:**  both `.tfml` and `.shml` files can be viewed and changed using the `diamond` GUI with

  '''
	$ diamond <filename>.tfml
  '''

