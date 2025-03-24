file(REMOVE_RECURSE
  "TouchstoneViewer/src/ui/Main.qml"
  "TouchstoneViewer/src/ui/MenuBar.qml"
  "TouchstoneViewer/src/ui/Plot.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appTouchstoneViewer_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
