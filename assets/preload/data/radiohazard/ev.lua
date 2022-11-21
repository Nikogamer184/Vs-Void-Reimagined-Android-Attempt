function onStepHit()
	if curStep == 2064 then
		doTweenAlpha('black', 'black', 1, 1, 'linear')
	end
	if curStep == 2112 then
		doTweenAlpha('black', 'black', 0, 8, 'linear')
	end
	if curStep == 2880 then
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 3248 then
		setProperty('defaultCamZoom', 0.5)
	end
end
function onBeatHit()
health = getProperty('health')
	if getProperty('health') > 0.02 then
		setProperty('health', health- 0.01)
	end
	if (curBeat > 719 and curBeat < 779) or (curBeat > 783 and curBeat < 807) then
		objectPlayAnimation('fuckers2', 'dance', true)
	end
end
function onCreatePost()
	setProperty('gf.visible', false)
end