local spin_loop_counter = 0

function onCreatePost()
	doTweenAngle("spin_loop" .. spin_loop_counter, "ripbozo", 360, 50, "linear")
	doTweenAngle("thespeen" .. spin_loop_counter, "bfnightmare", 360, 25, "linear")
	precacheImage('bfnmmomen')
	if isStoryMode then
	precacheImage('thegreatfinale/transform_particles')
	end
	setProperty('gf.visible', false)
end

function onTweenCompleted(tag)
	if string.find(tag, "spin_loop") then
		spin_loop_counter = spin_loop_counter + 1
		setProperty("ripbozo.angle", 0)
		doTweenAngle("spin_loop" .. spin_loop_counter, "ripbozo", 360, 50, "linear")
	end
	if string.find(tag, "thespeen") then
		spin_loop_counter = spin_loop_counter + 1
		setProperty("bfnightmare.angle", 0)
		doTweenAngle("thespeen" .. spin_loop_counter, "bfnightmare", 360, 25, "linear")
	end
end