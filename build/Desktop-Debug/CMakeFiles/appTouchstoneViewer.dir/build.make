# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/leon/Projects/TouchstoneViewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/appTouchstoneViewer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/appTouchstoneViewer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appTouchstoneViewer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/appTouchstoneViewer.dir/flags.make

meta_types/qt6apptouchstoneviewer_debug_metatypes.json.gen: /usr/lib/qt6/libexec/moc
meta_types/qt6apptouchstoneviewer_debug_metatypes.json.gen: meta_types/appTouchstoneViewer_json_file_list.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running moc --collect-json for target appTouchstoneViewer"
	/usr/lib/qt6/libexec/moc -o /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/meta_types/qt6apptouchstoneviewer_debug_metatypes.json.gen --collect-json @/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/meta_types/appTouchstoneViewer_json_file_list.txt
	/usr/bin/cmake -E copy_if_different /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/meta_types/qt6apptouchstoneviewer_debug_metatypes.json.gen /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/meta_types/qt6apptouchstoneviewer_debug_metatypes.json

meta_types/qt6apptouchstoneviewer_debug_metatypes.json: meta_types/qt6apptouchstoneviewer_debug_metatypes.json.gen
	@$(CMAKE_COMMAND) -E touch_nocreate meta_types/qt6apptouchstoneviewer_debug_metatypes.json

apptouchstoneviewer_qmltyperegistrations.cpp: qmltypes/appTouchstoneViewer_foreign_types.txt
apptouchstoneviewer_qmltyperegistrations.cpp: meta_types/qt6apptouchstoneviewer_debug_metatypes.json
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/qt6/libexec/qmltyperegistrar
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6core_none_metatypes.json
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6qml_none_metatypes.json
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6network_none_metatypes.json
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6quick_none_metatypes.json
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6gui_none_metatypes.json
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6qmlmodels_none_metatypes.json
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6opengl_none_metatypes.json
apptouchstoneviewer_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6concurrent_none_metatypes.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Automatic QML type registration for target appTouchstoneViewer"
	/usr/lib/qt6/libexec/qmltyperegistrar --generate-qmltypes=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/TouchstoneViewer/appTouchstoneViewer.qmltypes --import-name=TouchstoneViewer --major-version=1 --minor-version=0 @/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/qmltypes/appTouchstoneViewer_foreign_types.txt -o /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/apptouchstoneviewer_qmltyperegistrations.cpp /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/meta_types/qt6apptouchstoneviewer_debug_metatypes.json
	/usr/bin/cmake -E make_directory /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.generated
	/usr/bin/cmake -E touch /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.generated/appTouchstoneViewer.qmltypes

TouchstoneViewer/appTouchstoneViewer.qmltypes: apptouchstoneviewer_qmltyperegistrations.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate TouchstoneViewer/appTouchstoneViewer.qmltypes

.rcc/qrc_qmake_TouchstoneViewer.cpp: TouchstoneViewer/qmldir
.rcc/qrc_qmake_TouchstoneViewer.cpp: .rcc/qmake_TouchstoneViewer.qrc
.rcc/qrc_qmake_TouchstoneViewer.cpp: /usr/lib/qt6/libexec/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Running rcc for resource qmake_TouchstoneViewer"
	/usr/lib/qt6/libexec/rcc --output /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp --name qmake_TouchstoneViewer /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmake_TouchstoneViewer.qrc

.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp: /usr/lib/qt6/libexec/qmlcachegen
.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp: .rcc/qmlcache/appTouchstoneViewer_qml_loader_file_list.rsp
.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp: .rcc/qmake_TouchstoneViewer.qrc
.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp: .rcc/appTouchstoneViewer_raw_qml_0.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating .rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp"
	/usr/lib/qt6/libexec/qmlcachegen --resource-name qmlcache_appTouchstoneViewer --resource /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmake_TouchstoneViewer.qrc --resource /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/appTouchstoneViewer_raw_qml_0.qrc -o /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp @/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qml_loader_file_list.rsp

