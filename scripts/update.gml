// update

handle_cpu();


if(showingImage){
    if(playerID.special_down){
        if(specialUnpressed)
            hasSwapDoor = !hasSwapDoor;
        specialUnpressed = false;
    } else{
        specialUnpressed = true;
    }
    if(playerID.jump_down){
        if(jumpUnpressed)
            hasPhone = !hasPhone;
        jumpUnpressed = false;
    } else{
        jumpUnpressed = true;
    }
    if(playerID.strong_down){
        if(strongUnpressed)
            hasHint = !hasHint;
        strongUnpressed = false;
    } else{
        strongUnpressed = true;
    }
    lockPlayer();
}


// From Harbige12 Old Dracula Boss (https://steamcommunity.com/sharedfiles/filedetails/?id=2132275518)
#define lockPlayer
with (oPlayer) {
    hsp = 0;
    state = PS_SPAWN;
    can_move = false;
    spr_dir = 1;
    
    left_down = false;
    left_pressed = false;
    left_hard_pressed = false;
    right_down = false;
    right_pressed = false;
    right_hard_pressed = false;
    
    up_down = false;
    down_down = false;
    attack_down = false;
    special_down = false;
    shield_down = false;
    jump_down = false;
    
    move_cooldown[AT_JAB] = 10;
    move_cooldown[AT_FTILT] = 10;
    move_cooldown[AT_DTILT] = 10;
    move_cooldown[AT_UTILT] = 10;
    move_cooldown[AT_FSTRONG] = 10;
    move_cooldown[AT_DSTRONG] = 10;
    move_cooldown[AT_USTRONG] = 10;
    move_cooldown[AT_DATTACK] = 10;
    move_cooldown[AT_FAIR] = 10;
    move_cooldown[AT_BAIR] = 10;
    move_cooldown[AT_DAIR] = 10;
    move_cooldown[AT_DAIR] = 10;
    move_cooldown[AT_UAIR] = 10;
    move_cooldown[AT_NAIR] = 10;
    move_cooldown[AT_FSPECIAL] = 10;
    move_cooldown[AT_DSPECIAL] = 10;
    move_cooldown[AT_USPECIAL] = 10;
    move_cooldown[AT_NSPECIAL] = 10;
    move_cooldown[AT_EXTRA_1] = 10;
    move_cooldown[AT_EXTRA_2] = 10;
    move_cooldown[AT_EXTRA_3] = 10;
    move_cooldown[AT_FSPECIAL_AIR] = 10;
    move_cooldown[AT_DSPECIAL_AIR] = 10;
    move_cooldown[AT_NSPECIAL_AIR] = 10;
}
clear_button_buffer(PC_LEFT_HARD_PRESSED);
clear_button_buffer(PC_RIGHT_HARD_PRESSED);
clear_button_buffer(PC_UP_HARD_PRESSED);
clear_button_buffer(PC_DOWN_HARD_PRESSED);
clear_button_buffer(PC_LEFT_STRONG_PRESSED);
clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
clear_button_buffer(PC_UP_STRONG_PRESSED);
clear_button_buffer(PC_DOWN_STRONG_PRESSED);
clear_button_buffer(PC_LEFT_STICK_PRESSED);
clear_button_buffer(PC_RIGHT_STICK_PRESSED);
clear_button_buffer(PC_UP_STICK_PRESSED);
clear_button_buffer(PC_DOWN_STICK_PRESSED);
clear_button_buffer(PC_JUMP_PRESSED);
clear_button_buffer(PC_ATTACK_PRESSED);
clear_button_buffer(PC_SHIELD_PRESSED);
clear_button_buffer(PC_SPECIAL_PRESSED);
clear_button_buffer(PC_STRONG_PRESSED);
clear_button_buffer(PC_TAUNT_PRESSED);

#define handle_cpu
with oPlayer{
    if (clone) continue;
	if (variable_instance_exists(id, "temp_level")) {
	    set_state(PS_WRAPPED);
        
        hsp = 0;
        vsp = 0;
        x = clamp(x, view_get_xview(), view_get_xview() + view_get_wview());
        y = clamp(y, view_get_yview(), view_get_yview() + view_get_hview());
        
        invincible = true;
        invince_time = 200;
        go_through = false;
        fall_through = true;
        wrap_time = 196;
        visible = false;
        state_timer = 1;
        player_solid = false;
	}
}
