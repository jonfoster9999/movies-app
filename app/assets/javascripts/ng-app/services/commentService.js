angular 
	.module('app')
	.service('commentService', function(){
		return {
			postComments: function($http, data, callback){
				$http({
					method: 'POST',
					beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
					url: '/comments',
					data: data
				}).then(callback)
			}
		}
	});