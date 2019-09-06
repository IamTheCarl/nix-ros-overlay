
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, cmake, python3Packages }:
buildRosPackage rec {
  pname = "ros-dashing-ament-cmake-core";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_core/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "95f05275a1866da8af17a8b413ad049a9677e0d62f14d900d29c9d1d28dde1c3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-package python3Packages.catkin-pkg cmake ];
  nativeBuildInputs = [ ament-package python3Packages.catkin-pkg cmake ];

  meta = {
    description = ''The core of the ament buildsystem in CMake.

    Several subcomponents provide specific funtionalities:
    * environment: provide prefix-level setup files
    * environment_hooks: provide package-level setup files and environment hooks
    * index: store information in an index and retrieve them without crawling
    * package_templates: templates from the ament_package Python package
    * symlink_install: use symlinks for CMake install commands'';
    license = with lib.licenses; [ asl20 ];
  };
}
