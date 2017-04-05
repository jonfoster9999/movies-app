function MainCtrl($scope, $http) {
	$scope.thing = "cool"
	$scope.examples = []

	$http.get("/examples").then(function(response){
		$scope.examples = response.data
	})
}

angular 
	.module('app')
	.controller('MainCtrl', MainCtrl)