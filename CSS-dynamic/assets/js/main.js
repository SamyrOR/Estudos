let usuario = document.querySelector(".username");
let senha = document.querySelector(".pw");
let erroUser = document.querySelector(".erroruser");
let erroPw = document.querySelector(".errorpw");
let espacos = document.querySelector(".spaces");
window.onload = () => {
    function spaceCheck(){
        let check = this.value
        if(check.indexOf(' ') >= 0){
            this.classList.add('space-error')
            espacos.classList.add('d-inline')
        }else {
            this.classList.remove('space-error')
            espacos.classList.remove('d-inline')
        }
        removeDisplay(erroUser, erroPw)
        this.classList.remove('error')
        
    }
    usuario.addEventListener("input",spaceCheck)
    senha.addEventListener("input",spaceCheck)
}

function validar (){
    if(usuario.value != "testuser"){
        errorDisplay(usuario, erroUser);
    }
    if(senha.value != "password"){
        errorDisplay(senha, erroPw);
    }
}
function errorDisplay (campo, campo2){
    campo.classList.add('error')
    campo2.classList.add('d-inline')
}
function limpar (){
    removeClass(usuario, senha)
    removeDisplay(erroUser, erroPw, espacos )
    usuario.value = '';
    senha.value = '';
}

function removeClass (...campos){
    for ( let campo of campos) {
        campo.classList.remove('error')
    }
}
function removeDisplay (...campos) {
    for ( let campo of campos) {
        campo.classList.remove('d-inline')
    }
}
