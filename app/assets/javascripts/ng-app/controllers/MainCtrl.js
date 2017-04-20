function MainCtrl($http, movieService) {
	var vm = this
	vm.movies = ""

	movieService.getMovies($http, function(data) {		
		vm.movies = data.data
	})
}

angular 
	.module('app')
	.controller('MainCtrl', MainCtrl)