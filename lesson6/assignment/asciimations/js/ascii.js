(function(){
"use strict";
window.onload = function () {
    const ddlAnimations = document.getElementById('ddlAnimations');
    const btnStop = document.getElementById('btnStop');
    const btnStart = document.getElementById('btnStart');
    const ddlSize = document.getElementById('ddlSize');
    const chkTurbo = document.getElementById('chkTurbo');
    let canvas = document.getElementById("txtAnimations");

    let currentImage, frames, animationHandle;
    let currentFrame = 0;
    let speed = 250;
    init();

    chkTurbo.onchange = function (e) {
        const isTurboSet = e.target.checked;
        if (isTurboSet) speed = 50;
        else speed = 250;
        resetAnimation();
        if (hasAnimationStarted()) {
            startAnimation();
        }
    }
    ddlSize.onchange = (event) => {
        let size = event.target.value;
        if (size) {
            canvas.style.fontSize = size;
        }

    };
    ddlAnimations.onchange = (event) => {
        let value = event.target.value;
        if (value) {
            //canvas.value = ANIMATIONS[value];
            currentImage = ANIMATIONS[value];
            canvas.value = currentImage;
            console.log(currentImage.split('====='));
            frames = currentImage.split('=====').map(x => x.replace(/^\n/g, ''));
            console.log(frames);
        }
    };
    btnStop.onclick = function () {
        stopAnimation();

    };
    function init() {
        btnStop.disabled = true;
        btnStart.disabled = false;
        if (currentImage) {
            canvas.value = currentImage;
        }
        ddlSize.value  = "12pt";
        ddlAnimations.disabled = false;
    }
    function hasAnimationStarted() {
        return btnStart.disabled
    }
    btnStart.onclick = function () {
        startAnimation();
        this.disabled = true;
        btnStop.disabled = false;
        ddlAnimations.disabled = true;
    }
    function startAnimation() {
        animationHandle = setInterval(() => {
            changeFrame();
        }, speed);
    }
    function changeFrame() {
        if (currentFrame >= frames.length) {
            currentFrame = 0
        }
        canvas.value = frames[currentFrame++];
    }
    function resetAnimation() {
        clearInterval(animationHandle);
    }
    function stopAnimation() {
        resetAnimation();
        init();
    }
}
})();
