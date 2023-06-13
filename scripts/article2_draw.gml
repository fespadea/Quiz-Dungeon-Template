// article 2 draw

if(obj_stage_main.showingImage){
    draw_rectangle_color(view_get_xview(), view_get_yview(), view_get_xview() + view_get_wview(), view_get_yview() + view_get_hview(), c_white, c_white, c_white, c_white, -1);
    
    var imageToShow = obj_stage_main.imageToShow;
    var imageWidth = sprite_get_width(imageToShow);
    var imageHeight = sprite_get_height(imageToShow);
    var goalWidth = view_get_wview()+1;
    var goalHeight = view_get_hview()+1-obj_stage_main.HUD_HEIGHT;
    var scale = min(goalWidth / imageWidth, goalHeight / sprite_get_height(imageToShow));
    var xOffset = (goalWidth - scale*imageWidth)/2;
    var yOffset = (goalHeight - scale*imageHeight)/2;
    draw_sprite_ext(imageToShow, 0, view_get_xview() + xOffset, view_get_yview() + yOffset, scale, scale, 0, -1, 1);
}