import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MouseArea {
        anchors.fill: parent
        onClicked: pinwheel.rotation += 120
    }

    Image {
        id: tester
        source: '/content/background.png'

        Image {
            id: pole
            source: '/content/pole.png'
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom

            Image {
                id: pinwheel
                source: '/content/pinwheel.png'
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.top
                Behavior on rotation {
                    NumberAnimation {
                        duration: 300
                    }
                }
            }
        }
    }
}
