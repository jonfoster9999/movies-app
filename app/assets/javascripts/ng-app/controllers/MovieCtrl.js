function MovieCtrl($scope, $http, $stateParams, movie){
	$scope.movie = movie.data
	$scope.comments = $scope.movie.comments
	$scope.formData = {}
	$scope.formData.movie_id = $scope.movie.id
	$scope.startEdit = startEdit;
	$scope.isInEditMode = isInEditMode;
	$scope.save = save
	$scope.submitted = function(){
		$http({
			method: 'POST',
			beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
			url: '/comments',
			data: $scope.formData
		}).then(function(data){
			$scope.formData.content = '';
			$scope.formData.email = '';
			$scope.formData.movie_id = $scope.movie.id
			$scope.comments = data.data
		})
	}

	function startEdit() {

	}

	function isInEditMode() {

	}

	function save() {
		
	}
}

angular  	
	.module('app')
	.controller('MovieCtrl', MovieCtrl)