import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: 'grey'

    Item {
        id: stateController

        state: 'stage-one'
        states: [
            State {
                name: 'stage-one'
                PropertyChanges {
                    target: stageLoader
                    source: 'StageOne.qml'
                }
            },
            State {
                name: "stage-two"
                PropertyChanges {
                    target: stageLoader
                    source: 'StageTwo.qml'
                }
            }
        ]
    }


    Loader {
        id: stageLoader
        anchors.fill: parent
    }

//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            gameListView.state = 'hidden'
//        }
//    }

    GameListView {
        id: gameListView
        model: StageOne {}
    }

//    ListView {
//        id: gameListView
//        model: StageOne {}
//        width: root.width
//        height: root.height
//        interactive: false
//        opacity: 1

//        states: [
//            State {
//                name: 'hidden'
//            }
//        ]

//        transitions: [
//            Transition {
//                from: ""
//                to: "hidden"
//                NumberAnimation {
//                    target: gameListView
//                    duration: 6000
//                    property: 'opacity'
//                    to: 0
//                }
//            }
//        ]

//        delegate: Row {
//            spacing: 5

//            Rectangle {
//                width: 200
//                height: 100

//                Text {
//                    text: description
//                    width: parent.width
//                    wrapMode: Text.Wrap
//                }
//            }

//            Repeater {
//                model: options
//                Text {
//                    text: " ===== " + label
//                }
//            }
//        }
//    }
}
