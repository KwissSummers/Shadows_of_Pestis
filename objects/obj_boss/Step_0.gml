switch (attackState)
{
	case AttackStates.Idle:
		// set the x and y to a floating point near the top
		x = boundsHorizontalCenter + boundsHorizontalDeviation * sin(current_time * roamHorizontalSpeed);
		y = originalHeight + roamVerticalMultiplierPixels * sin(current_time * roamVerticalSpeed);
		
		// change where the boss is looking
		if (xprevious != x)
			image_xscale = sign(x - xprevious);
		
		// if its time to start an attack
		if (nextAttackFrameCount > nextAttackFrames)
		{
			// set values for next idle phase
			nextAttackFrameCount = 0;
			
			nextAttackFrames = irandom_range(nextAttackLowerFrames, nextAttackUpperFrames);
			
			// 5 attacks
			var attackNum;
			if (hp <= startingHP / 2)
				attackNum = irandom(5);
			else
				attackNum = irandom(4);
			
			switch(attackNum)
			{
				case 0:
					attackState = AttackStates.Lob;
					break;
				case 1:
					attackState = AttackStates.Slash;
					break;
				case 2:
					attackState = AttackStates.Projectile;
					break;
				case 3:
					attackState = AttackStates.Spawn;
					break;
				case 4:
					attackState = AttackStates.Dash;
					break;
				case 5:
					attackState = AttackStates.Tentacle;
					break;
			}
		}
		else
			nextAttackFrameCount++;
	
		break;
	
	case AttackStates.GoingToIdle:
		// where we want to go in the end
		var desiredX = boundsHorizontalCenter + boundsHorizontalDeviation * sin(current_time * roamHorizontalSpeed);
		var desiredY = originalHeight + roamVerticalMultiplierPixels * sin(current_time * roamVerticalSpeed);
		
		// go towards that point
		x = lerp(beforeMoveLerpX, desiredX, returnToIdleFrameCount / returnToIdleFrames);
		y = lerp(beforeMoveLerpY, desiredY, returnToIdleFrameCount / returnToIdleFrames);
		
		returnToIdleFrameCount++;
		
		// if we are at the point, transition to idle phase
		if (returnToIdleFrameCount == returnToIdleFrames)
		{
			attackState = AttackStates.Idle;
			returnToIdleFrameCount = 0;
		}
		
		// look in the direction we are going
		if (xprevious != x)
			image_xscale = sign(x - xprevious);
		
		break;
	
	case AttackStates.Lob:
		// look towards the player
		if (instance_exists(obj_player))
		{
			image_xscale = sign(obj_player.x - x);
		}
	
		// start an attack
		if (!attacking)
		{
			attacking = true;
			
			alarm[2] = lobAttackWindupFrames;
		}
	
		break;
		
	case AttackStates.Slash:
		// we use obj_player a lot so everything is nested in this if statement
		if (instance_exists(obj_player))
		{
			// look towards where the player was
			if (!attacking)
				image_xscale = sign(obj_player.x - x);
			
			// run whenever the state is first changed
			if (!startMovingSlashAttack)
			{
				beforeMoveLerpX = x;
				beforeMoveLerpY = y;
				
				sideOfPlayer = sign(obj_player.x - x);
			}
			
			startMovingSlashAttack = true;
			
			// if we are moving at the x above the player
			if (slashMoveXFrameCount <= slashMoveXFrames && !attacking)
			{
				// go towards the side of the player we want
				var sideOfPlayerX = obj_player.x + sideOfPlayer * slashDistanceFromPlayer;
				
				x = lerp(beforeMoveLerpX, sideOfPlayerX, slashMoveXFrameCount / slashMoveXFrames);
				y = lerp(beforeMoveLerpY, originalHeight, slashMoveXFrameCount / slashMoveXFrames);
				
				slashMoveXFrameCount++;
			}
			// if we are falling towards the player
			else if (slashMoveYFrameCount <= slashMoveYFrames && !attacking)
			{
				// keep the boss tracked on the player
				x = obj_player.x + sideOfPlayer * slashDistanceFromPlayer;
				
				// move the boss down towards the player
				// square easing (?) is used here to *simulate* gravity
				var slashEasing = sqr(slashMoveYFrameCount / slashMoveYFrames);
				y = lerp(originalHeight, floorY - sprite_height / 2, slashEasing);
				
				slashMoveYFrameCount++;
			}
			// start an attack
			else if (!attacking)
			{
				// keep the boss right on the floor
				y = floorY - sprite_height / 2;
				
				attacking = true;
				slashMoveXFrameCount = 0;
				slashMoveYFrameCount = 0;
				
				alarm[7] = slashWindupFrames;
			}
			else
			{
				// keep the boss on the floor until the state changes after the attack
				y = floorY - sprite_height / 2;
			}
		}
		
		break;
	
	case AttackStates.Projectile:
		// look towards the player
		if (instance_exists(obj_player))
		{
			image_xscale = sign(obj_player.x - x);
		}
		
		// start an attack
		if (!attacking)
		{
			attacking = true;
			
			alarm[3] = projectileAttackWindupFrames;
		}
	
		break;
		
	case AttackStates.Spawn:
		// run right when the state is changed
		if (!startMovingSpawnAttack)
		{
			beforeMoveLerpX = x;
			beforeMoveLerpY = y;
		}
		
		startMovingSpawnAttack = true;
		
		// if we are moving towards the center of the screen
		if (moveToSpawnAreaFrameCount <= moveToSpawnAreaFrames && !attacking)
		{
			// move linearly to the center of the screen
			x = lerp(beforeMoveLerpX, boundsHorizontalCenter, moveToSpawnAreaFrameCount / moveToSpawnAreaFrames);
			y = lerp(beforeMoveLerpY, originalHeight, moveToSpawnAreaFrameCount / moveToSpawnAreaFrames);
		
			moveToSpawnAreaFrameCount++;
		}
		// start the attack
		else if (!attacking)
		{
			attacking = true;
			
			moveToSpawnAreaFrameCount = 0;
			
			alarm[4] = spawnAttackWindupFrames;
		}
		
		// look in the direction the boss was going
		if (xprevious != x)
			image_xscale = sign(x - xprevious);
	
		break;
		
	case AttackStates.Dash:
		// run right when the state is changed
		if (!startMovingDashAttack)
		{
			beforeMoveLerpX = x;
			beforeMoveLerpY = y;
			
			dashFromLeft = x < boundsHorizontalCenter;
			
			chosenDashSide = dashFromLeft ? bounds[0] : bounds[1];
		}
		
		startMovingDashAttack = true;
	
		// if we are moving towards the dash location
		if (dashMoveFrameCount <= dashMoveFrames && !attacking)
		{
			// took me a while to calculate this movement
			// slows down while approaching dash location
			var percent = dashMoveFrameCount / dashMoveFrames;
			var easing = power(-percent * percent + 2 * percent, 0.75);
			
			// move the boss
			x = lerp(beforeMoveLerpX, chosenDashSide, easing);
			y = lerp(beforeMoveLerpY, floorY - sprite_height / 2, easing);
		
			dashMoveFrameCount++;
		}
		// start an attack (in this case, just dash duration since the damage done is contact damage)
		else if (!attacking)
		{
			attacking = true;
			
			dashMoveFrameCount = 0;
			
			alarm[5] = dashWindupFrames;
		}
		
		// move while the dash is active
		if (startedDashing)
		{
			hasContactDamage = true;
			
			// create the afterimage trail
			instance_create_layer(x, y, "BossProjectiles", obj_bossAfterimage);
			
			if (dashFromLeft)
				x += dashdx;
			else
				x -= dashdx;
		}
		
		// look in the direction the boss is dashing
		if (dashFromLeft)
			image_xscale = 1;
		else
			image_xscale = -1;
	
		break;
		
	case AttackStates.Tentacle:
		// look towards the player
		if (instance_exists(obj_player))
		{
			image_xscale = sign(obj_player.x - x);
		}
		
		// start attacking
		if (!attacking)
		{
			attacking = true;
			
			var spriteWidth = sprite_get_width(spr_bossTent);
			var spriteHeight = sprite_get_height(spr_bossTent);

			instance_create_layer(64 + spriteWidth, floorY + spriteHeight / 2 - 2, "Instances", obj_tentacle);
			
			// start the attack
			alarm[8] = tentacleWindupFrames;
		}
		
		break;
}