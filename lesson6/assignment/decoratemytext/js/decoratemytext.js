window.onload = function () {
    const btnDec = document.getElementById('btnDec');
    const txtDec = document.getElementById('txtDec');
    const chkBling = document.getElementById('chkBling');
    btnDec.onclick = increaseTextSize;
    chkBling.onchange = styleText;
    function styleText(evt){  
        if(chkBling.checked)
        {
            txtDec.className='bling';
        }else{
            txtDec.className = '' ;
        }      
    }
    function increaseTextSize() {  
        setInterval(()=>{
            if (txtDec && txtDec.value.trim()!="") {
                const currentSize = parseInt(getComputedStyle(txtDec).fontSize);           
                txtDec.style.fontSize = currentSize + 2 + "px";
                console.log(txtDec.style.fontSize);
            }
        },500)     
     
    }
}
