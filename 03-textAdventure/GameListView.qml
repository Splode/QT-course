import QtQuick 2.0

ListView {
    id: root
    interactive: false
    opacity: 1
    width: parent.width / 2
    height: parent.height

    states: [
        State {
            name: 'hidden'
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "hidden"
            NumberAnimation {
                target: root
                duration: 6000
                property: 'opacity'
                to: 0
            }
        }
    ]

    delegate: Column {
        spacing: 8

        Rectangle {
            color: 'white'
            width: parent.width
            height: 100

            Text {
                text: description
                width: parent.width
                wrapMode: Text.Wrap
            }
        }

        Row {
            spacing: 8

            Repeater {
                model: options

                Rectangle {
                    width: 200
                    height: 50

                    Text {
                        text: " ===== " + label
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            if (!isCorrect) {
                                console.log('wrong answer')
                            } else if (isCorrect) {
                                console.log('correct answer')
                            }
                        }
                    }
                }
            }
        }
    }
}
