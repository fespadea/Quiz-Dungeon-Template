// init

doorLevel = 0;
showingImage = true;
imageToShow = sprite_get("title");

playerID = noone;
with oPlayer{
    if(other.playerID == noone || player < other.playerID.player){
        other.playerID = self;
    }
}

hasSwapDoor = true;
hasPhone = true;
hasHint = true;

specialUnpressed = true;
jumpUnpressed = true;
strongUnpressed = true;

// hud
HUD_HEIGHT = 64;

heartSprite = sprite_get("base_heart");
swapDoorSprite = sprite_get("base_swapDoor");
swapPhoneSprite = sprite_get("base_phone");
hintSprite = sprite_get("base_hint");

specialSprite = sprite_get("base_special");
jumpSprite = sprite_get("base_jump");
strongSprite = sprite_get("base_strong");
tauntSprite = sprite_get("base_taunt");