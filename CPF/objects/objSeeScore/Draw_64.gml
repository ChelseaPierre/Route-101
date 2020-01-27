var interface_width = display_get_gui_width();
draw_set_halign(fa_center);
draw_set_valign(fa_top);


draw_set_font(fontType);
draw_set_color(c_white);
draw_text(interface_width*.5,5, "Score: " + string(SCORE));