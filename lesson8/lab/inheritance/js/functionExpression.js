
(function () {
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
       
            let mountainBike = Object.create(prototype, {
                gear: {
                    value: 1,
                    writable: true
                },
                setGear: {
                    value: function (value) {
                        this.gear = value;
                    }
                }

            });
            return mountainBike;        

    }
    const start = function () {
        const bicyclePrototype = createBicyclePrototye();
        const mountainBikePrototype = createMountainBikeProtoype(bicyclePrototype)
        console.log('------Start function expressions examples------');
        console.log('bicycle>>>>>>');
      
        bicyclePrototype.highSpeed = true;
        bicyclePrototype.speedUp(100);
        console.log(`Has high speed: ${bicyclePrototype.highSpeed}, Speed: ${bicyclePrototype.speed}`);

        console.log('mountainBike>>>>>>');
      
        mountainBikePrototype.speedUp(200);
        mountainBikePrototype.setGear(4);
        console.log(`Speed: ${mountainBikePrototype.speed}`);
        console.log(`Gear: ${mountainBikePrototype.gear}`);
        console.log('------End function expressions examples------');

    }

    window.addEventListener('load',start);
    
})();


