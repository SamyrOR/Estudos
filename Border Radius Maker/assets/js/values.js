let tL = 0;
let tR = 0;
let bR = 0;
let bL = 0;
let allSide = 0;
    function gElement(getElement){
        topLeft = getElement("tl");
        topRight = getElement("tr");
        bottomRight = getElement("br");
        bottomLeft = getElement("bl");
        all = getElement("all")

    };
    function aEvent(addEvent){
        addEvent(topLeft);
        addEvent(topRight);
        addEvent(bottomRight);
        addEvent(bottomLeft);
        addEvent(all);
    };
window.onload = () => {
    function getElement (id) {
        let element  = document.getElementById(id);
        return element
    };
    function getInputValue (){
        let inputValue = this.value;
        switch (this.id){
            case "tl":
                tL = inputValue
                break;
            case "tr":
                tR = inputValue
                break;
            case "br":
                bR = inputValue
                break;
            case "bl":
                bL = inputValue;
                break;
            case "all":
                allSide = inputValue;
                break;

        };
    };
    function addEvent(side){
        side.addEventListener("input", getInputValue);
    };
    gElement(getElement);
    aEvent(addEvent);
};
const span = document.getElementById("border");
let textTl = '';
let textTr = '';
let textBr = '';
let textBl = '';
let textArea = document.getElementById("textarea");
function change (side){
    if (side == allSide){
        span.style.borderRadius = `${side}px`;
    }if (side == tL){
        span.style.borderTopLeftRadius = `${side}px`;
        textTl = `border-top-left-radius: ${side}px;`;
    }if (side == tR){
        span.style.borderTopRightRadius = `${side}px`;
        textTr = `border-top-right-radius: ${side}px;`;
    }if (side == bR){
        span.style.borderBottomRightRadius = `${side}px`;
        textBr = `border-bottom-right-radius: ${side}px;`
    }if (side == bL){
        span.style.borderBottomLeftRadius = `${side}px`;
        textBl = `border-bottom-left-radius: ${side}px;`;
    }
    textArea.value = `${textTl}
${textTr}
${textBr}
${textBl}`
};  
function textCopy (){
    textArea.select();
    document.execCommand("copy");
};