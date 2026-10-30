extends StaticBody2D

@export_range(0,3,1) var size: int
@export_enum('Bush','Rock') var style1: int 


func _ready() -> void:
	$Sprite2D.frame_coords = Vector2i(size,style1)
	$CollisionShape2D.disabled = size < 2 
	z_index = -1  if size < 2 else 0
	
