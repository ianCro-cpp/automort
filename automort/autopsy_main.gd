extends Node2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("inv1"):
		$tool_hub.setSelect(0)
		$corpse.updateItem(0)
	if Input.is_action_pressed("inv2"):
		$tool_hub.setSelect(1)
		$corpse.updateItem(1)
	if Input.is_action_pressed("inv3"):
		$tool_hub.setSelect(2)
		$corpse.updateItem(2)
	if Input.is_action_pressed("inv4"):
		$tool_hub.setSelect(3)
		$corpse.updateItem(3)
	if Input.is_action_pressed("select"):
		var curr_item = $tool_hub.getSelect()
		$corpse.updateItem(curr_item)
