extends CharacterBody2D


#Player Base Stats
@export var playerclass = 1
@export var life = 80
@export var cooldown = 0.3
@export var damage = 10

#Base Stats
@export var speed = 300
@export var jumpForce = 750
@export var gravity = 30


func _init():
	print(ProjectSettings.get_setting("physics/2d/default_gravity"))
	if playerclass == 1:
		life = 80
	elif playerclass == 2:
		life = 50
		speed = 500
		cooldown = 0.2
		damage = 15
	else:
		life = 30
		speed = 700
		cooldown = 0.1
		damage = 20

func _physics_process(delta):
	#Handle Gravity
	if !is_on_floor():
		velocity.y += gravity
		if velocity.y > 1000: velocity.y = 1000
		
	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = -jumpForce
		
	# Handle Horizontal Movement	
	var direction = Input.get_axis("Left", "Right")
	velocity.x = direction * speed
	move_and_slide()
	
