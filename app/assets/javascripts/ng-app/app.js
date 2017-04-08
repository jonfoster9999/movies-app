angular 
	.module('app', ['ui.router', 'templates'])
	.config(['$stateProvider', '$urlRouterProvider', '$qProvider', '$httpProvider', '$locationProvider',
		function($stateProvider, $urlRouterProvider, $qProvider, $httpProvider, $locationProvider) {
			$locationProvider.hashPrefix('');
			$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
			$qProvider.errorOnUnhandledRejections(false);
			$stateProvider 
				.state('info', {
					url: '/info', 
					templateUrl: 'info.html',
					controller: 'InfoCtrl'
				})
				.state('info.privacy', {
					url: '/privacy',
					templateUrl: 'privacy.html',
					controller: 'PrivacyCtrl'
				})
				.state('info.contact', {
					url: '/contact',
					templateUrl: 'contact.html',
					controller: 'ContactCtrl'
				})

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
					url: '/movies/:id',
					templateUrl: 'movie.html',
					controller: 'MovieCtrl',
					params: { id: null },
					resolve: {
						movie: function($http, $stateParams) {
							return $http.get('/movies/' + $stateParams.id)
						}

					}
				})

				.state('cast', {
					url: '/movies/:id/cast',
					templateUrl: 'cast.html',
					controller: 'CastCtrl',
					resolve: {
						movie: function($http, $stateParams) {
							return $http.get('/movies/' + $stateParams.id)
						}

					}
				})

				.state('cast.actors', {
					url: '/:actor_id',
					templateUrl: 'actor.html',
					controller: 'ActorCtrl',
					resolve: {
						actor_id: function($stateParams) {
							return $stateParams.actor_id
						}
					}
				})

				.state('category', {
					url: '/movies/categories/:id',
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
