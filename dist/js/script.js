(function() {
    /**
     * Operation plus
     * @type {number}
     */
    function plusOperation() {
        var randomResult, numberFirst, numberSecond;
        randomResult = function() {
            var min = 50,
                max = 100;
            var a = min - 0.5 + Math.random() * (max - min + 1);
            a = Math.round(a);
            return a;
        }();
        numberFirst = function() {
            var min = 1,
                max = 49;
            var a = min - 0.5 + Math.random() * (max - min + 1);
            a = Math.round(a);
            return a;
        }();
        numberSecond = randomResult - numberFirst;
        window.randomResult = randomResult;
        window.numberFirst = numberFirst;
        window.numberSecond = numberSecond;
        window.Operation = "+";
        // alert (numberFirst +" + "+numberSecond+" = "+randomResult);
    }


    /**
     * Operation minus
     * @type {number}
     */
    function minusOperation() {
        var randomResult, numberFirst, numberSecond;
        randomResult = function() {
            var min = 1,
                max = 100;
            var a = min - 0.5 + Math.random() * (max - min + 1);
            a = Math.round(a);
            return a;
        }();
        numberFirst = function() {
            var min = 1,
                max = 49;
            var a = min - 0.5 + Math.random() * (max - min + 1);
            a = Math.round(a);
            return a;
        }();
        numberSecond = randomResult + numberFirst;
        window.randomResult = randomResult;
        window.numberFirst = numberFirst;
        window.numberSecond = numberSecond;
        window.Operation = "-";
        // alert (numberSecond+" - "+numberFirst+" = "+randomResult);
    }


    /**
     * Operation multiplication
     * @type {number}
     * */
    function multiplicationOperation() {
        var randomResult, numberFirst, numberSecond;
        numberFirst = function() {
            var min = 1,
                max = 10;
            var a = min - 0.5 + Math.random() * (max - min + 1);
            a = Math.round(a);
            return a;
        }();
        numberSecond = function() {
            var min = 1,
                max = 10;
            var a = min - 0.5 + Math.random() * (max - min + 1);
            a = Math.round(a);
            return a;
        }();
        randomResult = numberFirst * numberSecond;
        window.randomResult = randomResult;
        window.numberFirst = numberFirst;
        window.numberSecond = numberSecond;
        window.Operation = "*";
        // alert (numberFirst+" * "+numberSecond+" = "+randomResult);
    }


    /**
     * Operation division
     * @type {number}
     */
    function divisionOperation() {
        var randomResult, numberFirst, numberSecond;
        randomResult = function() {
            var min = 1,
                max = 30;
            var a = min - 0.5 + Math.random() * (max - min + 1);
            a = Math.round(a);
            if (a % 2 == 0) {
                return a;
            } else {
                return a + 1;
            }
        }();
        numberFirst = function() {
            var min = 1,
                max = 10;
            var a = min - 0.5 + Math.random() * (max - min + 1);
            a = Math.round(a);
            return a;
        }();
        numberSecond = randomResult * numberFirst;
        window.randomResult = randomResult;
        window.numberFirst = numberFirst;
        window.numberSecond = numberSecond;
        window.Operation = "/";
        // alert (numberSecond+" / "+numberFirst+" = "+randomResult);
    }


    /**
     * Click button Start test
     * @type {Number}
     */
    var startTest = document.getElementById("startTest");
    startTest.onclick = function() {
        var count = 0;
        count++;
        if (count > 0) {
            startTest.value = 'Продолжить';
        }
        var indSelected = document.getElementById("selectedOperation").selectedIndex;
        if (indSelected == 0) {
            plusOperation();
            htmlNumberFirst.innerHTML = numberFirst;
            htmlNumberSecond.innerHTML = numberSecond;
        }
        if (indSelected == 1) {
            minusOperation();
            htmlNumberFirst.innerHTML = numberSecond;
            htmlNumberSecond.innerHTML = numberFirst;
        }
        if (indSelected == 2) {
            multiplicationOperation();
            htmlNumberFirst.innerHTML = numberFirst;
            htmlNumberSecond.innerHTML = numberSecond;
        }
        if (indSelected == 3) {
            divisionOperation();
            htmlNumberFirst.innerHTML = numberSecond;
            htmlNumberSecond.innerHTML = numberFirst;
        }
        htmlOperation.innerHTML = Operation;
        // htmlRandomResult.innerHTML = randomResult;
        htmLequally.innerHTML = "=";
        buttomOk.disabled = false;
        startTest.disabled = true;
        document.getElementById("resultInner").value = "";
    }


    /**
    HTML
     */
    var buttomOk = document.getElementById("ok");
    var countCorrectly = document.getElementById("Correctly");
    var countWrong = document.getElementById("Wrong");
    var htmlOperation = document.getElementById("operation");
    var htmlNumberFirst = document.getElementById("numFirst");
    var htmlNumberSecond = document.getElementById("numSecond");
    // var htmlRandomResult = document.getElementById("resOperation");
    var htmLequally = document.getElementById("equally");


    /**
     * Click button Ok
     * @type {Number}
     */
    var correctly = 0;
    var wrong = 0;
    buttomOk.disabled = true;
    buttomOk.onclick = function() {
        var valueResultInner = document.getElementById("resultInner").value;
        var resultNumber = Number(valueResultInner);
        var placeholderInput = document.getElementById("resultInner");
        if (resultNumber > 0 && resultNumber <= 100 && resultNumber % 1 == 0) {
            var result = document.getElementById("resultInner").value;
            if (result == randomResult) {
                correctly++;
                buttomOk.disabled = true; //кнопка не активная
                countCorrectly.innerHTML = "Правильно: " + correctly;
                placeholderInput.placeholder = "Введите ответ";
            } else {
                wrong++;
                buttomOk.disabled = true; //кнопка не активная
                countWrong.innerHTML = "Ошибок: " + wrong;
                placeholderInput.placeholder = "Введите ответ";
            }
        } else {
            placeholderInput.placeholder = "Введите целое значение от 1 до 100";
        }
        if (resultNumber > 0 && resultNumber <= 100) {
            startTest.disabled = false;
        }
        document.getElementById("resultInner").value = "";
    };

}());
