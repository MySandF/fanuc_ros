# Install script for directory: /home/shs/ws_fanuc/src/fanuc/moveit_cfgs/fanuc_m20ib_moveit_plugins

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shs/ws_fanuc/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shs/ws_fanuc/build/fanuc/moveit_cfgs/fanuc_m20ib_moveit_plugins/catkin_generated/installspace/fanuc_m20ib_moveit_plugins.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_m20ib_moveit_plugins/cmake" TYPE FILE FILES
    "/home/shs/ws_fanuc/build/fanuc/moveit_cfgs/fanuc_m20ib_moveit_plugins/catkin_generated/installspace/fanuc_m20ib_moveit_pluginsConfig.cmake"
    "/home/shs/ws_fanuc/build/fanuc/moveit_cfgs/fanuc_m20ib_moveit_plugins/catkin_generated/installspace/fanuc_m20ib_moveit_pluginsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_m20ib_moveit_plugins" TYPE FILE FILES "/home/shs/ws_fanuc/src/fanuc/moveit_cfgs/fanuc_m20ib_moveit_plugins/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fanuc_m20ib_moveit_plugins" TYPE FILE FILES "/home/shs/ws_fanuc/src/fanuc/moveit_cfgs/fanuc_m20ib_moveit_plugins/readme.md")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/shs/ws_fanuc/build/fanuc/moveit_cfgs/fanuc_m20ib_moveit_plugins/m20ib25_kinematics/cmake_install.cmake")

endif()

