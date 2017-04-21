function MovieCtrl($scope, $http, $stateParams, movieService, commentService){
	var selectedId = -1
	var editFlag = false
	var vm = this;
	vm.movie = {};
	vm.comments = [];
	vm.formData = {}


	vm.startEdit = startEdit;
	vm.isInEditMode = isInEditMode;
	vm.save = save
	vm.isInReadMode = isInReadMode;
	vm.cancel = cancel;

	movieService.getMovie($http, $stateParams.id, function(data) {		
		vm.movie = data.data
		vm.comments = vm.movie.comments
		vm.formData.movie_id = vm.movie.id
	})

	vm.submitted = commentService.postComments.bind(null, $http, vm.formData, function(data){
			console.log("Hello?")
			vm.formData.content = '';
			vm.formData.email = '';
			vm.formData.movie_id = vm.movie.id
			vm.comments = data.data
	})



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