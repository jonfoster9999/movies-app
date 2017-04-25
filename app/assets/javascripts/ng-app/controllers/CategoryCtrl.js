function CategoryCtrl($stateParams, $http, categoryService) {
	var vm = this
	vm.categoryName = ""
	vm.movies = {}

	categoryService.getCategory($http, $stateParams.id, function(data) {
		vm.categoryName = data.data[0].category.name
		vm.movies = data.data
		vm.movies.forEach(function(movie){
				movie["votes"] = 0;
		})
	})

	vm.upvote = function(movie) {
		movie.votes++
	}

	vm.sortByUpvotes = function() {
		vm.movies.sort(function(x, y){
			return y["votes"] - x["votes"]
		})
	}
}


angular 	
	.module('app')
	.controller("CategoryCtrl", CategoryCtrl)