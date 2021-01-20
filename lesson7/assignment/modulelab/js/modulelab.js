(function () {
    "use strict";
    var accountInfoList = [];
    window.onload = function () {
        const btnCreateAcnt = document.getElementById('btnCreateAcnt');
        const txtAccountName = document.getElementById('txtAccountName');
        const txtDeposit = document.getElementById('txtDeposit');
        const txtAccounts = document.getElementById('txtAccounts');
        txtDeposit.onkeypress = isNumberKey;
        btnCreateAcnt.onclick = () => {
            txtAccounts.value = "";
            if (txtAccountName.value !== "" && txtDeposit.value !== "") {
                let newAccount = account.createAccount(txtAccountName.value, txtDeposit.value);
                if (!hasDuplicateAccount(newAccount)) {
                    accountInfoList.push(newAccount);
                }
                for (let account of accountInfoList) {
                    txtAccounts.value += `Account Name:${account.name}  Balance:${account.balance}\n`;

                }
            }
        };
    }
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : evt.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
    function hasDuplicateAccount(newAccount) {
        for (let acc of accountInfoList) {
            if (acc.name === newAccount.name) return true;
        }
        return false;
    }
    const account = (function () {
        var _name;
        var _deposit;

        return {
            createAccount: function createAccount(name, deposit) {
                _deposit = deposit;
                _name = name;
                return { name: _name, balance: _deposit }
            }


        };
    })();

})();