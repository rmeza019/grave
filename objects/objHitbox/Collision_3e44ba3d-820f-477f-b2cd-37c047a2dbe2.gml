/// @description
if (creator == noone || creator == other) {
	exit;
}

if (ds_list_find_index(hitObjects, other) == -1) {
	ds_list_add(hitObjects, other);
	other.hp -= damage;
	other.state = "knockBack";
	other.knockBackSpeed = knockBack * image_xscale;
}