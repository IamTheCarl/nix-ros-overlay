
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, epos2-motor-controller, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-volksbot-driver";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/uos-gbp/volksbot_driver-release/archive/release/melodic/volksbot_driver/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "a46e4b3d0321766d6cae107019a7d3aecfd3babf0e4b767c316e489e45ae2cef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ epos2-motor-controller geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Volksbot robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}