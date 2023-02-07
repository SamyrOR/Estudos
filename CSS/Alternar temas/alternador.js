function alternador () {
    let tema = document.querySelector(".dinamico").getAttribute('href');
    switch (tema) {
        case tema = 'tema.css':
            document.querySelector(".dinamico").setAttribute('href','tema2.css')
            break;
        case tema ='tema2.css':
            document.querySelector(".dinamico").setAttribute('href','tema.css')
            break;
    }
}

//Injetando HTML
const paragrafo = document.createElement("h1");
const texto2 = document.createTextNode("Texto qualquer em uma tag h2");
paragrafo.appendChild(texto2);
document.querySelector(".container").appendChild(paragrafo);
paragrafo.classList.add("bg-color")