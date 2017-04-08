function ActorCtrl($scope, actor_id) {
	$scope.actor = $scope.actors.filter(function(obj) {
		return obj.id == actor_id
	})[0]

	console.log($scope.actor.name)
}

angular  
	.module('app')
	.controller('ActorCtrl', ActorCtrl)