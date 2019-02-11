///@arg newX 
///@arg newY
///@arg creator
///@arg sprite
///@arg imageSpeed
///@arg knockBack
///@arg lifeSpan
///@arg damage
///@arg xScale

var newX = argument0;
var newY = argument1;
var creator = argument2;
var sprite = argument3;
var imageSpeed = argument4;
var knockBack = argument5;
var lifeSpan = argument6;
var damage = argument7;
var xScale = argument8;

var hitbox = instance_create_layer(newX, newY, "Instances", objHitbox);
hitbox.creator = creator;
hitbox.sprite_index = sprite;
hitbox.image_speed = imageSpeed;
hitbox.knockBack = knockBack;
hitbox.lifeSpan = lifeSpan;
hitbox.damage = damage;
hitbox.image_xscale = xScale;
