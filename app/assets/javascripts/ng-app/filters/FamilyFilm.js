function familyFilm() {
	return function(items) {
		return items.filter(function(item){
			return item.category.name == "Horror"
		})
	}
}

angular 
	.module('app')
	.filter('familyFilm', familyFilm)