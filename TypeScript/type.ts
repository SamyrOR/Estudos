class Default {
    texto: string;  // Texto
    numero: number;    //Numero
    qualquer: any;  //Qualquer
    boleano: boolean; // true | false
    array: any[]; //array tipado

    constructor(){
        this.metodo();
    }

    metodo(){
        this.numero = 10;
        this.texto = `Este é um alert simples em typescript ${this.numero}`;
        return alert(this.texto); 
    }
}