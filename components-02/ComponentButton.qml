import QtQuick 2.0

Item {
    id: root

    property alias customText: label.text
    signal clicked

    Rectangle {
        id: button
        width: 200
        height: 80
        color: 'grey'

        Text {
            id: label
            anchors.centerIn: parent
            text: 'Start'
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.clicked()
            }
        }
    }
}
