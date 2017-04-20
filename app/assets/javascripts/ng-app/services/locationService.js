angular 
	.module('app')
	.service('locationService', function(){
		return {
			getLocations: function($http, callback){
				$http.get('/locations')
					.then(callback)
			}
		}
	});