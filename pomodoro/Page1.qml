import QtQuick 2.7
import QtMultimedia 5.8

Page1Form {

    textField.text : dial.value + " min"

    Timer{
        id: timerId
        interval: 1000
        running: false
        repeat: true
        triggeredOnStart: true
        onRunningChanged: timer = 0
        property var timer: 0

        onTriggered: {
            textField1.text = timer
            timer +=1
        }
    }

    SoundEffect{
        id: ring
        source: "qrc:/sound/sound/telephone-ring-03a.wav"
    }

    dial.onValueChanged: {
        textField.text = dial.value.toPrecision(2) + " min"
    }

    button.onClicked: {
        timerId.start()
        progressBar.value = 0
        ring.play()

    }

    button1.onClicked: {
        timerId.stop()
        progressBar.value = 0
    }
}
