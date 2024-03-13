import QtQuick 2.15
import QtQuick.Window 2.15
import CustomTypes 1.0
Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Basic Camera Application - Anıl Sayar")

    VideoItem {
        id: video
        anchors {
            fill: parent
            leftMargin: 5
            rightMargin: 5
            topMargin: 5
            bottomMargin: 5
        }
        Component.onCompleted: {
            video.start_gst()
        }
    }
}
