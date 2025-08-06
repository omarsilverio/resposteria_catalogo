const app = angular.module('reposteria', ['ngRoute']);
app.directive('niceSelect', function($timeout) {
    return {
        restrict: 'A',
        link: function(scope, element) {
            // Espera a que Angular renderice completamente
            $timeout(function() {
                $(element).niceSelect();
            });
        }
    };
});

app.directive('isotopeGrid', function($timeout) {
    return {
        restrict: 'A',
        link: function(scope, element) {
            $timeout(function() {
                element.isotope({
                    itemSelector: '.all',
                    percentPosition: false,
                    masonry: {
                        columnWidth: '.all'
                    }
                });

                scope.$on('isotope:filter', function(event, filter) {
                    element.isotope({ filter: filter });
                });
            });
        }
    };
});

app.directive('isotopeFilter', function() {
    return {
        restrict: 'A',
        link: function(scope, element) {
            element.on('click', 'li', function() {
                element.find('li').removeClass('active');
                angular.element(this).addClass('active');

                var filter = angular.element(this).attr('data-filter');
                scope.$broadcast('isotope:filter', filter);
            });
        }
    };
});


app.directive('owlCarousel', function() {
    return {
        restrict: 'A',
        link: function(scope, element) {
            scope.$evalAsync(function() {
                $(element).owlCarousel({
                    loop: true,
                    margin: 0,
                    dots: false,
                    nav: true,
                    autoplay: true,
                    autoplayHoverPause: true,
                    navText: [
                        '<i class="fa fa-angle-left" aria-hidden="true"></i>',
                        '<i class="fa fa-angle-right" aria-hidden="true"></i>'
                    ],
                    responsive: {
                        0: {
                            items: 1
                        },
                        768: {
                            items: 2
                        },
                        1000: {
                            items: 2
                        }
                    }
                });
            });
        }
    };
});


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
      templateUrl: 'src/views/home.php',
      controller: 'homeController',
      resolve: {
        loadController: function($q, $rootScope) {
          const deferred = $q.defer();

          // ✅ Carga el script dinámicamente
          const script = document.createElement('script');
          script.src = 'src/resources/js/controllers/controllerHome.js';
          script.onload = function() {
            $rootScope.$apply(() => deferred.resolve());
          };
          document.head.appendChild(script);

          return deferred.promise;
        }
      }
    }).when('/catalogo', {
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