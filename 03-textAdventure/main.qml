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

        StageOne {
            id: stageOne
        }

        StageTwo {
            id: stageTwo
        }

        state: 'stage-one'
        states: [
            State {
                name: 'stage-one'
                PropertyChanges {
                    target: stageLoader
                    item.model: stageOne
                }
            },
            State {
                name: "stage-two"
                PropertyChanges {
                    target: stageLoader
                    item.model: stageTwo
                }
            }
        ]
    }


    Loader {
        id: stageLoader
        anchors.fill: parent
        source: 'GameListView.qml'
//        item.onChecked: {
//            console.log(test)
//        }
    }

    GameListView {
        id: total
        model: StageTwo {}
        onActivated: {
            console.log(test)
        }
    }

//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            stateController.state = 'stage-two';
//        }
//    }
}
