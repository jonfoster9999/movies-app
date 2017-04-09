function LocationsCtrl($scope, locations) {
	$scope.searchText= ""
	$scope.locations = locations.data;
	$scope.locationName = ""

	var findName = function(){
		if ($scope.searchText.length == 5) {
		    var location =  $scope.locations.find(function(item){
				return item.zip == +$scope.searchText
			})
			if (location) {
			  $scope.locationName = ("(" + location.city + ")")
			} else {
			  $scope.locationName = "(No City Found) "
			}	
			$scope.$apply();
			console.log($scope.locationName)
		}
	}

	$('#search').on('keyup', findName)
}

angular
	.module('app')
	.controller('LocationsCtrl', LocationsCtrl)