function onStepHit()
	health = getProperty('health')
	if curStep > 255 and curStep < 1407 then
		if getProperty('health') > 0.05 then
		setProperty('health', health- 0.003)
		end
	end
	if curStep == 248 then
		setProperty('blackOTHER.alpha', 1)
	end
	if curStep == 256 then
		setProperty('background.alpha', 0.0001)
		setProperty('cabinets.alpha', 0.0001)
		setProperty('pillar.alpha', 0.0001)
		setProperty('pillar2.alpha', 0.0001)
		setProperty('background1.alpha', 1)
		setProperty('cabinets1.alpha', 1)
		setProperty('pillar1.alpha', 1)
		setProperty('pillar21.alpha', 1)
		doTweenX('thehudflow', 'camHUD', 15, 2, 'sineInOut')
		setProperty('blackOTHER.alpha', 0)
		setProperty('cum.alpha', 1)
		doTweenAlpha('cum', 'cum', 0, 1, 'linear')
		setProperty('health', 0.1)
	end
	if curStep == 1408 then
		setProperty('background.alpha', 1)
		setProperty('cabinets.alpha', 1)
		setProperty('pillar.alpha', 1)
		setProperty('pillar2.alpha', 1)
		setProperty('background1.alpha', 0)
		setProperty('cabinets1.alpha', 0)
		setProperty('pillar1.alpha', 0)
		setProperty('pillar21.alpha', 0)
		stopSound('voidhi')
		playSound('vodappear', 1, 'voidhi')
		setProperty('cum.alpha', 1)
		doTweenAlpha('cum', 'cum', 0, 1, 'linear')
		setCharacterY('dad', 120)
		setProperty('health', 1)
	end
	if curStep >= 1408 then
		doTweenX('thehudflow', 0, 0.1, 'linear')
		doTweenX('thehudflow2', 0, 0.1, 'linear')
	end
end
function onTweenCompleted(tag)
	if tag == 'thehudflow' then
		doTweenX('thehudflow2', 'camHUD', -15, 2, 'sineInOut')
	end
	if tag == 'thehudflow2' then
		doTweenX('thehudflow', 'camHUD', 15, 2, 'sineInOut')
	end
end
function onBeatHit()
	if curBeat % 2 == 1 then
		objectPlayAnimation('cabinets', 'bop', true)
		objectPlayAnimation('cabinets1', 'bop', true)
	end
end