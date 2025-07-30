/**
 * controlador de la vista
 */
// Este archivo se carga solo cuando se entra a /productos

app.registerController('catalogoController', function($scope) {
    $scope.filtros = [
        {descripcion: 'pasteles'},
        {descripcion: 'gelatinas'},
        {descripcion: 'panes'},
        {descripcion: 'postres'}
    ];

    $scope.postres = [
        { nombre_producto:'Delicious Pizza', tipo:'gelatinas', nombre_imagen:'f1.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'Delicious Burger', tipo:'pasteles', nombre_imagen:'f2.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'Delicious Pizza', tipo:'gelatinas', nombre_imagen:'f3.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'Delicious Pasta', tipo:'panes', nombre_imagen:'f4.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'French Fries', tipo:'postres', nombre_imagen:'f5.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'Delicious Pizza', tipo:'gelatinas', nombre_imagen:'f6.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'Tasty Burger', tipo:'pasteles', nombre_imagen:'f7.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'Tasty Burger', tipo:'pasteles', nombre_imagen:'f8.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'},
        { nombre_producto:'Delicious Pasta', tipo:'panes', nombre_imagen:'f9.png', descripcion:'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque'}
    ];
});
