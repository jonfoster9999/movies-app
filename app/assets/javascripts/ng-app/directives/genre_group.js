function GenreGroup(){
	return {
		restrict: 'E',
		scope: {
			genre: '@',
			movies: '='
		},
		template: ['<ul><h5 class="movie__label">{{genre}}: ',
			'<a ui-sref="category({id: genre.toLowerCase()})">(See all in category)</a></h5><hr>',
			'<li ng-repeat="movie in movies | MovieFilter:genre | limitTo:6 ">',
		
			'<div class="item">',
			'<a ui-sref="movie({id: movie.id})"><img src="{{movie.image_url}}" /><div class="item-overlay"></div></a><br>',
			'<a class="no__underline" ui-sref="movie({id: movie.id})"><span class="movie__title">{{movie.title}}</span></a><br>',
			'</div>',
			'</li>',
			'</ul>'].join(""),
			controller: function($scope) {
				
			},
			link: function(scope, element, attrs) {
			
			}
	}
}

angular
	.module('app')
	.directive('genreGroup', GenreGroup)