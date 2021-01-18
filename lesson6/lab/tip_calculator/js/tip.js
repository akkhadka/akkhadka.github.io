window.onload = function () {
    let totalElem = document.getElementById('total');
    let subtotalElem = document.getElementById('subtotal');
    let tipElem = document.getElementById('tip');
    let btnCalc = document.getElementById('btnCalc');
    btnCalc.onclick = function () {
        const subtotal = Number(subtotalElem.value);
        const tipPercent = Number(tipElem.value);
        let tip = calcTip(subtotal, tipPercent);
        let total = subtotal + tip;
        totalElem.innerHTML = '$' + total;
    }

}

function calcTip(subtotal = 0, tip = 0) {
    const tipCalc = tip / 100 * subtotal;
    return tipCalc;
}