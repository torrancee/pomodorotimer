import QtQuick 2.7

Page1Form {
    dial.onValueChanged: {
        textField.text = dial.value.toPrecision(2) + " min"
}
    button.onClicked: {
        textField.text = "20"

}
//    button1.onClicked: {
    //        console.log("Button Pressed. Entered text: " + textField1.text);
//    }
}
