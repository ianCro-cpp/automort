extends StaticBody2D

@export var speed = 1500
@export var corpse_size = 576
var y_seg = corpse_size / 64
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_just_pressed("scroll_up"):
		velocity.y -= 1
	if Input.is_action_just_pressed("scroll_down"):
		velocity.y += 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	
	position += velocity * delta
	position = position.clamp(screen_size * -1.75, screen_size * 0.25)
