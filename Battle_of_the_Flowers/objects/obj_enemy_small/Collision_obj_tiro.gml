var dano_recebido = other.dano;

instance_destroy(other);

vida -= dano_recebido;

if (vida <= 0)
{
    global.pontos += pontos_ao_derrotar;

    instance_destroy();
}