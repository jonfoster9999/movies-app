function MainCtrl($scope, $http, movieObject) {
	$scope.movies = movieObject.data
}

angular 
	.module('app')
	.controller('MainCtrl', MainCtrl)