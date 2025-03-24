cmake_minimum_required(VERSION 3.16)

project(TouchstoneViewer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick Core Concurrent)

qt_standard_project_setup()

qt_add_executable(appTouchstoneViewer
    src/app/main.cpp
)

qt_add_qml_module(appTouchstoneViewer
    URI TouchstoneViewer
    VERSION 1.0
    QML_FILES
        src/ui/Main.qml
        QML_FILES src/ui/MenuComponent.qml
        SOURCES
        SOURCES src/app/controller.h src/app/controller.cpp
        SOURCES src/app/dataprocessor.h src/app/dataprocessor.cpp
        SOURCES src/app/state.h
)


target_link_libraries(appTouchstoneViewer
    PRIVATE Qt6::Quick Qt6::Core Qt6::Concurrent
)

include(GNUInstallDirs)
install(TARGETS appTouchstoneViewer
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
