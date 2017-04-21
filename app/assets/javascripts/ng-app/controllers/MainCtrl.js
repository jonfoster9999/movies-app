function MainCtrl($http, movieService) {
	var vm = this
	vm.movies = ""
	vm.formData = {}
	vm.formData.movieCategoryId = "1"

	movieService.getMovies($http, function(data) {		
		vm.movies = data.data
	})

	//VALIDATE
	vm.createMovie = function() {
		var sendData = movieService.buildMovieObject(vm.formData)
		movieService.postMovie($http, sendData, function(data){
			for (var key in vm.formData) {
				vm.formData[key] = ""
			}
			vm.formData.movieCategoryId = "1";
			vm.movies = data.data			
		});
	}
}

angular 
	.module('app')
	.controller('MainCtrl', MainCtrl)