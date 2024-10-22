extends Control

var itemSelected = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setSelect(newItem: int):
	itemSelected = newItem
	$ItemList.select(newItem)
	
func getSelect() -> int:
	return itemSelected

func _on_item_list_item_selected(index: int) -> void:
	itemSelected = index
