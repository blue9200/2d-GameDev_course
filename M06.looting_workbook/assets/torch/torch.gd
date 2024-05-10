extends Area2D

@onready var flame: Sprite2D = $Flame

func _ready() -> void:
	flame.material.set("shader_parameter/offset", global_position * 0.1)

func toogle_flame_visibility() -> void:
	flame.visible = not flame.visible

func _input_event(viewport: Node, event: InputEvent, shape_index: int):
	var event_is_mouse_click: bool = (
		event is InputEventMouseButton and
		event.button_index == MOUSE_BUTTON_LEFT and
		event.is_pressed()
	)
	if event_is_mouse_click:
		toogle_flame_visibility()
