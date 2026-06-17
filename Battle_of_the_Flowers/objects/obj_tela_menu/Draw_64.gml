var gui_w = display_get_gui_width();

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_color(make_color_rgb(255, 255, 255));
draw_text(gui_w / 2, 70, "Protective Petals");

draw_set_color(make_color_rgb(100, 150, 75));
draw_text(gui_w / 2, 115, "Desabroche antes de murchar!");

draw_set_color(c_white);
draw_text(gui_w / 2, 190, "ENTER - Iniciar");
draw_text(gui_w / 2, 230, "H - Ajuda");
draw_text(gui_w / 2, 270, "ESC - Sair");

draw_set_halign(fa_left);
draw_set_valign(fa_top);