var gui_w = display_get_gui_width();

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_color(make_color_rgb(255, 220, 90));
draw_text(gui_w / 2, 60, "Ajuda");

draw_set_color(c_white);
draw_text(gui_w / 2, 120, "W, A, S, D - mover Sunny");
draw_text(gui_w / 2, 155, "Mouse - mirar");
draw_text(gui_w / 2, 190, "Botão esquerdo - atirar pétalas solares");
draw_text(gui_w / 2, 225, "Objetivo - alcançar 1000 pontos de néctar");
draw_text(gui_w / 2, 260, "Após 1000 pontos, derrote a Rainha das Abelhas do Caos");
draw_text(gui_w / 2, 330, "Pressione ESC para voltar ao menu");

draw_set_halign(fa_left);
draw_set_valign(fa_top);