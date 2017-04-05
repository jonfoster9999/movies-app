function OtherCtrl($scope) {
	$scope.thing = "Really cool"
}

angular
	.module('app')
	.controller("OtherCtrl", OtherCtrl)