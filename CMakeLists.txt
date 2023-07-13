cmake_minimum_required(VERSION 3.11)

project(
  dwm
  VERSION 0.0.1
  DESCRIPTION "dynamic window manager"
  LANGUAGES C)

set(CMAKE_BUILD_TYPE Release)

find_package(Freetype REQUIRED)
find_package(X11 REQUIRED)

aux_source_directory(src SRC)
add_executable(dwm ${SRC})
target_link_libraries(dwm ${FREETYPE_LIBRARIES} ${X11_LIBRARIES} X11::Xft X11::Xinerama)
target_include_directories(dwm PRIVATE include ${X11_INCLUDE_DIR} ${FREETYPE_INCLUDE_DIRS})
set_property(TARGET dwm PROPERTY C_STANDARD 99)
install(TARGETS dwm DESTINATION bin)
