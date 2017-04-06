function GenreGroup(){
	return {
		restrict: 'E',
		scope: {
			genre: '@',
			movies: '='
		},
		template: ['<ul><h5 class="movie__label">{{genre}}: ',
			'<a href="#">(See all in category)</a></h5>',
			'<li ng-repeat="movie in movies | MovieFilter:genre | limitTo:6 ">',
		
			'<div class="item">',
			'<img src="{{movie.image_url}}" /><br>',
			'<span class="movie__title">{{movie.title}}</span><br>',
			'</div>',
			'</li>',
			'</ul>'].join(""),
			controller: function($scope) {
				console.log($scope.movies)
			},
			link: function(scope, element, attrs) {
				console.log("test", scope.movies)
			}
	}
}

angular
	.module('app')
	.directive('genreGroup', GenreGroup)