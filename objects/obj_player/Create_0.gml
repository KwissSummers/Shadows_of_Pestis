// instead of using hspeed, vspeed, and gamemakers subpar collision event system,
// im manually setting the speed and moving the character using move_and_collide
horizontalSpeed = 0;
verticalSpeed = 0;
moveDirection = 0;

// start the player off with the max amount of jumps (will probably change later)
jumpsRemaining = numJumps;

// dash instance variables
dashing = false;
onDashCooldown = false;

// used to see if the player fell off a platform rather than jumped off
fellOffPlatform = false;
jumping = false;

// coyote time is used so the player can still jump a few frames after falling off a ledge
// just used so it doesnt feel unfair when the player tries to jump and it doesnt work
framesSinceGrounded = 0;

// starting charges for ranged attack
numCharges = 0;
numHits = 1;
chargingFrames = 0;

// current combat state
// TODO: whenever we start doing custom textures and polish, make the attacks look correct
// such as ranged attack fading out after use
attacking = false;

// player combat values
hp = startingHealth;
invincible = false;

instance_create_layer(x+5,y,"Instances",obj_melee)

//Shader pointers
_uniColor = shader_get_uniform(shdrOverlay, "u_colour");
_uniMix = shader_get_uniform(shdrOverlay, "u_mix");
_uniTransparency = shader_get_uniform(shdrOverlay, "u_transparency");
_color = [1.0, 1.0, 1.0]; //RGB values for color overlay
_mix = 0.0; // Amount shader colors are mixed with model
_transparency = 1.0; //Amount of model transparency