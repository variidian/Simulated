extends Camera2D
var idle_timer: float = 0.0
var idle_time := 1
var screen_center: Vector2
func _ready():
	screen_center = get_viewport_rect().size / 2
func _input(event):
	if event is InputEventMouseMotion:
		idle_timer = 0.0
		global_position = get_global_mouse_position()
func _process(delta):
	idle_timer += delta
	if idle_timer >= idle_time:
		global_position = screen_center
