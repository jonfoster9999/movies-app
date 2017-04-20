function CastCtrl($http, $scope, $stateParams, movieService) {

	$scope.movie = {}
	$scope.actors = [];
	movieService.getMovie($http, $stateParams.id, function(data){
		console.log(data)
		$scope.movie = data.data
		$scope.actors = $scope.movie.actors
	})
}

angular
	.module('app')
	.controller('CastCtrl', CastCtrl)