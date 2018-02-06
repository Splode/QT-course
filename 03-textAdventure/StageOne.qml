import QtQuick 2.0

ListModel {
    ListElement {
        name: 'Stage-02'
        description: 'Test description'
        options: [
            ListElement {
                label: 'option 1'
                isCorrect: false
                response: 'thing'
            },
            ListElement {
                label: 'option 2'
                isCorrect: false
                response: 'thing'
            },
            ListElement {
                label: 'option 3'
                isCorrect: true
                response: 'thing'
            }

        ]
    }
}
