function MovieFilter() {
	return function(items, category) {
		return items.filter(function(item){
			return item.category.name == category
		})
	}
}

angular 
	.module('app')
	.filter('MovieFilter', MovieFilter)