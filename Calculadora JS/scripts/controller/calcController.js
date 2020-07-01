class calcController {
    constructor () {
        this._buttons = document.querySelectorAll('.btn'); //Caputura os elementos que correspondem aos botões
        this._display = document.querySelector('#display'); //Captura o elemento que corresponde ao display
        this.init(); //inicia os metodos
    }
    init () {
        this.captureButton();
        this.initKeyBoard();
    }
    //Caputra o texto de cada botão
    captureButton () {
        this._buttons.forEach(btn => {
            btn.addEventListener('click', e => {
                let textBtn = btn.textContent
                this.setToDisplay(textBtn)
            })
        })
    }
    //Captura o texto de cada tecla apertada
    initKeyBoard () {
        document.addEventListener('keyup', e => {
            
            switch (e.key){
                case '1':
                    this.setToDisplay(e.key)
                    console.log('apertei');
            }
        })
    }
    //Envia o valor do botão para a tela
    setToDisplay (value) {
        if(isNaN(value)){
            return
        } else {
            this._display.textContent = value;
        }
    }
    
    get display () {
        return this._display.textContent;
    }
    set display (value) {
        this._display.textContent = value;
    }
}       