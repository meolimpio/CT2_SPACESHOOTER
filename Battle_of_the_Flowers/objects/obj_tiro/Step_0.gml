// Destroi o tiro ao sair da room
if (x < -64 || x > room_width + 64 || y < -64 || y > room_height + 64)
{
    instance_destroy();
}