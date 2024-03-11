/// @description Insert description here
// You can write your code in this editor
if(sprite_index = spr_playerWalk){
	var p = random_range(0.9, 1.1)
	audio_sound_pitch(snd_step, p);
	audio_play_sound(snd_step, 1, false)
}