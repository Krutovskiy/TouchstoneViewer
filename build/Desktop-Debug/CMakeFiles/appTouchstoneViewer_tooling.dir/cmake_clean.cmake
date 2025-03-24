file(REMOVE_RECURSE
  "TouchstoneViewer/src/ui/Main.qml"
  "TouchstoneViewer/src/ui/MenuComponent.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/appTouchstoneViewer_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
