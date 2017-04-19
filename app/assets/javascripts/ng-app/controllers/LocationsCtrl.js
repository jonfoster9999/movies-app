function LocationsCtrl($scope, locations) {
	var ctrl = this
	ctrl.searchText= ""
	ctrl.locations = locations.data;
	ctrl.locationName = ""

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