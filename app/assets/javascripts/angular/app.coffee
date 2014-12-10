angular.module('Depilate', ['ui.router',
                            'HomeCtrl',
                            'templates'])
  .config(['$stateProvider', '$urlRouterProvider', '$locationProvider', '$httpProvider', ($stateProvider, $urlRouterProvider, $locationProvider, $httpProvider) ->
    $stateProvider
      .state 'home', {
        url: '/'
        templateUrl: 'home.html'
        controller: 'HomeCtrl'
      }

    $urlRouterProvider.otherwise('/')
    $locationProvider.html5Mode({
      enabled: true
      requireBase: false
    })

    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])
