# Build and run instructions

1. Add KDDockWidgets source to `KDDockWidgets` directory in the root of the repo
2. Build with CMake providing source for Qt6 (e.g., `cmake -DCMAKE_PREFIX_PATH=<path_to_qt6>`)
3. Make and run `charts_opengl_example`

# Steps to replicate OpenGL bug
1. Undock the dock widget window from the main window
2. Observe that no points from the LineSeries are displayed on the graph anymore
3. Disable OpenGL for the line series in QML, rebuild, and rerun
4. Undock the dock widget window from the main window
5. Observe all points are still displayed
