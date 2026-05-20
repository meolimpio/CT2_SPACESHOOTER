var dano_recebido = other.dano;

instance_destroy(other);

vida -= dano_recebido;

if (vida <= 0)
{
    global.pontos += pontos_ao_derrotar;

    repeat (2)
    {
        var ang = irandom_range(0, 359);
        var nx = x + lengthdir_x(24, ang);
        var ny = y + lengthdir_y(24, ang);

        instance_create_layer(nx, ny, "Instances", obj_enemy_medium);
    }

    instance_destroy();
}