import QtQuick 2.0

Item {
    id: container
    property string name: "ball"
    property bool goball: false
    property bool ate: false
    width: 10
    height: 10
    x: Math.random()*(mainWindow.width-width);


    y: Math.random()*(mainWindow.height-height);


    /*function ate() {
        if(ate)
            return;
        ate=true;
        Logic.gameStat.score+= 1;
        Logic.killBall();
    }

    function endgame() {
        if (ate && goball)
            Logic.endGame();
    }*/

    Image {
        source: {
            if(goball)
                return "image/black.png";
            else
                return "image/green.png";

        }
        width: 30
        height: 30

    }
}
