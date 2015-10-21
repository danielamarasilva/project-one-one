
var FinanciamentoController = {

    init: function () {
        FinanciamentoController.setForm();
    },

    setForm: function () {
        var form = document.querySelector('form');
        form.addEventListener('submit', function (event) {
            FinanciamentoController.sendForm();
            event.preventDefault();
        });
    },

    sendForm: function () {
        var dadosForm = $("form").serialize();

        $.ajax({
            url: '',
            data: dadosForm,

            success: function (result) {
                FinanciamentoController.showResult(result, 1);
            },
            error: function () {
                FinanciamentoController.showResult(result, 2);
            }
        });
    },

    showResult: function (result, flag) {
        if(flag === 1)
        {
            alert("Sucesso!!");
        }
        else
            alert("Errroooo!!");
    }
}

//inicialização
FinanciamentoController.init();