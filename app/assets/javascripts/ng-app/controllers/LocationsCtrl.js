function LocationsCtrl($scope) {
	console.log("hello from location: ", $scope.movies)
}

angular
	.module('app')
	.controller('LocationsCtrl', LocationsCtrl)