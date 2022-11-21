function onStepHit()
if curBeat > 263 then
	setProperty('camZooming', false)
end
	if curStep == 272 then
		setProperty('backflash.alpha', 1)
		doTweenAlpha('je', 'backflash', 0, 1, 'linear')
		doTweenZoom('jeje', 'camGame', 0.8, 0.5, 'sineOut')
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 528 then
		doTweenZoom('jeje', 'camGame', 0.7, 1, 'sineOut')
		setProperty('defaultCamZoom', 0.7)
	end
end
function onBeatHit()
	if curBeat > 68 and curBeat < 259 then
		if getProperty('dad.animation.curAnim.name') == 'idle' then
			characterPlayAnim('dad','idle',true)
		end
	end
end