function MovieCtrl($http, $stateParams, movie){
	var selectedId = -1
	var editFlag = false
	var vm = this;
	vm.movie = movie.data
	vm.comments = vm.movie.comments
	vm.formData = {}
	vm.formData.movie_id = vm.movie.id
	vm.startEdit = startEdit;
	vm.isInEditMode = isInEditMode;
	vm.save = save
	vm.isInReadMode = isInReadMode;
	vm.cancel = cancel;
	vm.submitted = function(){
		$http({
			method: 'POST',
			beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
			url: '/comments',
			data: vm.formData
		}).then(function(data){
			vm.formData.content = '';
			vm.formData.email = '';
			vm.formData.movie_id = vm.movie.id
			vm.comments = data.data
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
		var newBoxOffice = vm.movie.box_office;
		var id = id;
		if (!isNaN(newBoxOffice)) {
		$http({
			method: 'PATCH',
			beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
			url: '/movies/' + id,
			data: {newBoxOffice: newBoxOffice}
		}).then(function(data){
			vm.movie.box_office = data.data.box_office;
			reset();
		})
		} else {
			alert("Please enter a valid dollar amount")
		}
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