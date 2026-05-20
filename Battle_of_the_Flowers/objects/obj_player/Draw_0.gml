// Efeito de piscar quando o jogador toma dano
if (invencivel_timer > 0)
{
    if ((invencivel_timer div 6) mod 2 == 0)
    {
        draw_set_alpha(0.45);
    }
    else
    {
        draw_set_alpha(1);
    }

    draw_self();
    draw_set_alpha(1);
}
else
{
    draw_self();
}