extends Node2D

class_name BodyPart

var dissected = false
var analyzed = false
var fished = false

func _ready() -> void:
	hide()

func control_part(item_ind: int) -> void:
	if item_ind == 0 and dissected == false:
		show()
		dissected = true
	if item_ind == 1 and analyzed == false:
		analyzed = true
	if item_ind == 2 and (analyzed == true and fished == false):
		fished = false
