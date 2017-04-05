angular 
	.module('app', ['ui.router', 'templates'])
	.config(['$stateProvider', '$urlRouterProvider',
		function($stateProvider, $urlRouterProvider) {
			$stateProvider 
				.state('home', {
					url: '/home',
					templateUrl: 'home.html',
					controller: 'MainCtrl'
				})
				.state('other', {
					url: "/other",
					templateUrl: 'other.html',
					controller: 'OtherCtrl'
				})


			$urlRouterProvider.otherwise('home');

		}]);
