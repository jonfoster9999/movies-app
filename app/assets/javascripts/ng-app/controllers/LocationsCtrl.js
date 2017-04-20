function LocationsCtrl($http, $scope, locationService) {
	var ctrl = this
	ctrl.searchText= ""
	ctrl.locations = "";
	ctrl.locationName = ""

	locationService.getLocations($http, function(data) {
		ctrl.locations = data.data;
	})

	var findName = function(){

		if (ctrl.searchText.length == 5) {
		    var location =  ctrl.locations.find(function(item){
				return item.zip == ctrl.searchText
			})
			if (location) {
			  ctrl.locationName = ("(" + location.city + ")")
			} else {
			  ctrl.locationName = "(No City Found) "
			}	
			console.log(ctrl.locationName)

			$scope.$apply();
		}
	}

	$('#search').on('keyup', findName)
}

angular
	.module('app')
	.controller('LocationsCtrl', LocationsCtrl)