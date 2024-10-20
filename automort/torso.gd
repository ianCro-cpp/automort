
extends BodyPart

# Called when the node enters the scene tree for the first time.

func control_part(item_ind: int) -> void:
	if item_ind == 0 and dissected == false:
		$torso/torso_gore.show()
		dissected = true
	if item_ind == 1 and analyzed == false:
		analyzed = true
	if item_ind == 2 and (analyzed == true and fished == false):
		fished = false
	if item_ind == 3 and dissected == true:
		$torso/torso_ripped_cage.show()
		
