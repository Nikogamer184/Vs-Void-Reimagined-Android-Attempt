function onStepHit()
	if curStep == 128 then
		setProperty('backflash.alpha', 1)
		doTweenAlpha('je', 'backflash', 0, 1, 'linear')
		doTweenZoom('jeje', 'camGame', 0.8, 0.1, 'sineOut')
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 240 then
		doTweenAlpha('black', 'black2', 0.5, 0.75, 'linear')
	end
	if curStep == 248 then
		setProperty('black2.alpha', 0)
	end
	if curStep == 256 then
		setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 896 then
		setProperty('defaultCamZoom', 0.9)
	end
	if curStep == 904 then
		doTweenZoom('jeje', 'camGame', 0.8, 0.4, 'sineIn')
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 1018 then
		setProperty('defaultCamZoom', 0.78)
	end
	if curStep == 1020 then
		setProperty('defaultCamZoom', 0.75)
	end
	if curStep == 1022 then
		setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 1136 then
		doTweenZoom('jeje', 'camGame', 0.9, 0.1, 'sineOut')
		setProperty('defaultCamZoom', 0.9)
	end
	if curStep == 1144 then
		doTweenZoom('jeje', 'camGame', 0.8, 0.1, 'sineOut')
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 1148 then
		doTweenZoom('jeje', 'camGame', 0.7, 0.1, 'sineOut')
		setProperty('defaultCamZoom', 0.7)
	end
end
function onBeatHit()
	if curBeat > 68 and curBeat < 358 then
		if getProperty('dad.animation.curAnim.name') == 'idle' then
			characterPlayAnim('dad','idle',true)
		end
	end
	if curBeat > 228 and curBeat < 352 then
		if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
			characterPlayAnim('boyfriend','idle',true)
		end
	end
	if curBeat > 287 and curBeat < 352 then
		objectPlayAnimation('OMGHEHASTHECAT','dance',true)
	end
	if curBeat > 354 then
		setProperty('camZooming', false)
	end
end