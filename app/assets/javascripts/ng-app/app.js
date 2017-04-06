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
				.state('movie', {
					url: '/movie/:id',
					templateUrl: 'movie.html',
					controller: 'MovieCtrl',
					params: { id: null },
					resolve: {
						movie: function($http, $stateParams) {
							return $http.get('/movies/' + $stateParams.id)
						}

					}
				})
			$urlRouterProvider.otherwise('movies');

		}]);
