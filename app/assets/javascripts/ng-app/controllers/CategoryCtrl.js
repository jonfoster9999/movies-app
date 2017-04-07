function CategoryCtrl($scope, movies) {
	$scope.categoryName = movies.data[0].category.name
	$scope.movies = movies.data
}


angular 	
	.module('app')
	.controller("CategoryCtrl", CategoryCtrl)