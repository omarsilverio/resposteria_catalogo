const app = angular.module('reposteria', ['ngRoute']);

app.run(['$rootScope', function($rootScope) {
  $rootScope.$on('$routeChangeStart', function() {
    document.getElementById('loader').style.display = 'block';
  });

  $rootScope.$on('$routeChangeSuccess', function() {
    document.getElementById('loader').style.display = 'none';
  });

  $rootScope.$on('$routeChangeError', function() {
    document.getElementById('loader').style.display = 'none';
    alert("Hubo un error al cargar la vista.");
  });
}]);

app.config(['$controllerProvider', '$routeProvider', function($controllerProvider, $routeProvider) {

  app.registerController = $controllerProvider.register;

  $routeProvider.when('/', {
      templateUrl: 'src/views/catalogo.php',
      controller: 'catalogoController',
      resolve: {
        loadController: function($q, $rootScope) {
          const deferred = $q.defer();

          // ✅ Carga el script dinámicamente
          const script = document.createElement('script');
          script.src = 'src/resources/js/controllers/controllerCatalogo.js';
          script.onload = function() {
            $rootScope.$apply(() => deferred.resolve());
          };
          document.head.appendChild(script);

          return deferred.promise;
        }
      }
    })
    .otherwise({ redirectTo: '/404' });

}]);