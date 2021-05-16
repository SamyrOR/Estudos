var Default = /** @class */ (function () {
    function Default() {
        this.metodo();
    }
    Default.prototype.metodo = function () {
        this.numero = 10;
        this.texto = "Este \u00E9 um alert simples em typescript " + this.numero;
        return alert(this.texto);
    };
    return Default;
}());
