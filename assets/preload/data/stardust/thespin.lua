local spin_loop_counter = 0

function onCreatePost()
	doTweenAngle("spin_loop" .. spin_loop_counter, "goofy ass", 360, 50, "linear")
	doTweenX("the", "goofy ass", 2000, 200, "linear")
	doTweenY("the2", "goofy ass", 190, 5, "sineInOut")
end

function onTweenCompleted(tag)
	if string.find(tag, "spin_loop") then
		spin_loop_counter = spin_loop_counter + 1
		setProperty("goofy ass.angle", 0)
		doTweenAngle("spin_loop" .. spin_loop_counter, "goofy ass", 360, 50, "linear")
	end
	if string.find(tag, "the2") then
	doTweenY("the3", "goofy ass", 210, 5, "sineInOut")
	end
	if string.find(tag, "the3") then
	doTweenY("the2", "goofy ass", 190, 5, "sineInOut")
	end
end