function CastCtrl($scope, movie) {
	$scope.movie = movie.data
	$scope.actors = movie.data.actors
}

angular
	.module('app')
	.controller('CastCtrl', CastCtrl)