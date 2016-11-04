/* global micarrito */

micarrito = new Carrito("10/02/2016", "Peter Parker");

function f1()
{
    id = prompt("dime el id");
    nombre = prompt("Dime el nombre");
    descripcion = prompt("Dime la descripcion");
    precio = prompt("Dime el precio");

    articulo = new Articulo(id, nombre, descripcion, precio);

    micarrito.anyade(articulo);
}

function f2() {
    micarrito.mostrar();
}
function f3() {
    alert(micarrito);
    alert(JSON.stringify(micarrito));
}

