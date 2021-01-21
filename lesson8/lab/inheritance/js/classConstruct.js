///to avoid name collision wrapped in iffe
(function () {
    "use strict";
    class Bicycle {
        speed = 0;
        applyBrake(val) {
            this.speed -= val
            console.log(`applying brake(${val})....`)
        }
        speedUp(val) {
            this.speed += val
            console.log(`increasing speed(${val})....`)
        }

    }
    class MountainBike extends Bicycle {
        gear = 1;
        setGear(val) {
            this.gear = val;
            console.log('changing gear....')
        }
    }


    console.log('------Start ES6 class construct examples------');
    console.log('bicycle>>>>>>');
    let cityCycle = new Bicycle();
    cityCycle.speedUp(50);
    console.log(`Speed: ${cityCycle.speed}`);
    cityCycle.applyBrake(10);

    console.log('mountainBike>>>>>>');
    let electricAssistedCycle = new MountainBike();
    electricAssistedCycle.speedUp(200);
    electricAssistedCycle.setGear(4);
    console.log(`Speed: ${electricAssistedCycle.speed}`);
    console.log(`Gear: ${electricAssistedCycle.gear}`);
    console.log('------End function expressions examples------');
})();
