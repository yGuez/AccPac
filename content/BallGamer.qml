import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtSensors 5.0
import "logic.js" as Logic

Item {
    id:ballGamer

    Accelerometer {
        id: accel
        dataRate: 100
        active:true

        onReadingChanged: {
            var newX = (bubble.x + calcRoll(accel.reading.x, accel.reading.y, accel.reading.z) * .1)
            var newY = (bubble.y - calcPitch(accel.reading.x, accel.reading.y, accel.reading.z) * .1)

            if (isNaN(newX) || isNaN(newY))
                return;

            if (newX < 0)
                newX = 0

            if (newX > mainWindow.width - bubble.width)
                newX = mainWindow.width - bubble.width

            if (newY < 18)
                newY = 18

            if (newY > mainWindow.height - bubble.height)
                newY = mainWindow.height - bubble.height

                bubble.x = newX
                bubble.y = newY

            for(var i = 0; i<Logic.ret.length; i++){
                if(Math.round(Math.sqrt(bubble.x)) === Math.round(Math.sqrt(Logic.ret[i].x))&& Math.round(Math.sqrt(bubble.y)) === Math.round(Math.sqrt(Logic.ret[i].y))){
                    console.log("ddddd", Logic.ret[i]);
                    Logic.ret[i].destroy();
                }
            }

        }
    }

    function calcPitch(x,y,z) {
        return -(Math.atan(y / Math.sqrt(x * x + z * z)) * 57.2957795);

    }
    function calcRoll(x,y,z) {
         return -(Math.atan(x / Math.sqrt(y * y + z * z)) * 57.2957795);
    }

    Rectangle {
        id: bubble
        color: "red"
        width: 40
        height: 40
        radius: bubble.width/2
        property real centerX: mainWindow.width / 2
        property real centerY: mainWindow.height / 2
        property real bubbleCenter: bubble.width / 2
        x: centerX - bubbleCenter
        y: centerY - bubbleCenter

        Behavior on y {
            SmoothedAnimation {
                easing.type: Easing.Linear
                duration: 100
            }
        }
        Behavior on x {
            SmoothedAnimation {
                easing.type: Easing.Linear
                duration: 100
            }
        }
    }
}
