import Cocoa

// struct -> copia por valor
struct nuevoType {
    var name:String
}

let tipoNuevo = nuevoType(name: "nombresito mochon")
print(tipoNuevo);

//Func con tipo de retorno
func tipoRetorno (name: String) -> String {
    //tiene que regresar algo tipo string
    return "HUEVOS"
}

func noRegresaÑaña (name: String) {
    print("Huevos x2")
}

tipoRetorno(name: "holi")
noRegresaÑaña(name: "holo")

// Func que regresa una tupla
func regresaUnaTupla() -> (a: Int, b: Int) {
    return (1,3) //regresando una tupla
}

var seraTupla = regresaUnaTupla()

// Como se definen las tuplas
var tupla = ("valor1", "valor2") // key, value -> como no tiene key se le asigna un indice de 0 en adelante.

// In-Out parameters
// Dentro de la función se modifica el valor de a, esto porque se pasa por referencia. El inout es para que no marque error de runtime en caso de que el compilador piense que es un error la modificacion del parametro.
// Porque se pasa por referencia por lo que modifica el original y no se hace una modificacion a una copia.
// Si pasa por referncia sin el inout se sigue cambiando el valor por el paso por referencia.
func sumar(a:inout Int, b:Int) -> Int {
    a = a + 2
    return a+b
}
var n1 = 1
var n2 = 5
var sumando = sumar(a: &n1, b: n2) // se pasa n1 por referncia (&), n2 se pasa por valor
print(n1)

