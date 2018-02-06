import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: root
    width: 80
    height: width
    radius: width

    Image {
        id: image
        source: 'assets/objects.png'
        width: parent.width
        height: parent.height
        antialiasing: true
        fillMode: Image.PreserveAspectCrop
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: root
        }
    }
}
