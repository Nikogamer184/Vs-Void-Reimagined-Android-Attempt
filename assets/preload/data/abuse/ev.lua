function onStepHit()
	if curStep == 762 then
	noteTweenX('oppo0', 4, 110, 0.1, 'circInOut')
	noteTweenX('oppo1', 5, 220, 0.1, 'circInOut')
	noteTweenX('oppo2', 6, 330, 0.1, 'circInOut')
	noteTweenX('oppo3', 7, 440, 0.1, 'circInOut')
	end
	if curStep == 764 then
		setProperty('black.alpha', 1)
		setProperty('bacckk.alpha', 0)
		setProperty('thingie.alpha', 1)
		setProperty('back22.alpha', 1)
	setProperty('thehealthold.visible', false)
		setProperty('thetime.visible', true)
	setProperty('thehealth.alpha', 1)
	for i=3,0,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 800) -- ААА 800
		if downscroll then
        setPropertyFromGroup('strumLineNotes', i, 'y', -200) -- норм состояние 567
		end
	end
	end
	if curStep == 768 then
		setProperty('camGame.zoom', 0.5)
		setProperty('defaultCamZoom', 0.5)
		setProperty('black.alpha', 0)
		setProperty('cum.alpha', 1)
		doTweenAlpha('cum', 'cum', 0, 1, 'linear')
		setProperty('epekup.alpha', 1)
		setProperty('epekdown.alpha', 1)
		setCharacterY('boyfriend', 0)
		stopSound('fuck you')
		playSound('vine', 1, 'fuck you')
			setCharacterX('boyfriend', 600)
			setCharacterY('dad', 800)
			setCharacterX('dad', 1800)
			setCharacterY('boyfriend', 700)
	end
	if curStep == 1343 then
		stopSound('fuck you')
		playSound('vine', 1, 'fuck you')
	end
end