cmake_minimum_required(VERSION 3.15)
project(jucePluginLib VERSION ${CMAKE_PROJECT_VERSION}) 

set(SOURCES
	event.cpp event.h
	controller.cpp controller.h
	dummydevice.cpp dummydevice.h
	midipacket.cpp midipacket.h
	parameter.cpp parameter.h
	parameterbinding.cpp parameterbinding.h
	parameterdescription.cpp parameterdescription.h
	parameterdescriptions.cpp parameterdescriptions.h
	parameterlink.cpp parameterlink.h
	processor.cpp processor.h
)

add_library(jucePluginLib STATIC)

target_sources(jucePluginLib PRIVATE ${SOURCES})
source_group("source" FILES ${SOURCES})

target_link_libraries(jucePluginLib PUBLIC juceUiLib synthLib)
target_include_directories(jucePluginLib PUBLIC ../JUCE/modules)
target_compile_definitions(jucePluginLib PRIVATE JUCE_GLOBAL_MODULE_SETTINGS_INCLUDED=1)
