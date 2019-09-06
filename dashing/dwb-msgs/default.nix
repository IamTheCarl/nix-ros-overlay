
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, ament-cmake-gtest, launch, nav-msgs, std-msgs, ament-lint-auto, rosidl-default-runtime, nav-2d-msgs, geometry-msgs }:
buildRosPackage rec {
  pname = "ros-dashing-dwb-msgs";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_msgs/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "87790d7cf14e776598343f4a66da3b048cfbe71b5b9b85049ae4027ebd44dee1";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces nav-msgs std-msgs rosidl-default-runtime nav-2d-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces nav-msgs std-msgs rosidl-default-runtime nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_core'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
