
var mover_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var mover_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (mover_x != 0 || mover_y != 0)
{
    var dist = point_distance(0, 0, mover_x, mover_y);

    x += (mover_x / dist) * velocidade;
    y += (mover_y / dist) * velocidade;
}

// Impede o jogador de sair da room
x = clamp(x, sprite_width / 2, room_width - sprite_width / 2);
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2);


var dir_mouse = point_direction(x, y, mouse_x, mouse_y);
image_angle = dir_mouse;


if (cooldown_tiro > 0)
{
    cooldown_tiro--;
}

if (mouse_check_button(mb_left) && cooldown_tiro <= 0)
{
    var dir_tiro = point_direction(x, y, mouse_x, mouse_y);

    var tiro_x = x + lengthdir_x(24, dir_tiro);
    var tiro_y = y + lengthdir_y(24, dir_tiro);

    var tiro = instance_create_layer(tiro_x, tiro_y, "Instances", obj_tiro);

    tiro.direction = dir_tiro;
    tiro.image_angle = dir_tiro;
    tiro.speed = tiro.velocidade;
    tiro.dano = dano_tiro;

    cooldown_tiro = tempo_entre_tiros;
}


if (invencivel_timer > 0)
{
    invencivel_timer--;
}


if (invencivel_timer <= 0)
{
    var inimigo_colidido = noone;

    inimigo_colidido = instance_place(x, y, obj_enemy_big);

    if (inimigo_colidido == noone)
    {
        inimigo_colidido = instance_place(x, y, obj_enemy_medium);
    }

    if (inimigo_colidido == noone)
    {
        inimigo_colidido = instance_place(x, y, obj_enemy_small);
    }

    if (inimigo_colidido == noone)
    {
        inimigo_colidido = instance_place(x, y, obj_boss);
    }

    if (inimigo_colidido != noone)
    {
        global.vidas -= 1;

        invencivel_timer = tempo_invencivel;

        x = room_width / 2;
        y = room_height / 2;

        if (global.vidas <= 0)
        {
            room_goto(rm_derrota);
        }
    }
}