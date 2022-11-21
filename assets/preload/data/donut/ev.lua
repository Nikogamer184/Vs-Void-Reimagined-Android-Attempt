function onStepHit()
if not lowQuality then
	if curStep == 688 then
		setProperty('camGame.zoom', 0.9)
		setProperty('defaultCamZoom', 0.9)
		setProperty('cum.alpha', 1)
		doTweenAlpha('cum', 'cum', 0, 1, 'linear')
		setProperty('back.alpha', 0.0001)
		setProperty('therock2.alpha', 1)
		setProperty('thethingie.alpha', 1)
			objectPlayAnimation('bgglitch','glitchy',true)
	setCharacterX('boyfriend', 700)
	setCharacterX('dad', 100)
		setProperty('cameraSpeed', 2);
	end
	if curStep == 816 then
		setProperty('camGame.zoom', 0.7)
		setProperty('defaultCamZoom', 0.7)
		setProperty('cum.alpha', 1)
		doTweenAlpha('cum', 'cum', 0, 1, 'linear')
		setProperty('therock2.alpha', 0.0001)
		setProperty('thethingie.alpha', 0.0001)
		setProperty('back.alpha', 1)
			objectPlayAnimation('bgglitch','idle',true)
	setCharacterX('boyfriend', 900)
	setCharacterX('dad', -100)
		setProperty('cameraSpeed', 1);
	end
end
end
function onBeatHit()
	if curBeat > 171 and curBeat < 202 then
		triggerEvent('Add Camera Zoom', '0.06', '0.05')
	end
	if curBeat > 204 and curBeat < 268 then
		triggerEvent('Add Camera Zoom', '0.03', '0.015')
	end
end