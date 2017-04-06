function MovieCtrl($scope, $stateParams, movie){
	$scope.movie = movie.data
	console.log($scope.movie)
}

angular  	
	.module('app')
	.controller('MovieCtrl', MovieCtrl)