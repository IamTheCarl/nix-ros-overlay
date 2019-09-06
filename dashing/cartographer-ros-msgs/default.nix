
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, ament-lint-auto, rosidl-default-runtime, geometry-msgs }:
buildRosPackage rec {
  pname = "ros-dashing-cartographer-ros-msgs";
  version = "1.0.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/dashing/cartographer_ros_msgs/1.0.9000-1.tar.gz";
    name = "1.0.9000-1.tar.gz";
    sha256 = "156d2fb8639bc2045309ac183bf2a03898fd0f955afc95aeba7369ae924e0fbb";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs geometry-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''ROS messages for the cartographer_ros package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
