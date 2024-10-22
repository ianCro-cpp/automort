extends Area2D

class_name BodyPart

var dissected = false
var analyzed = false
var fished = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	
func control_part(item_ind: int):
	if item_ind == 0 and not dissected:
		dissected = true
		show()
	if item_ind == 1 and not analyzed:
		analyzed = true
	if item_ind == 2 and (analyzed and not fished):
		fished = false
