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
			},
			buildMovieObject: function(form) {   
			    return	{
					movie: {
						title: form.movieTitle,
						description: form.movieDescription,
						image_url: form.movieImageUrl,
						category_id: form.movieCategoryId
					}
				};
			},
			postMovie: function($http, formData, callback) {
				$http({
					method: 'POST',
					beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					url: '/movies',
					data: formData
				}).then(callback)
			}		
		}
	});