window.onload = function() {
    let loader = document.getElementById("loader");
    let isError = document.getElementById("error-box");
    let formWrapper = document.getElementById("kc-form-wrapper")
    let form = document.getElementById("kc-form-login");
    let formInput = document.querySelectorAll('.kc-form-input');
    let buttonSubmit = document.getElementById("kc-login");
    let buttonBox = document.getElementById("kc-form-button-wrapper");

    function addErrorClasses() {
        if (isError) {
            document.body.classList.add("form-has-error");
            formWrapper.classList.add("form-has-error");
            buttonSubmit.value = "Войти";

            for (let input of formInput) {
                input.classList.add("input-has-error");
            }
        }
    }

    function removeErrorClasses() {
        document.body.classList.remove("form-has-error");
        formWrapper.classList.remove("form-has-error");

        for (let input of formInput) {
            input.classList.remove("input-has-error");
        }
    }

    function createLoaderItems(targetEl) {
        const itemFirst = document.createElement("div");
        itemFirst.classList.add("loader-item--first");

        const itemSecond = document.createElement("div");
        itemSecond.classList.add("loader-item--second");

        const itemThird = document.createElement("div");
        itemThird.classList.add("loader-item--third");

        itemFirst.classList.add("loader-item");
        itemSecond.classList.add("loader-item");
        itemThird.classList.add("loader-item");

        targetEl.appendChild(itemFirst);
        targetEl.appendChild(itemSecond);
        targetEl.appendChild(itemThird);
    }

    function createLoader(targetEl) {
        const loader = document.createElement("div");
        loader.id = "loader";
        createLoaderItems(loader)
        targetEl.appendChild(loader);
    }

    function removeLoader() {
        if (loader && formWrapper) {
            loader.remove();
            removeErrorClasses();
        }
    }

    (function errorEffect() {
        addErrorClasses();
    })()

    function submitForm() {
        removeLoader();
        buttonSubmit.value = "";
        createLoader(buttonBox);
        form.submit();
    }

    (function submitHandlerWithLoader() {
        if (buttonSubmit && form && formWrapper && buttonBox) {
            buttonSubmit.addEventListener("click", function() {
                submitForm();
            });
            document.addEventListener('keydown', function(e){
                if (e.key === 'Enter') {
                    submitForm();
                }
            });
        }
    })();
};