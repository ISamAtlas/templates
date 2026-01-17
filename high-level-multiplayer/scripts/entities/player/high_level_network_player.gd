extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _enter_tree() -> void:
	set_multiplayer_authority(name.to_int())

func _physics_process(_delta: float) -> void:
	if !is_multiplayer_authority(): return
	
	velocity = Input.get_vector("left","right","up","down") * SPEED

	move_and_slide()
