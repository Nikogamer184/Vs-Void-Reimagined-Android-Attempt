function onStepHit()
	if curStep == 1790 or curStep == 2814 then
		stopSound('bgbreak')
		playSound('bgbreak', 1, 'bgbreak')
	end
	if curStep == 1792 then
		objectPlayAnimation('backbroken','break1',true)
		setProperty('cum.alpha', 1)
		doTweenAlpha('je', 'cum', 0, 1, 'linear')
	end
	if curStep == 2816 then
		objectPlayAnimation('backbroken','break2',true)
		setProperty('cum.alpha', 1)
		doTweenAlpha('je', 'cum', 0, 1, 'linear')
	end
end