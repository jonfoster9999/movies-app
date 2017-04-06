function MainCtrl($scope, $http, movieObject) {
	$scope.genre = 'huh'
	$scope.movies = movieObject.data
}

angular 
	.module('app')
	.controller('MainCtrl', MainCtrl)