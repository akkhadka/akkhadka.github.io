
const bicycleModule = (function () {
    "use strict";
    let createBicyclePrototye = function () {
        return {
            speed: 0,
            applyBrake: function (value) {
                this.speed -= value;
                console.log(`applying brake(${value})....`)
            },
            speedUp: function (value) {
                this.speed += value;
                console.log(`increasing speed(${value})....`)
            },
        }

    };

    const createMountainBikeProtoype = function (prototype) {

        let mountainBike = Object.create(prototype,{
            gear :{
                value:1,
                writable: true
            },
            setGear: {
                value: function(value){
                    this.gear = value;
                }
            }
            
        });
      
        return mountainBike;

    }

    const start =   {
            bicyclePrototype: createBicyclePrototye,
            mountainBikePrototype: function () { return createMountainBikeProtoype(this.bicyclePrototype() )}

        }
   
    return start;
})();
///to avoid variable name collision wrapped in iffe
(function () {
    "use strict";
    console.log('------Start function expressions examples------');
    console.log('bicycle>>>>>>');
    let cityCycle = Object.create(bicycleModule.bicyclePrototype());
    cityCycle.highSpeed = true;
    cityCycle.speedUp(100);
    console.log(`Has high speed: ${cityCycle.highSpeed}, Speed: ${cityCycle.speed}`);

    console.log('mountainBike>>>>>>');
    let electricAssistedCycle = Object.create(bicycleModule.mountainBikePrototype());

    electricAssistedCycle.speedUp(200);
    electricAssistedCycle.setGear(4);
    console.log(`Speed: ${electricAssistedCycle.speed}`);
    console.log(`Gear: ${electricAssistedCycle.gear}`);
    console.log('------End function expressions examples------');
})();

