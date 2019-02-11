///@arg knockBacksprite
///@arg nextState

var kBSprite = argument0;
var nextState = argument1;
var kBFriction = 0.5;

SetStateSprite(kBSprite, 0.6, 0);
if (knockBackSpeed != 0) {
	image_xscale = -sign(knockBackSpeed);
}
MoveAndCollide(knockBackSpeed, 0);
knockBackSpeed = ApproachValue(knockBackSpeed, 0, kBFriction);
		
if (knockBackSpeed == 0) {
	SetStateAfterAnimation(nextState);
}