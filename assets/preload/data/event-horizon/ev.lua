function onStepHit()
	if curStep == 28 then
		doTweenZoom('jeje', 'camGame', 0.9, 0.1, 'sineOut')
		setProperty('cameraSpeed', 1.5)
	end
	if curStep == 544 then
			setProperty('backflash.alpha', 1)
			doTweenAlpha('je', 'backflash', 0, 1, 'linear')
	end
	if curStep == 1056 then
			setProperty('backflash.alpha', 1)
			doTweenAlpha('je', 'backflash', 0, 1, 'linear')
	end
	if curStep == 1472 then
			setProperty('defaultCamZoom', 1)
	end
	if curStep == 1488 then
			setProperty('defaultCamZoom', 0.7)
	end
	if curStep == 1564 then
			doTweenZoom('2fastmate', 'camGame', 1, 0.1, 'sineInOut')
			setProperty('defaultCamZoom', 1)
	end
	if curStep == 1568 then
			setProperty('defaultCamZoom', 0.8)
			setProperty('backflash.alpha', 1)
			doTweenAlpha('je', 'backflash', 0, 1, 'linear')
	end
	if curStep == 1696 then
			setProperty('cum.alpha', 1)
		noteTweenY('oppo00', 0, 50, 1, 'sineOut')
		noteTweenY('oppo11', 1, 50, 1, 'sineOut')
		noteTweenY('oppo22', 2, 50, 1, 'sineOut')
		noteTweenY('oppo33', 3, 50, 1, 'sineOut')
		if downscroll then
		noteTweenY('oppo00', 0, 567, 1, 'sineOut')
		noteTweenY('oppo11', 1, 567, 1, 'sineOut')
		noteTweenY('oppo22', 2, 567, 1, 'sineOut')
		noteTweenY('oppo33', 3, 567, 1, 'sineOut')
		end
			doTweenAlpha('jey', 'cum', 0, 2, 'linear')
			setProperty('cum2.alpha', 1)
			setProperty('therock2.alpha', 0)
			setProperty('gf.alpha', 0)
		setProperty('camGame.zoom', 1)
		setProperty('defaultCamZoom', 1)
			setProperty('timeBar.alpha', 0)
			setProperty('timeTxt.alpha', 0)
			setProperty('scoreTxt.alpha', 0)
			setProperty('iconP1.alpha', 0)
			setProperty('iconP2.alpha', 0)
			setProperty('healthBar.alpha', 0)
			setProperty('thehealth.alpha', 0)
		setPropertyFromClass('ClientPrefs', 'hideHud', true);
		setProperty('difficulty.alpha', 0)
			doTweenY('2fastmatee', 'healthBar', -600, 0.00001, 'linear')
	end
	if curStep == 1824 then
	--for i=7,0,-1 do
    --    setPropertyFromGroup('strumLineNotes', i, 'y', 1000)
	--	if downscroll then
    --    setPropertyFromGroup('strumLineNotes', i, 'y', -200) -- норм состояние 567
--		end
--	end
		setProperty('camGame.zoom', 0.7)
		setProperty('defaultCamZoom', 0.7)
			setProperty('cum.alpha', 1)
			doTweenAlpha('jey', 'cum', 0, 2, 'linear')
			setProperty('cum2.alpha', 0)
			setProperty('therock2.alpha', 1)
			setProperty('gf.alpha', 1)
			setProperty('timeBar.alpha', 1)
			setProperty('timeTxt.alpha', 1)
			setProperty('scoreTxt.alpha', 1)
			setProperty('iconP1.alpha', 1)
			setProperty('iconP2.alpha', 1)
			setProperty('healthBar.alpha', 1)
		setProperty('thehealth.alpha', 1)
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
		setProperty('difficulty.alpha', 1)
			doTweenY('2fastmatee', 'healthBar', 640, 0.00001, 'linear')
				noteTweenY('oppo00', 0, 1000, 0.00001, 'linear')
				noteTweenY('oppo11', 1, 1000, 1, 'sineIn')
				noteTweenY('oppo22', 2, 1000, 0.00001, 'linear')
				noteTweenY('oppo55', 5, 1000, 0.00001, 'linear')
				noteTweenY('oppo66', 6, 1000, 0.00001, 'linear')
				noteTweenY('oppo77', 7, 1000, 0.00001, 'linear')
			if downscroll then
			doTweenY('2fastmatee', 'healthBar', 82, 0.00001, 'linear')
				noteTweenY('oppo00', 0, -200, 0.00001, 'linear')
				noteTweenY('oppo11', 1, -200, 1, 'sineIn')
				noteTweenY('oppo22', 2, -200, 0.00001, 'linear')
				noteTweenY('oppo55', 5, -200, 0.00001, 'linear')
				noteTweenY('oppo66', 6, -200, 0.00001, 'linear')
				noteTweenY('oppo77', 7, -200, 0.00001, 'linear')
			end
	end
	if curStep == 1840 then
				noteTweenY('oppo33', 3, 1000, 1, 'sineIn')
				noteTweenY('oppo44', 4, 1000, 1, 'sineIn')
			if downscroll then
				noteTweenY('oppo33', 3, -200, 1, 'sineIn')
				noteTweenY('oppo44', 4, -200, 1, 'sineIn')
			end
	end
end
function onBeatHit()
	if curBeat % 2 == 1 then
		if curBeat > 424 and curBeat < 456 then
		setProperty('coolflash.alpha', 10)
		doTweenAlpha('ajhsgfhsajkfajkhsf', 'coolflash', 0.0001, 0.5, 'linear')
		end
	end
	if curBeat > 136 and curBeat < 456 then
		if getProperty('dad.animation.curAnim.name') == 'idle' then
			characterPlayAnim('dad','idle',true)
		end
	end
	if curBeat > 391 and curBeat < 456 then
		objectPlayAnimation('fuckers','dance',true)
		triggerEvent('Add Camera Zoom', '0.015', '0.03')
		setProperty('backflash.alpha', 1)
		doTweenAlpha('je', 'backflash', 0, 0.5, 'linear')
	end
	if curBeat > 458 then
		setProperty('camZooming', false)
	end
end