function MovieCtrl($scope, $http, $stateParams, movie){
	var selectedId = -1
	var editFlag = false

	$scope.movie = movie.data
	$scope.comments = $scope.movie.comments
	$scope.formData = {}
	$scope.formData.movie_id = $scope.movie.id
	$scope.startEdit = startEdit;
	$scope.isInEditMode = isInEditMode;
	$scope.save = save
	$scope.isInReadMode = isInReadMode;
	$scope.cancel = cancel;
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

	function reset() {
		selectedId = -1;
		editFlag = false
	}

	function startEdit(id) {
		selectedId = id;
	}

	function isInEditMode() {
		return selectedId >= 0;
	}

	function save(id) {
		var newBoxOffice = $scope.movie.box_office;
		var id = id;
		$http({
			method: 'PATCH',
			beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
			url: '/movies/' + id,
			data: {newBoxOffice: newBoxOffice}
		}).then(function(data){
			$scope.movie.box_office = data.data.box_office;
			reset();
		})
	}

	function isInReadMode(id){
		return selectedId < 0
	}

	function cancel(){
		reset();
	}
}

angular  	
	.module('app')
	.controller('MovieCtrl', MovieCtrl)