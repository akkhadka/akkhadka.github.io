
(function () {
    "use strict";
    function Bicycle() {
        this.speed = 0;
        this.applyBrake = function (value) {
            this.speed -= value;
            console.log(`applying brake(${value})....`)
        },
            this.speedUp = function (value) {
                this.speed += value;
                console.log(`increasing speed(${value})....`)
            }
    }

    function MountainBike() {
        this.gear = 1;
        this.setGear = function (value) {
            this.gear = value;
            console.log(`changing gear(${value})....`)
        }
    }
    MountainBike.prototype = new Bicycle();
    
    console.log('------Start constructor function examples------');
    console.log('bicycle>>>>>>');
    let cityCycle = new Bicycle();
    cityCycle.speedUp(200);
    console.log(`Speed: ${cityCycle.speed}`);
    cityCycle.applyBrake(100);
    console.log(`Speed: ${cityCycle.speed}`);

    console.log('mountainBike>>>>>>');
    
    let electricAssistedCycle = new MountainBike();
    electricAssistedCycle.speedUp(400);
    console.log(`Speed: ${electricAssistedCycle.speed}`);
    console.log(`Gear: ${electricAssistedCycle.gear}`);
    electricAssistedCycle.setGear(5);
    console.log(`Gear: ${electricAssistedCycle.gear}`);
    electricAssistedCycle.applyBrake(100);
    console.log(`Speed: ${electricAssistedCycle.speed}`);
    
    console.log(`Gear: ${electricAssistedCycle.gear}`);
    console.log('------End constructor function examples------');

})()