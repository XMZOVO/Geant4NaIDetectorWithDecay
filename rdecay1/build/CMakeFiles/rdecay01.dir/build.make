# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/roy/Downloads/Geant4-thesis-master/rdecay1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/roy/Downloads/Geant4-thesis-master/rdecay1/build

# Include any dependencies generated for this target.
include CMakeFiles/rdecay01.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rdecay01.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rdecay01.dir/flags.make

CMakeFiles/rdecay01.dir/rdecay01.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/rdecay01.cc.o: ../rdecay01.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rdecay01.dir/rdecay01.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/rdecay01.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/rdecay01.cc

CMakeFiles/rdecay01.dir/rdecay01.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/rdecay01.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/rdecay01.cc > CMakeFiles/rdecay01.dir/rdecay01.cc.i

CMakeFiles/rdecay01.dir/rdecay01.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/rdecay01.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/rdecay01.cc -o CMakeFiles/rdecay01.dir/rdecay01.cc.s

CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.o: ../src/ActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/ActionInitialization.cc

CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/ActionInitialization.cc > CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.i

CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/ActionInitialization.cc -o CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.s

CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.o: ../src/DetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/DetectorConstruction.cc

CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/DetectorConstruction.cc > CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.i

CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/DetectorConstruction.cc -o CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.s

CMakeFiles/rdecay01.dir/src/EventAction.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/EventAction.cc.o: ../src/EventAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rdecay01.dir/src/EventAction.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/EventAction.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/EventAction.cc

CMakeFiles/rdecay01.dir/src/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/EventAction.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/EventAction.cc > CMakeFiles/rdecay01.dir/src/EventAction.cc.i

CMakeFiles/rdecay01.dir/src/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/EventAction.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/EventAction.cc -o CMakeFiles/rdecay01.dir/src/EventAction.cc.s

CMakeFiles/rdecay01.dir/src/EventMessenger.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/EventMessenger.cc.o: ../src/EventMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/rdecay01.dir/src/EventMessenger.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/EventMessenger.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/EventMessenger.cc

CMakeFiles/rdecay01.dir/src/EventMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/EventMessenger.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/EventMessenger.cc > CMakeFiles/rdecay01.dir/src/EventMessenger.cc.i

CMakeFiles/rdecay01.dir/src/EventMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/EventMessenger.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/EventMessenger.cc -o CMakeFiles/rdecay01.dir/src/EventMessenger.cc.s

CMakeFiles/rdecay01.dir/src/HistoManager.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/HistoManager.cc.o: ../src/HistoManager.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/rdecay01.dir/src/HistoManager.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/HistoManager.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/HistoManager.cc

CMakeFiles/rdecay01.dir/src/HistoManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/HistoManager.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/HistoManager.cc > CMakeFiles/rdecay01.dir/src/HistoManager.cc.i

CMakeFiles/rdecay01.dir/src/HistoManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/HistoManager.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/HistoManager.cc -o CMakeFiles/rdecay01.dir/src/HistoManager.cc.s

CMakeFiles/rdecay01.dir/src/PhysicsList.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/PhysicsList.cc.o: ../src/PhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/rdecay01.dir/src/PhysicsList.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/PhysicsList.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/PhysicsList.cc

CMakeFiles/rdecay01.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/PhysicsList.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/PhysicsList.cc > CMakeFiles/rdecay01.dir/src/PhysicsList.cc.i

CMakeFiles/rdecay01.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/PhysicsList.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/PhysicsList.cc -o CMakeFiles/rdecay01.dir/src/PhysicsList.cc.s

CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.o: ../src/PrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/PrimaryGeneratorAction.cc

CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/PrimaryGeneratorAction.cc > CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/PrimaryGeneratorAction.cc -o CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/rdecay01.dir/src/Run.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/Run.cc.o: ../src/Run.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/rdecay01.dir/src/Run.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/Run.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/Run.cc

CMakeFiles/rdecay01.dir/src/Run.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/Run.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/Run.cc > CMakeFiles/rdecay01.dir/src/Run.cc.i

CMakeFiles/rdecay01.dir/src/Run.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/Run.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/Run.cc -o CMakeFiles/rdecay01.dir/src/Run.cc.s

CMakeFiles/rdecay01.dir/src/RunAction.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/RunAction.cc.o: ../src/RunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/rdecay01.dir/src/RunAction.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/RunAction.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/RunAction.cc

CMakeFiles/rdecay01.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/RunAction.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/RunAction.cc > CMakeFiles/rdecay01.dir/src/RunAction.cc.i

CMakeFiles/rdecay01.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/RunAction.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/RunAction.cc -o CMakeFiles/rdecay01.dir/src/RunAction.cc.s

CMakeFiles/rdecay01.dir/src/SteppingAction.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/SteppingAction.cc.o: ../src/SteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/rdecay01.dir/src/SteppingAction.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/SteppingAction.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/SteppingAction.cc

CMakeFiles/rdecay01.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/SteppingAction.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/SteppingAction.cc > CMakeFiles/rdecay01.dir/src/SteppingAction.cc.i

CMakeFiles/rdecay01.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/SteppingAction.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/SteppingAction.cc -o CMakeFiles/rdecay01.dir/src/SteppingAction.cc.s

CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.o: ../src/SteppingVerbose.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/SteppingVerbose.cc

CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/SteppingVerbose.cc > CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.i

CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/SteppingVerbose.cc -o CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.s

CMakeFiles/rdecay01.dir/src/TrackingAction.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/TrackingAction.cc.o: ../src/TrackingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/rdecay01.dir/src/TrackingAction.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/TrackingAction.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/TrackingAction.cc

CMakeFiles/rdecay01.dir/src/TrackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/TrackingAction.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/TrackingAction.cc > CMakeFiles/rdecay01.dir/src/TrackingAction.cc.i

CMakeFiles/rdecay01.dir/src/TrackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/TrackingAction.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/TrackingAction.cc -o CMakeFiles/rdecay01.dir/src/TrackingAction.cc.s

CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.o: CMakeFiles/rdecay01.dir/flags.make
CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.o: ../src/TrackingMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.o -c /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/TrackingMessenger.cc

CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/TrackingMessenger.cc > CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.i

CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/roy/Downloads/Geant4-thesis-master/rdecay1/src/TrackingMessenger.cc -o CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.s

# Object files for target rdecay01
rdecay01_OBJECTS = \
"CMakeFiles/rdecay01.dir/rdecay01.cc.o" \
"CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/rdecay01.dir/src/EventAction.cc.o" \
"CMakeFiles/rdecay01.dir/src/EventMessenger.cc.o" \
"CMakeFiles/rdecay01.dir/src/HistoManager.cc.o" \
"CMakeFiles/rdecay01.dir/src/PhysicsList.cc.o" \
"CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/rdecay01.dir/src/Run.cc.o" \
"CMakeFiles/rdecay01.dir/src/RunAction.cc.o" \
"CMakeFiles/rdecay01.dir/src/SteppingAction.cc.o" \
"CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.o" \
"CMakeFiles/rdecay01.dir/src/TrackingAction.cc.o" \
"CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.o"

# External object files for target rdecay01
rdecay01_EXTERNAL_OBJECTS =

rdecay01: CMakeFiles/rdecay01.dir/rdecay01.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/ActionInitialization.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/DetectorConstruction.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/EventAction.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/EventMessenger.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/HistoManager.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/PhysicsList.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/PrimaryGeneratorAction.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/Run.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/RunAction.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/SteppingAction.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/SteppingVerbose.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/TrackingAction.cc.o
rdecay01: CMakeFiles/rdecay01.dir/src/TrackingMessenger.cc.o
rdecay01: CMakeFiles/rdecay01.dir/build.make
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4Tree.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4FR.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4GMocren.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4visHepRep.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4RayTracer.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4VRML.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4OpenGL.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4gl2ps.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4visQt3D.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4vis_management.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4modeling.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4interfaces.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4persistency.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4error_propagation.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4readout.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4physicslists.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4tasking.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4parmodels.dylib
rdecay01: /Library/Developer/CommandLineTools/SDKs/MacOSX11.1.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
rdecay01: /opt/homebrew/opt/qt@5/lib/QtOpenGL.framework/QtOpenGL
rdecay01: /opt/homebrew/opt/qt@5/lib/QtPrintSupport.framework/QtPrintSupport
rdecay01: /opt/homebrew/opt/qt@5/lib/QtWidgets.framework/QtWidgets
rdecay01: /opt/homebrew/opt/qt@5/lib/Qt3DExtras.framework/Qt3DExtras
rdecay01: /opt/homebrew/opt/qt@5/lib/Qt3DInput.framework/Qt3DInput
rdecay01: /opt/homebrew/opt/qt@5/lib/QtGamepad.framework/QtGamepad
rdecay01: /opt/homebrew/opt/qt@5/lib/Qt3DLogic.framework/Qt3DLogic
rdecay01: /opt/homebrew/opt/qt@5/lib/Qt3DRender.framework/Qt3DRender
rdecay01: /opt/homebrew/opt/qt@5/lib/Qt3DCore.framework/Qt3DCore
rdecay01: /opt/homebrew/opt/qt@5/lib/QtGui.framework/QtGui
rdecay01: /opt/homebrew/opt/qt@5/lib/QtNetwork.framework/QtNetwork
rdecay01: /opt/homebrew/opt/qt@5/lib/QtCore.framework/QtCore
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4run.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4event.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4tracking.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4processes.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4analysis.dylib
rdecay01: /opt/local/lib/libexpat.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4digits_hits.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4track.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4particles.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4geometry.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4materials.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4zlib.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4graphics_reps.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4intercoms.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4global.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4clhep.dylib
rdecay01: /Users/roy/Downloads/geant4.10.07.p01/install/lib/libG4ptl.0.0.2.dylib
rdecay01: CMakeFiles/rdecay01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable rdecay01"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rdecay01.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rdecay01.dir/build: rdecay01

.PHONY : CMakeFiles/rdecay01.dir/build

CMakeFiles/rdecay01.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rdecay01.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rdecay01.dir/clean

CMakeFiles/rdecay01.dir/depend:
	cd /Users/roy/Downloads/Geant4-thesis-master/rdecay1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/roy/Downloads/Geant4-thesis-master/rdecay1 /Users/roy/Downloads/Geant4-thesis-master/rdecay1 /Users/roy/Downloads/Geant4-thesis-master/rdecay1/build /Users/roy/Downloads/Geant4-thesis-master/rdecay1/build /Users/roy/Downloads/Geant4-thesis-master/rdecay1/build/CMakeFiles/rdecay01.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rdecay01.dir/depend
