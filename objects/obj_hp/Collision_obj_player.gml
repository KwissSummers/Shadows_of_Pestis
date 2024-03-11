/// @description Heal and go
// You can write your code in this editor

other.hp = other.startingHealth
audio_play_sound(snd_heal, 2, false)
instance_destroy(self)
