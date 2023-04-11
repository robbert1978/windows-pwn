# Install script for directory: C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/pwn++

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/ChangeMe")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/ngovi/Desktop/windows-pwn/build/lib/pwn++/src/pwn++/win32/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/ngovi/Desktop/windows-pwn/build/lib/pwn++/src/pwn++/Debug/pwn++.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/ngovi/Desktop/windows-pwn/build/lib/pwn++/src/pwn++/Release/pwn++.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/ngovi/Desktop/windows-pwn/build/lib/pwn++/src/pwn++/MinSizeRel/pwn++.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/ngovi/Desktop/windows-pwn/build/lib/pwn++/src/pwn++/RelWithDebInfo/pwn++.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pwn++" TYPE FILE FILES
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/pwn_export.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/architecture.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/common.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/constants.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/crypto.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/disasm.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/log.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/handle.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/tube.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/utils.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/error.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/memory.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/pwn.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/framework.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/alpc.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/fs.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/job.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/kernel.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/object.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/process.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/registry.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/rpc.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/service.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/symbols.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/system.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/thread.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/token.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/ctf/remote.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/ctf/process.hpp"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pwn++" TYPE FILE FILES
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/pwn_export.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/architecture.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/common.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/constants.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/crypto.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/disasm.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/log.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/handle.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/tube.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/utils.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/error.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/memory.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/pwn.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/framework.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/alpc.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/fs.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/job.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/kernel.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/object.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/process.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/registry.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/rpc.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/service.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/symbols.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/system.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/thread.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/token.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/ctf/remote.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/ctf/process.hpp"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pwn++" TYPE FILE FILES
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/pwn_export.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/architecture.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/common.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/constants.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/crypto.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/disasm.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/log.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/handle.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/tube.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/utils.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/error.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/memory.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/pwn.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/framework.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/alpc.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/fs.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/job.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/kernel.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/object.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/process.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/registry.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/rpc.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/service.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/symbols.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/system.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/thread.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/token.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/ctf/remote.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/ctf/process.hpp"
      )
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pwn++" TYPE FILE FILES
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/pwn_export.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/architecture.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/common.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/constants.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/crypto.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/disasm.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/log.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/handle.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/tube.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/utils.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/error.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/memory.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/pwn.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/framework.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/alpc.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/fs.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/job.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/kernel.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/object.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/process.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/registry.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/rpc.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/service.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/symbols.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/system.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/thread.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/token.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/ctf/remote.hpp"
      "C:/Users/ngovi/Desktop/windows-pwn/lib/pwn++/src/inc/win32/ctf/process.hpp"
      )
  endif()
endif()

