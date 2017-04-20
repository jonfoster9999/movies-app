angular 
	.module('app')
	.service('categoryService', function(){
		return {
			getCategory: function($http, id, callback){
				$http.get('/categories/' + id + "/movies")
					.then(callback)
			}
		}
	});