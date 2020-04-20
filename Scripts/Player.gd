extends KinematicBody2D

class_name Player

var touching_ground :=false
var touching_cieling :=false
var touching_right :=false
var touching_left :=false
var touching_anywall setget , is_touching_anywall
func is_touching_anywall(): return touching_right||touching_left

var can_move := true
var moving := false
var current_velocity := Vector2.ZERO
var fixed_velocity := Vector2.ZERO # fixed velocity when entering a jump
var gravity := 196 #lowers character every physics tick
var wall_sliding := false
var wall_slide_mult := 0.5 #reduces gravity if touching wall
var last_inputs : Dictionary
var input_duration := 200

var facing := Vector2.RIGHT # which direction the player is facing, left/right
var move_direction := Vector2.ZERO #which direction the character is moving in, mutliplied by walk_speed
var walk_speed := 1.0 #how fast the character moves left/right
var hold_left := 0.0 #force character to move in this direction for a certain number of seconds
var hold_right := 0.0

var can_run := true
var running := false #increases speed if true
var run_mult := 2.0 #how much to mutliply speed when running

var can_jump := true #whether the player can jump at all
var jump_velocity := 0.0 #current velocity of the jump, decays over time
var jump_decay := 2 # how quickly a player's jump will decay
var max_jump_velocity := -450.0 #initial velocity of a jump
var extra_jumps := 2 #current number of extra jumps left available to the player
var max_extra_jumps := 2 #the max number of extra jumps the player can make while in the air before landing
var jumping := false #if the player is currently jumping
var jump_lock := false #prevents jumping again until the jump button is let go or certain conditions are met that would allow the player to jump again
var can_wall_jump := true #can the player jump off walls

var can_slide := true
var sliding := false
var slide_speed := 1.75
var slide_time := 0
var max_slide_time := 25

var can_dash := true
var lock_dash := false
var dashing := false
var dash_speed := 2.5
var dash_time := 0.0
var max_dash_time :=0.25
var can_run_dash := true
var run_dash_speed := 3.0

signal started_idling
signal started_walking
signal started_falling
signal ended_run
signal started_jump
signal ended_jump
signal started_slide
signal ended_slide
signal started_dash
signal ended_dash
signal started_wall_slide
signal ended_wall_slide

signal landed
signal airborne
signal hit_wall
signal hit_ciel


func _ready():
	for i in InputMap.get_actions():
		last_inputs[i]=[]
	connect("hit_wall", self, "end_slide")
	connect("airborne", self, "end_slide")
	connect("started_jump", self, "end_slide")
	connect("started_dash", self, "end_slide")
	
	connect("hit_wall", self, "end_dash")
	connect("hit_ciel", self, 'end_dash')
	connect("started_jump", self, 'end_dash')
	
	connect("hit_ciel", self, "end_jump")
	connect("started_dash", self, "end_jump")
	
	connect("landed", self, "unlock_dash")


func print_time():
	print_debug(OS.get_ticks_msec())
	print_stack()


func _process(delta):
	process_inputs()
	if(!sliding):move_direction=Vector2.ZERO#dont reset move_direction when sliding to continue sliding in the lart direction used, can change direction
	if(Input.is_action_pressed("move_down")  && Input.is_action_just_pressed("jump") 
		 && !sliding && touching_ground):
		start_slide()
	else: 
		if(!Input.is_action_pressed("move_down")):  
			end_slide()#stop sliding when you stop holding down
		process_jump(delta) #dont jump if starting a slid
		
	if(dashing): return #dashing locks you in a direction, so skip over the move code
	if((Input.is_action_pressed("move_right") || hold_right>0) && hold_left<=0 ):
		moving_right()
		if(hold_right>0): hold_right-=delta
	elif((Input.is_action_pressed("move_left") || hold_left>0) && hold_right<=0):
		moving_left()
		if(hold_left>0): hold_left-=delta
	
	if last_inputs["move_right"].size()>=2:
		start_dash(Vector2.RIGHT)
	elif last_inputs["move_left"].size()>=2: 
		start_dash(Vector2.LEFT)
	if last_inputs["move_up"].size()>=2:
		start_dash(Vector2.UP)
	elif Input.is_action_just_pressed("dash"): 
		if(Input.is_action_pressed("move_up")): start_dash(Vector2.UP)
		else: start_dash(facing)
	
	running=can_run && Input.is_action_pressed("run") 
	if(move_direction==Vector2.LEFT || move_direction==Vector2.RIGHT): facing=move_direction


func process_inputs():
	var time = OS.get_ticks_msec()
	var expired = time-input_duration;
	for i in InputMap.get_actions():
		var found=0;
		for a in last_inputs[i]:
			if(a<expired): found+=1;
		for f in found: 
			last_inputs[i].pop_back()
		if Input.is_action_just_pressed(i):
			last_inputs[i].push_front(time)


func start_slide():
	if(!sliding):
		jump_lock=true # prevents the player from jumping immidiately after starting a slide
		sliding=true
		slide_time=max_slide_time
		emit_signal("started_slide")
func end_slide():
	if(sliding):
		sliding=false;
		emit_signal("ended_slide")


