var gui_w = display_get_gui_width();

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_color(make_color_rgb(255, 220, 90));
draw_text(gui_w / 2, 80, "O Jardim Floresceu!");

draw_set_color(make_color_rgb(85, 145, 80));
draw_text(gui_w / 2, 130, "Sunny derrotou a Rainha das Abelhas do Caos.");

draw_set_color(c_white);
draw_text(gui_w / 2, 180, "Pontuação final: " + string(global.pontos));

draw_text(gui_w / 2, 260, "Pressione ENTER para jogar novamente");
draw_text(gui_w / 2, 300, "Pressione ESC para voltar ao menu");

draw_set_halign(fa_left);
draw_set_valign(fa_top);