window.onload = function () {
    const btnGo = document.getElementById('go');
    btnGo.onclick = startSecCountDown;
    const txtSec = document.getElementById('sec');
    const container = document.getElementById('container');
    function startSecCountDown() {
        container.className = '';
        let initSec = Number(txtSec.value);
        if (initSec > 0) {
            const intervalSec = setInterval(() => {
                if (initSec === 0) {
                    clearInterval(intervalSec);
                    container.className = 'awesome';
                }
                else {
                    initSec -= 1;
                    txtSec.value = initSec;
                }
            }, 1000)
        }
    }
}
