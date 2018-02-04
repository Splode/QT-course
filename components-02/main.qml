import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ComponentButton {
        id: button
        customText: 'click'
        onClicked: {
            console.log('button clicked')
        }
    }

    ClickableImage {
        id: clickableImage
        source: 'assets/objects.png'
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 8
        onClicked: {
            console.log('image clicked')
        }
    }
}
