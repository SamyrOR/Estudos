let usuario = document.getElementById("username");
let senha = document.getElementById("pw");
let erroUser = document.getElementById("erroruser");
let erroPw = document.getElementById("errorpw");
let espacos = document.getElementById("spaces");
window.onload = () => {
    function spaceCheck(){
        let check = this.value
        if(check.indexOf(' ') >= 0){
            this.style.backgroundColor = "yellow"
            espacos.style.display = "inline"
        }else {
            this.style.backgroundColor = "white"
            espacos.style.display = "none";
        }
        erroPw.style.display = "none";
        erroUser.style.display = "none";
    }

    usuario.addEventListener("input",spaceCheck)
    senha.addEventListener("input", spaceCheck)
}
function validar (){
    if(usuario.value != "testuser"){
        errorDisplay(usuario);
    }
    if(senha.value != "password"){
        errorDisplay(senha);
    }
}
function errorDisplay (campo){
    campo.style.backgroundColor = "red";
    campo.style.fontWeight = "bold";
    campo.style.fontStyle = "italic";
    campo.style.borderColor = "red";
    if(campo == usuario){
        erroUser.style.display = "inline";
    }else {
        erroPw.style.display = "inline";
    }
}
function limpar (){
    usuario.style.backgroundColor = "white";
    erroUser.style.display = "none";
    senha.style.backgroundColor = "white";
    erroPw.style.display = "none";
    espacos.style.display= "none";
    usuario.value = '';
    senha.value = '';
    
}