.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp: /usr/lib/qt6/libexec/qmlcachegen
.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp: /home/leon/Projects/TouchstoneViewer/src/ui/Main.qml
.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp: .rcc/qmake_TouchstoneViewer.qrc
.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp: .rcc/appTouchstoneViewer_raw_qml_0.qrc
.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp: TouchstoneViewer/appTouchstoneViewer.qmltypes
.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp: TouchstoneViewer/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating .rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp"
	/usr/bin/cmake -E make_directory /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui
	/usr/lib/qt6/libexec/qmlcachegen --bare --resource-path /TouchstoneViewer/src/ui/Main.qml -I /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug -I /usr/lib/x86_64-linux-gnu/qt6/qml -i /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/TouchstoneViewer/qmldir --resource /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmake_TouchstoneViewer.qrc --resource /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/appTouchstoneViewer_raw_qml_0.qrc -o /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp /home/leon/Projects/TouchstoneViewer/src/ui/Main.qml

.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp: /usr/lib/qt6/libexec/qmlcachegen
.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp: /home/leon/Projects/TouchstoneViewer/src/ui/MenuComponent.qml
.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp: .rcc/qmake_TouchstoneViewer.qrc
.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp: .rcc/appTouchstoneViewer_raw_qml_0.qrc
.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp: TouchstoneViewer/appTouchstoneViewer.qmltypes
.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp: TouchstoneViewer/qmldir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating .rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp"
	/usr/bin/cmake -E make_directory /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui
	/usr/lib/qt6/libexec/qmlcachegen --bare --resource-path /TouchstoneViewer/src/ui/MenuComponent.qml -I /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug -I /usr/lib/x86_64-linux-gnu/qt6/qml -i /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/TouchstoneViewer/qmldir --resource /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmake_TouchstoneViewer.qrc --resource /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/appTouchstoneViewer_raw_qml_0.qrc -o /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp /home/leon/Projects/TouchstoneViewer/src/ui/MenuComponent.qml

.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp: /home/leon/Projects/TouchstoneViewer/src/ui/Main.qml
.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp: /home/leon/Projects/TouchstoneViewer/src/ui/MenuComponent.qml
.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp: .rcc/appTouchstoneViewer_raw_qml_0.qrc
.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp: /usr/lib/qt6/libexec/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Running rcc for resource appTouchstoneViewer_raw_qml_0"
	/usr/lib/qt6/libexec/rcc --output /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp --name appTouchstoneViewer_raw_qml_0 /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/appTouchstoneViewer_raw_qml_0.qrc

appTouchstoneViewer_autogen/timestamp: /usr/lib/qt6/libexec/moc
appTouchstoneViewer_autogen/timestamp: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Automatic MOC and UIC for target appTouchstoneViewer"
	/usr/bin/cmake -E cmake_autogen /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles/appTouchstoneViewer_autogen.dir/AutogenInfo.json Debug
	/usr/bin/cmake -E touch /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/appTouchstoneViewer_autogen/timestamp

CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o: appTouchstoneViewer_autogen/mocs_compilation.cpp
CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o -c /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/appTouchstoneViewer_autogen/mocs_compilation.cpp

CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/appTouchstoneViewer_autogen/mocs_compilation.cpp > CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.i

CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/appTouchstoneViewer_autogen/mocs_compilation.cpp -o CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.s

CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o: /home/leon/Projects/TouchstoneViewer/src/app/main.cpp
CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o -c /home/leon/Projects/TouchstoneViewer/src/app/main.cpp

CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/src/app/main.cpp > CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.i

CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/src/app/main.cpp -o CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.s

CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o: apptouchstoneviewer_qmltyperegistrations.cpp
CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o -c /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/apptouchstoneviewer_qmltyperegistrations.cpp

CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/apptouchstoneviewer_qmltyperegistrations.cpp > CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.i

CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/apptouchstoneviewer_qmltyperegistrations.cpp -o CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.s

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o: .rcc/qrc_qmake_TouchstoneViewer.cpp
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o -c /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp > CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.i

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.s

CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o: /home/leon/Projects/TouchstoneViewer/src/app/controller.cpp
CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o -c /home/leon/Projects/TouchstoneViewer/src/app/controller.cpp

CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/src/app/controller.cpp > CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.i

CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/src/app/controller.cpp -o CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.s

CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o: /home/leon/Projects/TouchstoneViewer/src/app/dataprocessor.cpp
CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o -c /home/leon/Projects/TouchstoneViewer/src/app/dataprocessor.cpp

CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/src/app/dataprocessor.cpp > CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.i

CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/src/app/dataprocessor.cpp -o CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.s

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o: .rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o -c /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp > CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.i

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.s

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o: .rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o -c /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp > CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.i

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.s

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o: .rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o -c /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp > CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.i

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.s

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o: CMakeFiles/appTouchstoneViewer.dir/flags.make
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o: .rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp
CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o: CMakeFiles/appTouchstoneViewer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o -MF CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o.d -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o -c /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp > CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.i

CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp -o CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.s

# Object files for target appTouchstoneViewer
appTouchstoneViewer_OBJECTS = \
"CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o" \
"CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o"

# External object files for target appTouchstoneViewer
appTouchstoneViewer_EXTERNAL_OBJECTS =

appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/appTouchstoneViewer_autogen/mocs_compilation.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/src/app/main.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/apptouchstoneviewer_qmltyperegistrations.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_qmake_TouchstoneViewer.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/src/app/controller.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/src/app/dataprocessor.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/build/Desktop-Debug/.rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp.o
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/build.make
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libQt6Quick.so.6.4.2
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libQt6Concurrent.so.6.4.2
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libQt6QmlModels.so.6.4.2
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libQt6Qml.so.6.4.2
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libQt6Network.so.6.4.2
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libQt6OpenGL.so.6.4.2
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libQt6Gui.so.6.4.2
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libGLX.so
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libOpenGL.so
appTouchstoneViewer: /usr/lib/x86_64-linux-gnu/libQt6Core.so.6.4.2
appTouchstoneViewer: CMakeFiles/appTouchstoneViewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable appTouchstoneViewer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/appTouchstoneViewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/appTouchstoneViewer.dir/build: appTouchstoneViewer
.PHONY : CMakeFiles/appTouchstoneViewer.dir/build

CMakeFiles/appTouchstoneViewer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appTouchstoneViewer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appTouchstoneViewer.dir/clean

CMakeFiles/appTouchstoneViewer.dir/depend: .rcc/qmlcache/appTouchstoneViewer_qmlcache_loader.cpp
CMakeFiles/appTouchstoneViewer.dir/depend: .rcc/qmlcache/appTouchstoneViewer_src/ui/Main_qml.cpp
CMakeFiles/appTouchstoneViewer.dir/depend: .rcc/qmlcache/appTouchstoneViewer_src/ui/MenuComponent_qml.cpp
CMakeFiles/appTouchstoneViewer.dir/depend: .rcc/qrc_appTouchstoneViewer_raw_qml_0.cpp
CMakeFiles/appTouchstoneViewer.dir/depend: .rcc/qrc_qmake_TouchstoneViewer.cpp
CMakeFiles/appTouchstoneViewer.dir/depend: TouchstoneViewer/appTouchstoneViewer.qmltypes
CMakeFiles/appTouchstoneViewer.dir/depend: appTouchstoneViewer_autogen/timestamp
CMakeFiles/appTouchstoneViewer.dir/depend: apptouchstoneviewer_qmltyperegistrations.cpp
CMakeFiles/appTouchstoneViewer.dir/depend: meta_types/qt6apptouchstoneviewer_debug_metatypes.json
CMakeFiles/appTouchstoneViewer.dir/depend: meta_types/qt6apptouchstoneviewer_debug_metatypes.json.gen
	cd /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leon/Projects/TouchstoneViewer /home/leon/Projects/TouchstoneViewer /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug /home/leon/Projects/TouchstoneViewer/build/Desktop-Debug/CMakeFiles/appTouchstoneViewer.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appTouchstoneViewer.dir/depend

