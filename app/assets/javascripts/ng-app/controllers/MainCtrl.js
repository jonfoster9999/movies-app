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
		
		//CREATE SERVICE
		var sendData = {}
		sendData["movie"] = {};
		sendData["movie"]["title"] = vm.formData.movieTitle;
		sendData["movie"]["description"] = vm.formData.movieDescription;
		sendData["movie"]["image_url"] = vm.formData.movieImageUrl;
		sendData["movie"]["category_id"] = vm.formData.movieCategoryId;

		//MOVE TO SERVICE
 		$http({
			method: 'POST',
			beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
			url: '/movies',
			data: sendData
		}).then(function(data){
		//RELOAD MOVIES
			vm.movies = data.data
		})
	}
}

angular 
	.module('app')
	.controller('MainCtrl', MainCtrl)