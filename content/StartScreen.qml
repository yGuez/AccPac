import QtQuick 2.0

Item {
    id: startScreen
    //taille a revoir
    width: 320
    height: 480

    //Renvoi signal boutton clické
    signal startButtonClicked

    //juste un logo comme ça
    Image {
        source: "image/nuck.png"
        anchors.top: parent.top
        anchors.topMargin: 60
    }

    //boutton start
    Image {
        source: "image/go-button.png"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 60
        MouseArea {
            anchors.fill: parent
            onClicked: startScreen.startButtonClicked()
        }
    }

}
