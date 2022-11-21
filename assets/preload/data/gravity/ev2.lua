function onStepHit()
if not lowQuality then	
if curStep == 1800 then
	if rus == true then
		setTextString('difficulty', 'погоди почему я меняю этот текст')
	end
	if eng == true then
		setTextString('difficulty', 'wait why am i changing this text')
	end
	end
	if curStep == 2110 then
		stopSound('bgbreak')
		playSound('bgbreak', 1, 'bgbreak')
	end
	if curStep == 2112 then
		objectPlayAnimation('backbroken','break2',true)
		setProperty('cum.alpha', 1)
		doTweenAlpha('je', 'cum', 0, 1, 'linear')
		if rus == true then
		setTextString('difficulty', 'господи он все дальше сходит с ума')
		end
		if eng == true then
		setTextString('difficulty', 'jesus he is more crazy every second')
		end
		setProperty('thescreen.alpha', 0)
		setProperty('defaultCamZoom', 0.6)
	end
	if curStep == 2256 then
		doTweenZoom('jeje', 'camGame', 1, 3, 'sineOut')
		setProperty('defaultCamZoom', 1)
	end
	if curStep == 2286 then
		stopSound('bgbreak')
		playSound('bgbreak', 1, 'bgbreak')
	end
	if curStep == 2288 then
		setProperty('black2.alpha', 1)
		setProperty('cum3.alpha', 1)
		doTweenAlpha('jej', 'cum3', 0, 1, 'linear')
		setProperty('scoreTxt.alpha', 0)
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
	end
	end
end
function onBeatHit()
	if curBeat > 143 and curBeat < 208 then
		triggerEvent('Add Camera Zoom', '0.015', '0.0075')
		objectPlayAnimation('fuckers','dance',true)
		setProperty('backflash.alpha', 0.5)
		doTweenAlpha('backflash', 'backflash', 1, 0.5, 'linear')
	end
	if curBeat > 271 and curBeat < 336 then
		triggerEvent('Add Camera Zoom', '0.015', '0.0075')
		objectPlayAnimation('fuckers','dance',true)
		setProperty('thescreen.alpha', 0.2)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
		setProperty('backflash.alpha', 0.2)
		doTweenAlpha('backflash', 'backflash', 1, 0.5, 'linear')
	end
	if curBeat > 399 and curBeat < 423 then
		objectPlayAnimation('fuckers2', 'dance', true)
	end
	if curBeat > 431 and curBeat < 561 then
		triggerEvent('Add Camera Zoom', '0.03', '0.015')
		setProperty('thescreen.alpha', 0.5)
		doTweenAlpha('thescreen', 'thescreen', 0, 0.5, 'linear')
		triggerEvent('another trail', '', '')
	end
	if curBeat == 558 then
		doTweenZoom('jeje', 'camGame', 0.625, 0.0001, 'sineOut')
		setProperty('defaultCamZoom', 0.625)
	end
	if curBeat == 559 then
		doTweenZoom('jeje', 'camGame', 0.65, 0.0001, 'sineOut')
		setProperty('defaultCamZoom', 0.65)
	end
	if curBeat == 560 then
		doTweenZoom('jeje', 'camGame', 0.7, 0.0001, 'sineOut')
		setProperty('defaultCamZoom', 0.7)
	end
end
function onUpdate()
if difficulty == 0 then
	eng = true
end
if difficulty == 1 then
	rus = true
end
end