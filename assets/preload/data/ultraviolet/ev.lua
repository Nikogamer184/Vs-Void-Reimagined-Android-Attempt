function onStepHit()
	if curStep == 244 or curStep == 494 then
		doTweenZoom('jeje', 'camGame', 0.8, 0.2, 'sineIn')
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 256 or curStep == 512 then
		setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 1408 then
		doTweenZoom('jeje', 'camGame', 1, 0.1, 'linear')
		setProperty('defaultCamZoom', 1)
	end
	if curStep == 1416 then
		setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 1284 then
		setProperty('defaultCamZoom', 0.8)
	end
end
function onBeatHit()
	if curBeat > 159 and curBeat < 383 then
		if getProperty('dad.animation.curAnim.name') == 'idle' then
			characterPlayAnim('dad','idle',true)
		end
	end
	if curBeat > 255 and curBeat < 288 then
		triggerEvent('Add Camera Zoom', '0.0075', '0.015')
	end
	if curBeat > 320 and curBeat < 385 then
		triggerEvent('Add Camera Zoom', '0.015', '0.03')
		if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
			characterPlayAnim('bf','idle',true)
		end
			setProperty('backflash.alpha', 0.75)
			doTweenAlpha('je', 'backflash', 0, 0.75, 'linear')
	end
end