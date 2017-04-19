function MainCtrl($http, movieObject) {
	var vm = this
	vm.movies = movieObject.data
}

angular 
	.module('app')
	.controller('MainCtrl', MainCtrl)