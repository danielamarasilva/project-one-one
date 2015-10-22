var FinanciamentoController = {

    init: function () {
        FinanciamentoController.setForm();
    },

    setForm: function () {
        var form = document.querySelector('form');
        form.addEventListener('submit', function (event) {
            var validationSelecties = FinanciamentoController.validationSelecties(form);
            var validationNumber = FinanciamentoController.validationNumbers(form);

            if (validationSelecties[0]) {
                FinanciamentoController.sendForm();
            }
            event.preventDefault();
        });
    },

    validationSelecties: function (form) {
        var validacao = {
            numParcelas: form.numParcelas.value,
            tipoDoc: form.TipoDoc.value,
            ufNasc: form.ufNasc.value,
            estadoCivil: form.estadoCivil.value,
            escolaridade: form.escolaridade.value
        };

        if (validacao.numParcelas == 0) {
            return [false, "Selecione um valor válido para o campo Número de parcelas!"];
        } else if (validacao.tipoDoc == 0) {
            return [false, "Selecione um valor válido  para o campo Tipo de documento!"];
        } else if (validacao.ufNasc == 0) {
            return [false, "Selecione um valor válido para o campo UF de nascimento!"];
        } else if (validacao.estadoCivil == 0) {
            return [false, "Selecione um valor válido para o campo Estado civil!"];
        } else if (validacao.escolaridade == 0) {
            return [false, "Selecione um valor válido para o campo Escolaridade!"];
        } else {
            return [true, ""];
        }
    },

    validationNumbers: function (form) {
        var validacao = {
            numParcelas: form.numParcelas.value,
            tipoDoc: form.TipoDoc.value,
            ufNasc: form.ufNasc.value,
            estadoCivil: form.estadoCivil.value,
            escolaridade: form.escolaridade.value
        };
    },

    sendForm: function () {
        var dadosForm = $("form").serialize();

        $.ajax({
            url: '../financing/sendContact.php',
            data: dadosForm,
            method: 'POST',

            success: function (result) {
                FinanciamentoController.showResult(result, 1);
            },
            error: function () {
                FinanciamentoController.showResult(result, 2);
            }
        });
    },

    showResult: function (result, flag) {
        if (flag === 1) {
            alert("Sucesso!!");
        } else
            alert("Errroooo!!");
    }
}

//inicialização
FinanciamentoController.init();