angular 
	.module('app')
	.service('movieService', function($timeout){
		return {
			getMovie: function($http, id, callback){
				$http.get('/movies/' + id)
					.then(callback)
			},
			getMovies: function($http, callback){
				$http.get('/movies')
					.then(callback)
			}			
		}
	});