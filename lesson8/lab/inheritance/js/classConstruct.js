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

    class start{
        
        constructor(){
            this.bike = new Bicycle();
            this.mountainBike = new MountainBike();
            this.displayResult();
        }
        displayResult(){
            console.log('------Start ES6 class construct examples------');
            console.log('bicycle>>>>>>');          
            this.bike.speedUp(50);
            console.log(`Speed: ${this.bike.speed}`);
            this.bike.applyBrake(10);        
            console.log('mountainBike>>>>>>');            
            this.mountainBike.speedUp(200);
            this.mountainBike.setGear(4);
            console.log(`Speed: ${this.mountainBike.speed}`);
            console.log(`Gear: ${this.mountainBike.gear}`);
            console.log('------End ES6 class construct examples------');
        }
    }

    window.addEventListener('load',()=>new start());
     
})();
