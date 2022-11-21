function onStepHit()
	if curStep == 16 then
		setProperty('camZooming', false)
	end
	if curStep == 416 then
		setProperty('backflash.alpha', 1)
		doTweenAlpha('je', 'backflash', 0, 1, 'linear')
		doTweenZoom('jeje', 'camGame', 0.8, 1, 'sineOut')
		setProperty('defaultCamZoom', 0.8)
	end
	if curStep == 800 then
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
		setProperty('cum.alpha', 1)
		setPropertyFromClass('ClientPrefs', 'hideHud', true);
		setProperty('difficulty.alpha', 0)
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
		doTweenY('2fastmatee', 'healthBar', -600, 0.00001, 'linear')
	end
	if curStep == 928 then
		setPropertyFromClass('ClientPrefs', 'hideHud', false);
		setProperty('camGame.zoom', 0.7)
		setProperty('defaultCamZoom', 0.7)
			setProperty('cum.alpha', 1)
			doTweenAlpha('jey', 'cum', 0, 2, 'linear')
			setProperty('cum2.alpha', 0)
			setProperty('therock2.alpha', 1)
			setProperty('gf.alpha', 1)
	for i=7,0,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 1000)
		if downscroll then
        setPropertyFromGroup('strumLineNotes', i, 'y', -200) -- норм состояние 567
		end
	end
	end
	if curStep == 960 then
		doTweenAlpha('j', 'black', 1, 1, 'circIn')
		doTweenZoom('jeje', 'camGame', 0.9, 0.8, 'sineIn')
		setProperty('defaultCamZoom', 0.9)
	end
	
	if curBeat > 201 and curBeat < 231 then
		setProperty('camZooming', false)
	end
end