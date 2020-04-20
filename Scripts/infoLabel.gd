extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var player : Player

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent().get_parent()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text(
		"Extra jumps: "+str(player.extra_jumps) +
		("\nSliding" if player.sliding else "") +
		("\nDashing" if player.dashing else "") +
		("\nDash Exhausted" if !player.dashing && player.lock_dash else "") +
		("\nJumping" if player.jumping else "")
		)
