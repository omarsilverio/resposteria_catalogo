/**
 * controlador de la vista
 */
// Este archivo se carga solo cuando se entra a /productos

app.registerController('catalogoController', function($scope) {
    $scope.postres = [
        { nombre_producto:'Delicious Pizza', tipo:'gelatinas', nombre_imagen:'f1.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'Delicious Burger', tipo:'pasteles', nombre_imagen:'f2.png', descripcion:''},
        { nombre_producto:'', tipo:'', nombre_imagen:'', descripcion:''},
        { nombre_producto:'', tipo:'', nombre_imagen:'', descripcion:''},
        { nombre_producto:'', tipo:'', nombre_imagen:'', descripcion:''},
        { nombre_producto:'', tipo:'', nombre_imagen:'', descripcion:''},
        { nombre_producto:'', tipo:'', nombre_imagen:'', descripcion:''},
        { nombre_producto:'', tipo:'', nombre_imagen:'', descripcion:''},
        { nombre_producto:'', tipo:'', nombre_imagen:'', descripcion:''}
    ];
});
