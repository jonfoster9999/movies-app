function ActorCtrl($scope, actor_id) {
	$scope.actor = $scope.actors.find(function(obj) {
		return obj.id == actor_id
	})
}

angular  
	.module('app')
	.controller('ActorCtrl', ActorCtrl)