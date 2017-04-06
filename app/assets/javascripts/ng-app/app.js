angular 
	.module('app', ['ui.router', 'templates'])
	.config(['$stateProvider', '$urlRouterProvider',
		function($stateProvider, $urlRouterProvider) {
			$stateProvider 
				.state('movies', {
					url: '/movies',
					templateUrl: 'movies.html',
					controller: 'MainCtrl',
					resolve: {
						movieObject: function($http){
							return $http.get('/movies')
						}
					}
				})
			$urlRouterProvider.otherwise('movies');

		}]);
