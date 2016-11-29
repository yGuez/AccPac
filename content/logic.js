var component;
var gamer;
var bad;
component = Qt.createComponent("BallBase.qml");
gamer = Qt.createComponent("BallGamer.qml");
bad = Qt.createComponent("BallBase.qml");

var ret = [];
for(var i = 0; i<5; i++){
   ret.push(component.createObject(mainWindow));
}
console.log("ff", Math.round(ret[1].x));
function addBall() {

    var balls = [];

    var rat = gamer.createObject(mainWindow);
    var b = bad.createObject(mainWindow);
    b.goball = true;


    function etat(){

    }
     etat();




    /*if(Math.round(rat.x) === Math.round(ret.x)){
        console.log("hola");
        ret.destroy();

    }*/

}

function killBall(){

}
