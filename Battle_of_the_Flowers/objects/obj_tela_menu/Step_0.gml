if (keyboard_check_pressed(vk_enter))
{
    room_goto(rm_game);
}

if (keyboard_check_pressed(ord("H")))
{
    room_goto(rm_ajuda);
}

if (keyboard_check_pressed(vk_escape))
{
    game_end();
}