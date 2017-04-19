angular 
	.module('app', ['ui.router', 'templates'])
	.config(['$stateProvider', '$urlRouterProvider', '$qProvider', '$httpProvider', '$locationProvider',
		function($stateProvider, $urlRouterProvider, $qProvider, $httpProvider, $locationProvider) {
			$locationProvider.hashPrefix('');
			$httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
			$qProvider.errorOnUnhandledRejections(false);
			$stateProvider
				.state('home', {
					url: "/",
					templateUrl: "index.html",
					controller: 'MainCtrl as vm',
					resolve: {
						movieObject: function($http){
							return $http.get('/movies')
						}
					}
				}) 
				.state('home.locations', {
					url: "locations",
					templateUrl: "location.html",
					controller: 'LocationsCtrl as ctrl',
					resolve: {
						locations: function($http) {
							return $http.get('/locations')
						}
					}
				})
				.state('info', {
					url: '/info', 
					templateUrl: 'info.html',
					controller: 'InfoCtrl'
				})
				.state('info.privacy', {
					url: '/privacy',
					templateUrl: 'privacy.html'
				})
				.state('info.contact', {
					url: '/contact',
					templateUrl: 'contact.html',
					controller: 'ContactCtrl'
				})

				.state('home.movies', {
					url: 'movies',
					templateUrl: 'movies.html'
				})

				.state('movie', {
					url: '/movies/:id',
					templateUrl: 'movie.html',
					controller: 'MovieCtrl as vm',
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
					controller: 'CategoryCtrl as vm',
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
