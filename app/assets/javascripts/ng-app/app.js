angular 
	.module('app', ['ui.router', 'templates'])
	.config(['$stateProvider', '$urlRouterProvider', '$qProvider', '$httpProvider',
		function($stateProvider, $urlRouterProvider, $qProvider, $httpProvider) {
			$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
			$qProvider.errorOnUnhandledRejections(false);
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
				.state('category', {
					url: '/categories/:id/movies',
					templateUrl: 'category.html',
					controller: 'CategoryCtrl',
					resolve: {
						movies: function($http, $stateParams) {
							return $http.get('/categories/' + $stateParams.id + "/movies")
						}
					}
				})
			$urlRouterProvider.otherwise('movies');

		}])
		.run(function($rootScope){
			$rootScope.$on('$stateChangeSuccess', function() {
   			document.body.scrollTop = document.documentElement.scrollTop = 0;
		});
	});
