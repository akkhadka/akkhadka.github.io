(function(){
    "use strict";
window.onload = function () {
    const btnGo = document.getElementById('go');
    btnGo.onclick = startAllCountDown;
    const txtSec = document.getElementById('sec');
    const txtmin = document.getElementById('min');
    const container = document.getElementById('container');
    function startAllCountDown() {
        startSecCountDown();
        //min
        startCountDown(txtmin, 'veryawesome', 60000)
        //sec

    }
    function startSecCountDown() {
        container.className = '';
        let initSec = Number(txtSec.value);
        if (initSec > 0) {
            const intervalSec = setInterval(() => {
                if (initSec === 0) {
                    clearInterval(intervalSec);
                    container.className = 'awesome';

                    startMinCountDown();
                }
                else {
                    initSec -= 1;
                    txtSec.value = initSec;
                }
            }, 1000)
        } else {
            startMinCountDown()
        }
    }
    function startMinCountDown() {
        let initMin = Number(txtmin.value);
        if (initMin > 0) {
            initMin -= 1;
            txtmin.value = initMin;
            txtSec.value = 60;
            startSecCountDown();
        }
    }
}
})()
