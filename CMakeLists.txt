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
    QML_FILES src/ui/Main.qml
    QML_FILES src/ui/MenuBar.qml
    QML_FILES src/ui/Plot.qml
    SOURCES src/ui/controller.h src/ui/controller.cpp
    SOURCES src/app/TouchstoneFile.h src/app/TouchstoneFile.cpp
    SOURCES src/app/TouchstoneData.h src/app/TouchstoneData.cpp
    SOURCES src/app/TouchstoneData.cpp

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

install(DIRECTORY src/ui/
    DESTINATION ${CMAKE_INSTALL_DATADIR}/TouchstoneViewer/ui
    FILES_MATCHING PATTERN "*.qml"
)

set(CPACK_PACKAGE_NAME "touchstone-viewer")
set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})
set(CPACK_PACKAGE_DESCRIPTION "Touchstone File Viewer Application")
set(CPACK_PACKAGE_CONTACT "Leonid Krutovskiy <leonidkrutovskiy@yandex.ru>")
set(CPACK_PACKAGE_VENDOR "Synecta")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Leonid Krutovskiy <leonidkrutovskiy@yandex.ru>")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libqt6qml6, libqt6quick6, libqt6core6")
set(CPACK_DEBIAN_PACKAGE_SECTION "science")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_DEB_COMPONENT_INSTALL YES)

include(CPack)
