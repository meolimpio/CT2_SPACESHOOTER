// HUD PRINCIPAL

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var painel_x = 20;
var painel_y = 20;
var painel_largura = 260;
var painel_altura = 82;

// Fundo do painel
draw_set_color(make_color_rgb(255, 239, 170));
draw_roundrect(painel_x, painel_y, painel_x + painel_largura, painel_y + painel_altura, false);

// Borda do painel
draw_set_color(make_color_rgb(85, 145, 80));
draw_roundrect(painel_x, painel_y, painel_x + painel_largura, painel_y + painel_altura, true);

// Pontuação
draw_set_color(make_color_rgb(65, 90, 55));
draw_text(painel_x + 16, painel_y + 12, "Néctar: " + string(global.pontos) + " / 1000");

// Vidas
draw_text(painel_x + 16, painel_y + 42, "Vidas:");

for (var i = 0; i < global.vidas; i++)
{
    draw_sprite(spr_icone_vida, 0, painel_x + 85 + (i * 30), painel_y + 50);
}

// BARRA DE VIDA DO BOSS

if (global.boss_ativo)
{
    var gui_largura = display_get_gui_width();

    var barra_largura = 460;
    var barra_altura = 24;

    var barra_x = (gui_largura - barra_largura) / 2;
    var barra_y = 24;

    var proporcao = global.boss_vida_atual / global.boss_max_vida;
    proporcao = clamp(proporcao, 0, 1);

    draw_set_halign(fa_center);
    draw_set_valign(fa_top);

    draw_set_color(make_color_rgb(90, 45, 80));
    draw_text(gui_largura / 2, barra_y - 22, "Rainha das Abelhas do Caos");

    draw_set_color(make_color_rgb(85, 55, 60));
    draw_roundrect(barra_x - 6, barra_y - 6, barra_x + barra_largura + 6, barra_y + barra_altura + 6, false);

    draw_set_color(make_color_rgb(70, 35, 50));
    draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false);

    draw_set_color(make_color_rgb(255, 180, 75));
    draw_rectangle(barra_x, barra_y, barra_x + (barra_largura * proporcao), barra_y + barra_altura, false);

    draw_set_color(c_white);
    draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, true);

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}