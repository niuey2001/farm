@tool
extends StaticBody2D

@export_range(0,3,1) var size: int:
	set(value):
		size = value
		#$Sprite2D.frame_coords = Vector2i(size,style1)
@export_enum('Bush','Rock') var style1: int:
	set(value):
		style1 = value
		#$Sprite2D.frame_coords = Vector2i(size,style1)

func _ready() -> void:
	$Sprite2D.frame_coords = Vector2i(size,style1)
	$CollisionShape2D.disabled = size < 2 
	z_index = -1  if size < 2 else 0
	
