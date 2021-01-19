window.onload = function () {
    const ddlAnimations = document.getElementById('ddlAnimations');
    const btnStop = document.getElementById('btnStop');
    const btnStart = document.getElementById('btnStart');
    let canvas = document.getElementById("txtAnimations");
 
    let currentImage, frames, animationHandle;
    let currentFrame = 0;
    reset();
    ddlAnimations.onchange = function (event) {
        let value = event.target.value;
        if (value) {
            //canvas.value = ANIMATIONS[value];
            currentImage = ANIMATIONS[value];
            canvas.value = currentImage;
            console.log(currentImage.split('====='));
            frames = currentImage.split('=====').map(x=>x.replace(/^\n$/g, ''));
            console.log(frames);
        }
    }
    btnStop.onclick = function () {
        stopAnimation();

    }
    function reset() {
        btnStop.disabled = true;
        btnStart.disabled = false;
        if (currentImage) {
            canvas.value = currentImage;
        }
    }
    btnStart.onclick = function (e) {
        animationHandle = setInterval(() => {
            startAnimation();
        }, 1000);
        this.disabled = true;
        btnStop.disabled = false;
    }
    function startAnimation() {
        if (currentFrame >= frames.length) {
            currentFrame = 0
        }
        canvas.value = frames[currentFrame++];
    }
    function stopAnimation() {
        clearInterval(animationHandle);
        reset();
    }
}