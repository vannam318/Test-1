cmake_minimum_required(VERSION 3.16)

project(Project-test-1 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appProject-test-1
    main.cpp
)

qt_add_qml_module(appProject-test-1
    URI Project-test-1
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES images/trip.png
        RESOURCES images/top_curtain_drag_back.png
        RESOURCES images/top_curtain_drag.png
        RESOURCES images/speed.png
        RESOURCES images/small_speedometer_shadow.png
        RESOURCES images/settings_selected.png
        RESOURCES images/settings.png
        RESOURCES images/search_cancel.png
        RESOURCES images/nav_nodir.png
        RESOURCES images/map_zoomout.png
        RESOURCES images/map_zoomin.png
        RESOURCES images/map_location_arrow.png
        RESOURCES images/map_locate.png
        RESOURCES images/list_selected.png
        RESOURCES images/list.png
        RESOURCES images/lights_on.png
        RESOURCES images/lights_off.png
        RESOURCES images/info_selected.png
        RESOURCES images/info.png
        RESOURCES images/curtain_shadow_handle.png
        RESOURCES images/calories.png
        RESOURCES images/blue_circle_gps_area.png
        RESOURCES images/bike-rearwheel.png
        RESOURCES images/battery.png
        RESOURCES images/assist.png
        RESOURCES images/arrow_right.png
        RESOURCES images/arrow_left.png
        RESOURCES images/sppedometer_outer_ring_195_86.png
        RESOURCES images/speedometer_track_bg_195_87.png
        RESOURCES images/speedometer_needle_ring_195_90.png
        RESOURCES images/speedometer_needle_195_142.png
        RESOURCES images/speedometer_current_kph_arc_195_1340.png
        RESOURCES images/speed_dial_195_151.png
        RESOURCES images/rpm_needle_195_65.png
        RESOURCES images/rpm_dial_195_83.png
        RESOURCES images/rpm_arc_gauge_195_68.png
        RESOURCES images/outside_white_arch_195_28.png
        RESOURCES images/outside_white_arc_195_46.png
        RESOURCES images/outer_ring_195_48.png
        RESOURCES images/iso_195_156.png
        RESOURCES images/gearbox_visual_195_150.png
        RESOURCES images/gearbox_visual_5_195_162.png
        RESOURCES images/gearbox_visual_4_195_179.png
        RESOURCES images/gearbox_visual_3_195_181.png
        RESOURCES images/gearbox_visual_2_195_185.png
        RESOURCES images/gearbox_visual_1_195_187.png
        RESOURCES images/fuell_dot_40_195_16.png
        RESOURCES images/fuel_needle_195_27.png
        RESOURCES images/fuel_dial_195_43.png
        RESOURCES images/dial_outside_ring_195_9.png
        RESOURCES images/Cluster_Art.png
        RESOURCES images/builtwithlogo_195_934.png
        RESOURCES images/backgrounds_195_610.jpg
        RESOURCES images/arc_track_background_195_64.png
        RESOURCES images/arc_gauge_display_195_7.png
        RESOURCES images/arc_background_track_195_6.png
        RESOURCES images/icons8-up-l50.png
        RESOURCES images/icons8-up-left-100.png
        RESOURCES images/icons8-rightward-up-arrow-50.png
        RESOURCES images/icons8-rightward-up-arrow-100.png
        RESOURCES images/icons8-up-50.png
        RESOURCES images/icons8-up-100.png
        QML_FILES
        RESOURCES images/icons8-right-100.png
        SOURCES speedometer.h speedometer.cpp
        QML_FILES NavigationScreen.ui.qml
        QML_FILES                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              NavigationItem.ui.qml
        QML_FILES NavigationItem.ui.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appProject-test-1 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appProject-test-1
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appProject-test-1
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appProject-test-1
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
