import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import "content"
import "content/logic.js" as Logic

ApplicationWindow {
    id:mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("AccPacc")



    Component.onCompleted: Logic.addBall();


}
