const app = angular.module('reposteria', ['ngRoute']);

app.run(['$rootScope','$location', function($rootScope,$location) {
  $rootScope.$on('$routeChangeStart', function() {
    document.getElementById('loader').style.display = 'block';
  });

  $rootScope.$on('$routeChangeSuccess', function() {
    document.getElementById('loader').style.display = 'none';
    $rootScope.currentPath = $location.path();
  });

  $rootScope.$on('$routeChangeError', function() {
    document.getElementById('loader').style.display = 'none';
    alert("Hubo un error al cargar la vista.");
  });
  
}]);


app.config(['$controllerProvider', '$routeProvider','$locationProvider', function($controllerProvider, $routeProvider,$locationProvider) {
  $locationProvider.html5Mode(true);
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
    }).when('/contacto', {
      templateUrl: 'src/views/contacto.php',
      controller: 'contactoController',
      resolve: {
        loadController: function($q, $rootScope) {
          const deferred = $q.defer();

          // ✅ Carga el script dinámicamente
          const script = document.createElement('script');
          script.src = 'src/resources/js/controllers/controllerContacto.js';
          script.onload = function() {
            $rootScope.$apply(() => deferred.resolve());
          };
          document.head.appendChild(script);

          return deferred.promise;
        }
      }
    }).otherwise({ redirectTo: '/404' });

}]);