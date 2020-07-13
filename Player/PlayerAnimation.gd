extends AnimatedSprite

func _on_Player_animate(motion):
	if (motion.y < 0):
		self.play("jump")
	elif (motion.x < 0):
		self.play("walk")
		self.flip_h = true
	elif (motion.x > 0):
		self.play("walk")
		self.flip_h = false
	else:
		self.play("idle")
