var gui_w = display_get_gui_width();

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_color(make_color_rgb(150, 75, 90));
draw_text(gui_w / 2, 80, "O Jardim Murchou...");

draw_set_color(make_color_rgb(90, 70, 75));
draw_text(gui_w / 2, 130, "As Abelhas do Caos dominaram o jardim.");

draw_set_color(c_white);
draw_text(gui_w / 2, 180, "Pontuação final: " + string(global.pontos));

draw_text(gui_w / 2, 260, "Pressione ENTER para tentar novamente");
draw_text(gui_w / 2, 300, "Pressione ESC para voltar ao menu");

draw_set_halign(fa_left);
draw_set_valign(fa_top);