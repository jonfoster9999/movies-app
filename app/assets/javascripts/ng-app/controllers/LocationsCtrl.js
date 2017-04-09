function LocationsCtrl($scope) {
	console.log("hello from location: ", $scope.movies)
	$scope.searchText= ""
}

angular
	.module('app')
	.controller('LocationsCtrl', LocationsCtrl)