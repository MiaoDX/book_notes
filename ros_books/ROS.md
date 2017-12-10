Some notes for the ROS books.

# RobotOperatingSystem(ROS)TheCompleteReferenceVolume1.pdf

This is an interesting book, since chapters are written by different authors, makes it possible to see different works in one place.

## Hands-on Learning of ROS Using Common Hardware

It is a very interesting chapter, easy to understand, and suitable for further playing. With cameras integrated and custom codes such like opencv.

## Threaded Applications with the roscpp API

Skipped the QT GUI part, hopefully I will never have to write any GUI in CPP.

## Writing Global Path Planners Plugins in ROS: A Tutorial

The description is pretty clearly, and the experiments are impressive, since the trajectory looks beautiful.

## A Universal Grid Map Library: Implementation and Use Case for Rough Terrain Navigation

The reference `Continuous on-board monocular-vision–based elevation mapping applied to autonomous landing of micro aerial vehicles` ICRA2015 may be useful for the landing problem of the Micro Aerial Vehicle (MAV) in RM competition. Unluckily, codes are not publicly available.

* 3.4 Moving the Map

The `move` operation can only have x-y coordinate change, not the rotation one.

* 5 Summary and Conclusion

**multi-robot mapping, maybe there are some work at ETH group.**

## ROS Navigation: Concepts and Tutorial

* 3.3 Transformations

> If you have some doubts on how to verify the angles you measured, you can use
rviz to check them, by including the laser_scan topic and verifying the rotation of the obtained data.

The transformation is rather confusing.

* 3.6.4 NAVIGATION

holomic_robot, the definition and the examples.

* 4.2 Multiple Machines Communication

The multi computers communication can be useful.


##

... SKIPPED A LOT

## A Distributed Calibration Algorithm for Color and Range Camera Networks

`P. Furgale, J. Rehder, R. Siegwart, Unified temporal and spatial calibration for multi-sensor (IROS), 2013` ETH always have the attractive work -.-.