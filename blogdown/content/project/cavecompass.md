+++
# Date this page was created.
date = "2014-07-01"

# Project title.
title = "Cave Compass"

# Project summary to display on homepage.
summary = "A project to use off the shelf compass components to build a digital survey compass."

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = "CaveCompass1.png"

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["cave-compass"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Does the project detail page use math formatting?
math = false

# Optional featured image (relative to `static/img/` folder).
#[header]
image = "headers/CaveCircuit1.jpg"
# caption = "My caption :smile:"

+++

# Goals:
The goal of this project was to develop a working digital compass that is capable of the precision required for cave surveying. 

# Results:
The digital compass based on the LM303DLHC works, but the accuracy is not sufficient for surveying purposes. The main problem is that the noise on the sensor is so high that the readings jitter by up to 1 degree. This means the precision of the compass is up to a degree. Precision and accuracy for cave survey must be less than 0.5 degrees.

# Scope:
The first (alpha one) compass will only be used to evaluate whether the LSM303DLHC digital compass module is capable of the precision required for cave surveying applications. This compass will contain a compass, inclinometer, and laser pointer. Other functions such as memory recording, bluetooth transmission, or integration with a laser distance meter will not be considered in the first iteration. 

# Unique Considerations:
The LSM303DLHC is a 3-d compass and will allow the compass to give directions regardless of what inclination it is pointing. 
This project will use a non-magnetic battery and a regulated power supply in order to decrease the soft-iron effects that most digital compasses suffer from. This battery was designed for use in MRI medical applications.
The compass will be programmed using an Arduino platform in order to make the project easy to replicate, test and improve on.
The compass will only be tested in Kentucky. Magnetic fields in other parts of the world will vary and affect the results accordingly.

# Evaluation Criterion:
Compass Accuracy
Compass Precision
Repeat-ability of measurements
Affects of temperature on readings
Affects of inclination on compass readings
Comparison to results with Suunto compass

# Test Plan:
Determine the resolution of the compass in fractions of a degree and determine the useable resolution when hand-held with jitter
Acquire 3-d plots of the output of the compass at room temperature
Create a fixture that allows the compass to be repeatedly be pointed in a series of directions in all 3 axis'
Determine the drift of the compass at room temperature over multiple days
Determine the drift of the compass at various temperatures by doing heat soak and cold soak testing
Determine the drift of the compass over multiple charge and discharge cycles of the battery
Compare the digital compass to the Suunto analog compass by having multiple experienced users survey a fixed figure-8 course with both sets of equipment