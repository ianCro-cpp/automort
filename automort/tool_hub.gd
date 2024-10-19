extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("inv1"):
		$ItemList.select(0)
		$Globals.itemSelected = 0
	if Input.is_action_pressed("inv2"):
		$ItemList.select(1)
		$Globals.itemSelected = 1
	if Input.is_action_pressed("inv3"):
		$ItemList.select(2)
		$Globals.itemSelected = 2
	if Input.is_action_pressed("inv4"):
		$ItemList.select(3)
		$Globals.itemSelected = 3
