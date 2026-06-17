var dano_recebido = other.dano;

instance_destroy(other);

vida -= dano_recebido;

global.boss_vida_atual = vida;

if (vida <= 0)
{
    global.boss_ativo = false;
    global.boss_vida_atual = 0;

    room_goto(rm_vitoria);

    instance_destroy();
}