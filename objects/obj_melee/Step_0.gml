/// @description Insert description here
// You can write your code in this editor


if(instance_exists(obj_player)){
	if(sign(obj_player.image_xscale)){
		x = obj_player.x + 20
	} else {
		x = obj_player.x - 20
	}
	y = obj_player.y
}