func process_jump(delta):
	if(Input.is_action_pressed("jump")):
		jump(delta)
	else: 
		if(extra_jumps>0 || touching_left || touching_right): jump_lock=false
		if(jumping): end_jump()
		if(touching_ground): reset_jump()
		
func jump(delta):
	if(!jumping):
		if(jump_lock || !can_jump): return
		elif(touching_ground): start_normal_jump()
		elif(can_wall_jump && (touching_left || touching_right)): start_wall_jump()
		elif(extra_jumps>0):start_extra_jump()

func start_normal_jump():
	jump_lock=true
	jumping=true
	jump_velocity=max_jump_velocity
	fixed_velocity=current_velocity
	emit_signal("started_jump")

func start_wall_jump():
	#jump first and then set fixed velocity to direction player is jumping
	start_normal_jump()
	if(touching_left): 
		hold_right=0.25
		fixed_velocity=Vector2.RIGHT*(walk_speed*run_mult if running else walk_speed) *100
	if(touching_right): 
		hold_left=0.25
		fixed_velocity=Vector2.LEFT*(walk_speed*run_mult if running else walk_speed) *100

func start_extra_jump():
	if(extra_jumps>0):
		extra_jumps-=1
		start_normal_jump()

func end_jump():
	jumping=false;
	emit_signal("ended_jump")

func reset_jump():
	jump_lock=false
	extra_jumps=max_extra_jumps


func moving_left():
	move_direction=Vector2.LEFT
func moving_right():
	move_direction=Vector2.RIGHT


func start_dash(direction):
	if(dashing || lock_dash): return
	lock_dash=true
	dashing=true
	fixed_velocity=direction
	dash_time=max_dash_time
	emit_signal("started_dash")
func end_dash():
	if(!dashing): return
	hold_left=0
	hold_right=0
	dashing=false
	if(touching_ground): unlock_dash()
	emit_signal("ended_dash")
func unlock_dash(): lock_dash=false;


func _physics_process(delta):
	if(!can_move): 
		move_and_slide(Vector2(0,0))#someone said to always call move and slide even when not moving
		return
	var was_wall_sliding=wall_sliding
	var was_moving=moving
	if(sliding):
		current_velocity = facing*slide_speed*100
		move_and_slide(current_velocity)
		slide_time-=delta
		if(slide_time<=0): end_slide()
	elif(dashing):
		current_velocity = fixed_velocity*(dash_speed if !running else run_dash_speed)*100
		#if(fixed_velocity==Vector2.UP): current_velocity*1000
		move_and_slide(current_velocity)
		dash_time-=delta
		if(dash_time<=0): end_dash()
	else:
		decay_jump_velocity(delta)
		var fallspeed =  gravity
		if(!jumping && (touching_right && (move_direction==Vector2.RIGHT) || (touching_left && move_direction==Vector2.LEFT))): 
			fallspeed=gravity*wall_slide_mult
			wall_sliding=true
		else: wall_sliding=false
		var movespeed=fixed_velocity.x if(jumping) else move_direction.x*(walk_speed*run_mult if running else walk_speed) *100;
		
		current_velocity = Vector2(movespeed, jump_velocity+fallspeed)
		var realVelocity = move_and_slide(current_velocity)
		if(realVelocity==Vector2.ZERO): moving=false
		else: moving=true
	
	var was_touching_ground=touching_ground
	var was_touching_right=touching_right
	var was_touching_left=touching_left
	var was_touching_cieling=touching_cieling
	touching_ground = test_move(transform, Vector2.DOWN)
	touching_right = test_move(transform, Vector2.RIGHT)
	touching_left = test_move(transform, Vector2.LEFT)
	touching_cieling = test_move(transform, Vector2.UP)
	
	if(!was_touching_ground && touching_ground): emit_signal("landed")
	if(was_touching_ground && !touching_ground): emit_signal("airborne")
	if(!was_touching_right && touching_right): emit_signal("hit_wall")
	if(!was_touching_left && touching_left): emit_signal("hit_wall")
	if(!was_touching_cieling && touching_cieling): emit_signal("hit_ciel")
	if(!was_wall_sliding && wall_sliding): emit_signal("started_wall_slide")
	if(was_wall_sliding && !wall_sliding): emit_signal("ended_wall_slide")
	
	if(touching_ground && !moving && was_moving): emit_signal("started_idling")
	#if(!was_moving && moving): emit_signal(started)

func decay_jump_velocity(delta):
	if(jump_velocity==0): return
	if(jump_velocity>0): jump_velocity=0 #reminder, jump velocity is a negative number, so make sure it stays below 0
	elif(jumping):
		if(jump_velocity>=max_jump_velocity*0.25): 
			end_jump()
		elif(jump_velocity>=max_jump_velocity*0.5):
			jump_velocity -= jump_velocity*jump_decay*delta*4
		elif(jump_velocity>=max_jump_velocity*0.75):
			jump_velocity -= jump_velocity*jump_decay*delta*2
		else: 
			jump_velocity -= max_jump_velocity*jump_decay*delta
	else:
			jump_velocity -= jump_velocity*jump_decay*delta*4
