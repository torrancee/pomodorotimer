import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    width: 660
    height: 250
    property alias progressBar: progressBar
    property alias button1: button1
    property alias textField1: textField1
    property alias dial: dial
    property alias textField: textField
    property alias button: button

    Dial {
        id: dial
        x: 187
        y: 108
        width: 188
        height: 101
        font.weight: Font.Normal
        opacity: 1
        padding: 0
        font.capitalization: Font.AllUppercase
        spacing: 1
        stepSize: 0
        to: 25
        from: 15
        value: 15
    }

    ProgressBar {
        id: progressBar
        x: 38
        y: 25
        width: 585
        height: 44
        font.pointSize: 10
        value: 0.3
    }

    Button {
        id: button
        x: 38
        y: 108
        width: 143
        height: 40
        text: qsTr("START")
    }

    Button {
        id: button1
        x: 38
        y: 159
        width: 143
        height: 40
        text: qsTr("STOP")
    }

    TextField {
        id: textField
        x: 381
        y: 139
        text: qsTr("Text Field")
    }

    GridLayout {
    }

    TextField {
        id: textField1
        x: 381
        y: 190
        text: qsTr("Text Field")
    }
}
