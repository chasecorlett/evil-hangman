# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Hangman.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Hangman.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hangman.dir/flags.make

CMakeFiles/Hangman.dir/main.cpp.obj: CMakeFiles/Hangman.dir/flags.make
CMakeFiles/Hangman.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hangman.dir/main.cpp.obj"
	C:\Users\Chase\Downloads\mingw64.7.3.0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Hangman.dir\main.cpp.obj -c "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\main.cpp"

CMakeFiles/Hangman.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hangman.dir/main.cpp.i"
	C:\Users\Chase\Downloads\mingw64.7.3.0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\main.cpp" > CMakeFiles\Hangman.dir\main.cpp.i

CMakeFiles/Hangman.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hangman.dir/main.cpp.s"
	C:\Users\Chase\Downloads\mingw64.7.3.0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\main.cpp" -o CMakeFiles\Hangman.dir\main.cpp.s

CMakeFiles/Hangman.dir/hangman.cpp.obj: CMakeFiles/Hangman.dir/flags.make
CMakeFiles/Hangman.dir/hangman.cpp.obj: ../hangman.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Hangman.dir/hangman.cpp.obj"
	C:\Users\Chase\Downloads\mingw64.7.3.0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Hangman.dir\hangman.cpp.obj -c "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\hangman.cpp"

CMakeFiles/Hangman.dir/hangman.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Hangman.dir/hangman.cpp.i"
	C:\Users\Chase\Downloads\mingw64.7.3.0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\hangman.cpp" > CMakeFiles\Hangman.dir\hangman.cpp.i

CMakeFiles/Hangman.dir/hangman.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Hangman.dir/hangman.cpp.s"
	C:\Users\Chase\Downloads\mingw64.7.3.0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\hangman.cpp" -o CMakeFiles\Hangman.dir\hangman.cpp.s

# Object files for target Hangman
Hangman_OBJECTS = \
"CMakeFiles/Hangman.dir/main.cpp.obj" \
"CMakeFiles/Hangman.dir/hangman.cpp.obj"

# External object files for target Hangman
Hangman_EXTERNAL_OBJECTS =

Hangman.exe: CMakeFiles/Hangman.dir/main.cpp.obj
Hangman.exe: CMakeFiles/Hangman.dir/hangman.cpp.obj
Hangman.exe: CMakeFiles/Hangman.dir/build.make
Hangman.exe: CMakeFiles/Hangman.dir/linklibs.rsp
Hangman.exe: CMakeFiles/Hangman.dir/objects1.rsp
Hangman.exe: CMakeFiles/Hangman.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Hangman.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Hangman.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hangman.dir/build: Hangman.exe

.PHONY : CMakeFiles/Hangman.dir/build

CMakeFiles/Hangman.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Hangman.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Hangman.dir/clean

CMakeFiles/Hangman.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman" "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman" "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\cmake-build-debug" "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\cmake-build-debug" "C:\Users\Chase\Documents\Sum 21\CSCI262\Code\Assignments\Hangman\cmake-build-debug\CMakeFiles\Hangman.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Hangman.dir/depend
