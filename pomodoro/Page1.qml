import QtQuick 2.7
import QtMultimedia 5.8

Page1Form {

    textField.text : dial.value + " min"
    progressBar.to : dial.value * 60

    Timer{
        id: timerId
        interval: 1000
        running: false
        repeat: true
        triggeredOnStart: false

        onTriggered: {
            progressBar.value += 1

            if(progressBar.value == progressBar.to){
               timerId.stop()
               ring.play()
               dial.enabled = true
            }
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
        dial.enabled = false
    }

    button1.onClicked: {
        timerId.stop()
        progressBar.value = 0
        dial.enabled = true
    }
}
