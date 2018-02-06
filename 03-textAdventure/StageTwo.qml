import QtQuick 2.0

ListModel {
    ListElement {
        name: 'Stage-01'
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi diam nisl, vehicula vel nunc maximus, faucibus pellentesque nibh. Sed sed pharetra erat, ut laoreet diam. Praesent volutpat egestas nulla in pharetra. In eu rhoncus ante. Vivamus sit amet eleifend velit. Praesent eu varius urna. Praesent finibus ac urna commodo lobortis.'
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
