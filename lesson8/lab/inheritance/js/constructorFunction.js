
(function () {
    "use strict";
    function Bicycle() {
        this.speed = 0;
      
    }
    Bicycle.prototype.applyBrake = function (value) {
        this.speed -= value;
        console.log(`applying brake(${value})....`)
    }
    Bicycle.prototype.speedUp = function (value) {
        this.speed += value;
        console.log(`increasing speed(${value})....`)
    }
    function MountainBike() {
        Bicycle.call(this);
        this.gear = 1;
        this.setGear = function (value) {
            this.gear = value;
            console.log(`changing gear(${value})....`)
        }
    }
    MountainBike.prototype.__proto__ = Bicycle.prototype;
    function start() {
        const bike = new Bicycle()
        // MountainBike.prototype = bike;
        let mountainBike = new MountainBike();       
        console.log('------Start constructor function examples------');
        console.log('bicycle>>>>>>');

        bike.speedUp(200);
        console.log(`Speed: ${bike.speed}`);
        bike.applyBrake(100);
        console.log(`Speed: ${bike.speed}`);

        console.log('mountainBike>>>>>>');


        mountainBike.speedUp(400);
        console.log(`Speed: ${mountainBike.speed}`);
        console.log(`Gear: ${mountainBike.gear}`);
        mountainBike.setGear(5);
        console.log(`Gear: ${mountainBike.gear}`);
        mountainBike.applyBrake(100);
        console.log(`Speed: ${mountainBike.speed}`);

        console.log(`Gear: ${mountainBike.gear}`);
        console.log('------End constructor function examples------');
        console.log(`Speed: ${bike.speed}`);
    }
start();

    window.addEventListener('load',start);

})()