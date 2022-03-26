cmake_minimum_required(VERSION 3.15)
project(kddockwidgets_examples VERSION 0.2 LANGUAGES CXX)

add_subdirectory(charts_opengl/example)

set(KDDockWidgets_QT6 ON CACHE BOOL "Enable KDDockWidgets Qt6 Support")
set(KDDockWidgets_QTQUICK ON CACHE BOOL "Enable Qt Quick modules in KDDockWidgets" FORCE)
set(KDDockWidgets_EXAMPLES OFF CACHE BOOL "Disable Qt Quick modules in KDDockWidgets" FORCE)
add_subdirectory(KDDockWidgets)
