

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import Smartframe
import QtQuick.Studio.DesignEffects
import QtQuick.Timeline 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#1a1a1a"
    property int currentIndex: 0
    property var imageList: ["images/IMG1.png", "images/IMG2.png", "images/IMG3.png"]

    Image {
        id: mainimage
        anchors.fill: parent
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignVCenter
        source: imageList[currentIndex]
        sourceSize.height: 1080
        sourceSize.width: 1920
        fillMode: Image.PreserveAspectFit
    }

    Timer {
        id: timer
        running: true
        repeat: true
        interval: 5000
    }

    Connections {
        target: timer
        function onTriggered() {
            currentIndex = (currentIndex + 1) % imageList.length
        }
    }
}
