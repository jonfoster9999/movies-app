function CategoryCtrl(movies) {
	var vm = this
	vm.categoryName = movies.data[0].category.name
	vm.movies = movies.data
}


angular 	
	.module('app')
	.controller("CategoryCtrl", CategoryCtrl)