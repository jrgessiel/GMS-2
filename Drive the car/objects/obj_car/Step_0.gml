//Teclas de entrada
var _up, _left, _down, _right;
_up = keyboard_check(vk_up);
_left = keyboard_check(vk_left);
_down = keyboard_check(vk_down);
_right = keyboard_check(vk_right);

//Eixos
var _input_X = _right - _left;
var _input_Y = _down - _up;

//Calcula movimentação
move_X = _input_X * move_velocity;
move_Y = _input_Y * move_velocity;

//Movimenta instância
x += move_X;
y += move_Y;

if (move_X > 0) {
	sprite_index = spr_car_right; 
}
else if (move_X < 0) {
	sprite_index = spr_car_left;
}

else if (move_Y > 0) {
	sprite_index = spr_car_down; 
}
else if (move_Y < 0) {
	sprite_index = spr_car_up;
}