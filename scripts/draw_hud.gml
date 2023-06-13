// draw hud


draw_rectangle_color(0, view_get_hview() - HUD_HEIGHT, view_get_wview(), view_get_hview(), c_black, c_black, c_black, c_black, -1);
draw_rectangle_color(0, view_get_hview() - HUD_HEIGHT, view_get_wview(), view_get_hview() - HUD_HEIGHT + 1, c_white, c_white, c_white, c_white, -1);

var hudX = x;
var hudY = view_get_hview() - HUD_HEIGHT + 8;

draw_sprite_ext(heartSprite, 0, hudX, hudY, 4, 4, 0, -1, 1);
hudX += sprite_get_width(heartSprite)*4 + 4;
draw_text_transformed_color(hudX, hudY, ":" + string(get_player_stocks(playerID.player)), 4, 4, 0, c_white, c_white, c_white, c_white, 1);
hudX += 100;


var buttonGap = 2;
var powerGap = 20;
draw_sprite_ext(swapDoorSprite, 0, hudX, hudY, 2, 2, 0, hasSwapDoor ? c_white : c_gray, 1);
hudX += sprite_get_width(swapDoorSprite)*2 + buttonGap;
draw_sprite_ext(specialSprite, 0, hudX, hudY, 2, 2, 0, -1, 1);
hudX += sprite_get_width(specialSprite)*2 + powerGap;
draw_sprite_ext(swapPhoneSprite, 0, hudX, hudY, 2, 2, 0, hasPhone ? c_white : c_gray, 1);
hudX += sprite_get_width(swapPhoneSprite)*2 + -sprite_get_width(jumpSprite)*2;
draw_sprite_ext(jumpSprite, 0, hudX, hudY, 2, 2, 0, -1, 1);
hudX += sprite_get_width(jumpSprite)*2 + powerGap;
draw_sprite_ext(hintSprite, 0, hudX, hudY, 1, 1, 0, hasHint ? c_white : c_gray, 1);
hudX += sprite_get_width(hintSprite) + buttonGap;
draw_sprite_ext(strongSprite, 0, hudX, hudY, 2, 2, 0, -1, 1);
hudX += sprite_get_width(strongSprite)*2 + 50;


var textHorGap = 20;
var textVerGap = 10;
var playersText = "Players:";
draw_text_transformed_color(hudX, hudY, playersText, 2, 2, 0, c_white, c_white, c_white, c_white, 1);
draw_sprite_ext(tauntSprite, 0, hudX + string_width(playersText) - sprite_get_width(tauntSprite)/2 - 12, hudY+string_height(playersText)*2 - 12, 2, 2, 0, -1, 1);
hudX += string_width(playersText)*2 + textHorGap;