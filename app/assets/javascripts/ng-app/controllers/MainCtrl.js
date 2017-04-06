function MainCtrl($scope, $http, movieObject) {
	console.log(movieObject)
	$scope.genre = 'huh'
	$scope.movies = movieObject.data
}

angular 
	.module('app')
	.controller('MainCtrl', MainCtrl)