// DERROTA

if (global.vidas <= 0)
{
    room_goto(rm_derrota);
}

// SPAWN DE INIMIGOS COMUNS

if (global.pontos < pontos_para_boss)
{
    spawn_timer--;

    if (spawn_timer <= 0)
    {
        var margem = 64;
        var sx = 0;
        var sy = 0;

        var lado = irandom(3);

        switch (lado)
        {
            case 0:
                sx = -margem;
                sy = random(room_height);
            break;

            case 1:
                sx = room_width + margem;
                sy = random(room_height);
            break;

            case 2:
                sx = random(room_width);
                sy = -margem;
            break;

            case 3:
                sx = random(room_width);
                sy = room_height + margem;
            break;
        }

        instance_create_layer(sx, sy, "Instances", obj_enemy_big);

        // Aumenta a dificuldade conforme a pontuação sobe
        if (global.pontos >= 700)
        {
            spawn_intervalo = 60;
        }
        else if (global.pontos >= 400)
        {
            spawn_intervalo = 75;
        }
        else
        {
            spawn_intervalo = 90;
        }

        spawn_timer = spawn_intervalo;
    }
}

// CRIAÇÃO DO BOSS

if (global.pontos >= pontos_para_boss && !boss_criado)
{
    with (obj_enemy_big) instance_destroy();
    with (obj_enemy_medium) instance_destroy();
    with (obj_enemy_small) instance_destroy();

    var boss_x = room_width / 2;
    var boss_y = 120;

    instance_create_layer(boss_x, boss_y, "Instances", obj_boss);

    global.boss_ativo = true;
    boss_criado = true;
}