import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: root
    width: 1280
    height: 800
    property alias currentFrame: timeline.currentFrame
    property alias timelineItem: timeline
    property alias timelineAnim: route

    property alias pointerX: pointer.x
    property alias pointerY: pointer.y

    Item {
        id: pointer
        x: 560
        y: 338

        Image {
            id: circle
            source: "images/blue_circle_gps_area.png"
            rotation: 5.533
            anchors.verticalCenterOffset: 83
            anchors.horizontalCenterOffset: 27
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "build/Desktop_Qt_6_7_0_MinGW_64_bit-Debug/Project-test-1/images/map_location_arrow.png"
            }
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: route
                to: 20000
                duration: 200000
                running: true
                loops: -1
                from: 0
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 20000

        KeyframeGroup {
            target: pointer
            property: "x"
            Keyframe {
                value: 607
                frame: 0
            }

            Keyframe {
                value: 480
                frame: 2800
            }

            Keyframe {
                value: 475
                frame: 3100
            }

            Keyframe {
                value: 452
                frame: 6000
            }

            Keyframe {
                value: 438
                frame: 7000
            }

            Keyframe {
                value: 399
                frame: 9000
            }

            Keyframe {
                value: 405
                frame: 9500
            }

            Keyframe {
                value: 471
                frame: 11000
            }

            Keyframe {
                value: 479
                frame: 11500
            }

            Keyframe {
                value: 484
                frame: 12500
            }

            Keyframe {
                value: 496
                frame: 13000
            }

            Keyframe {
                value: 533
                frame: 14500
            }

            Keyframe {
                value: 607
                frame: 20000
            }
        }

        KeyframeGroup {
            target: pointer
            property: "y"

            Keyframe {
                value: 382
                frame: 0
            }

            Keyframe {
                value: 342
                frame: 2800
            }

            Keyframe {
                value: 346
                frame: 3100
            }

            Keyframe {
                value: 500
                frame: 6000
            }

            Keyframe {
                value: 547
                frame: 7000
            }

            Keyframe {
                value: 623
                frame: 9000
            }

            Keyframe {
                value: 633
                frame: 9500
            }

            Keyframe {
                value: 647
                frame: 11000
            }

            Keyframe {
                value: 642
                frame: 11500
            }

            Keyframe {
                value: 614
                frame: 12500
            }

            Keyframe {
                value: 604
                frame: 13000
            }

            Keyframe {
                value: 612
                frame: 14500
            }

            Keyframe {
                value: 382
                frame: 20000
            }
        }

        KeyframeGroup {
            target: pointer
            property: "rotation"
            Keyframe {
                value: 288
                frame: 0
            }

            Keyframe {
                value: 288
                frame: 2800
            }

            Keyframe {
                value: 190
                frame: 3100
            }

            Keyframe {
                value: 185
                frame: 6000
            }

            Keyframe {
                value: 195
                frame: 7000
            }

            Keyframe {
                value: 200
                frame: 7300
            }

            Keyframe {
                value: 210
                frame: 9000
            }

            Keyframe {
                value: 115
                frame: 9500
            }

            Keyframe {
                value: 100
                frame: 9700
            }

            Keyframe {
                value: 90
                frame: 11000
            }

            Keyframe {
                value: 10
                frame: 11500
            }

            Keyframe {
                value: 50
                frame: 12500
            }

            Keyframe {
                value: 100
                frame: 13000
            }

            Keyframe {
                value: 95
                frame: 14100
            }

            Keyframe {
                value: 20
                frame: 14500
            }

            Keyframe {
                value: 18
                frame: 19700
            }
            Keyframe {
                value: -72
                frame: 20000
            }
        }
    }
}
