
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-rendering, ament-cmake, ament-cmake-uncrustify, ament-cmake-gmock, ament-cmake-lint-cmake, ament-cmake-gtest, ament-cmake-cppcheck, qt5, resource-retriever, ament-index-cpp, ament-cmake-cpplint }:
buildRosPackage rec {
  pname = "ros-dashing-rviz-rendering-tests";
  version = "6.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_rendering_tests/6.1.3-1.tar.gz";
    name = "6.1.3-1.tar.gz";
    sha256 = "c239ab813238361c0d22f0f5a1ce457ea310b40f76f9d8060ab0b0c38720585c";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-rendering resource-retriever qt5.qtbase ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-lint-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-cppcheck ament-index-cpp ament-cmake-cpplint ];
  propagatedBuildInputs = [ rviz-rendering resource-retriever ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example plugin for RViz - documents and tests RViz plugin development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
