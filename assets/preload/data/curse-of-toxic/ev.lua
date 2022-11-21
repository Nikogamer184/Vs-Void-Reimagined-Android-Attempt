function onStepHit()
	if curStep == 1 then
		doTweenAlpha('black', 'black', 0, 3, 'linear')
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')
		setProperty('bfnightmare.color', '000000')
	end
	if curStep == 384 then
		setProperty('cum.alpha', 0)
	setProperty('smoke.alpha', 1)
	setProperty('front.alpha', 1)
	setProperty('camGame.zoom', 0.5)
	setProperty('defaultCamZoom', 0.5)
	setProperty('cameraSpeed', 2)
	setProperty('black.alpha', 1)
		doTweenAlpha('black', 'black', 0, 0.2, 'linear')
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
		setProperty('bfnightmare.color', getColorFromHex('FFFFFF'))
	setProperty('gf.alpha', 1)
	end
	if curStep == 1152 then
	setProperty('smoke.alpha', 0.0001)
	setProperty('front.alpha', 0.0001)
	setProperty('camGame.zoom', 0.9)
	setProperty('defaultCamZoom', 0.9)
	setProperty('cameraSpeed', 1)
	setProperty('black.alpha', 1)
	setProperty('cum.alpha', 1)
		doTweenAlpha('black', 'black', 0, 0.2, 'linear')
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')
		setProperty('bfnightmare.color', '000000')
	setProperty('gf.alpha', 0.0001)
	end
	if curStep == 1408 then
		setProperty('cum.alpha', 0)
	setProperty('smoke.alpha', 1)
	setProperty('front.alpha', 1)
	setProperty('camGame.zoom', 0.5)
	setProperty('defaultCamZoom', 0.5)
	setProperty('cameraSpeed', 2)
	setProperty('black.alpha', 1)
		doTweenAlpha('black', 'black', 0, 0.2, 'linear')
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
		setProperty('bfnightmare.color', getColorFromHex('FFFFFF'))
	setProperty('gf.alpha', 1)
	end
end
function onCreatePost()
	setProperty('gf.alpha', 0.0001)
	setProperty('camGame.zoom', 0.9)
	setProperty('defaultCamZoom', 0.9)
	setProperty('cameraSpeed', 1)
	setCharacterX('gf', 2000)
	setCharacterY('gf', 800)
end
function onCreate()
	if not lowQuality then
	makeLuaSprite('bfnightmare', 'bfnmmomen', 825, 300)
	setScrollFactor('bfnightmare', 1, 1)
	scaleObject('bfnightmare', 1, 1)
	setProperty('bfnightmare.alpha', 1)
	
	makeLuaSprite('black', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black', 0, 0);
	scaleObject('black', 3, 3);
	setProperty('black.alpha', 1)
	setObjectCamera('black', 'other')
	
	makeLuaSprite('cum', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum3', 0, 0);
	scaleObject('cum', 3, 3);
	setProperty('cum.alpha', 1)
	setProperty('smoke.alpha', 0.0001)
	setProperty('front.alpha', 0.0001)
	
	addLuaSprite('black', true)
	addLuaSprite('cum', false)
		addLuaSprite('b3Ready', true);
		addLuaSprite('b3Set', true);
		addLuaSprite('b3Go', true);
	addLuaSprite('bfnightmare', true)
end
end
function onUpdate()
	if boyfriendName == 'bf' then
		setProperty('iconP1.y', 570)
		setProperty('iconP2.y', 570)
		if downscroll then
		setProperty('iconP2.y', 10)
		setProperty('iconP1.y', 10)
		end
	for i=7,4,-1 do
        setPropertyFromGroup('strumLineNotes', i, 'y', 50)
		if downscroll then
        setPropertyFromGroup('strumLineNotes', i, 'y', 567)
		end
	end
	end
	if boyfriendName == 'bf-night' then
		setProperty('iconP1.y', 550)
		if downscroll then
		setProperty('iconP1.y', -20)
		end
		scaleObject('iconP2', 1, 1)
	end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt'  then
		setProperty("bfnightmare.x", 1675-25)
		setProperty("bfnightmare.y", 900)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt'  then
		setProperty("bfnightmare.x", 1675+20)
		setProperty("bfnightmare.y", 900)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' or  getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
		setProperty("bfnightmare.x", 1675+15)
		setProperty("bfnightmare.y", 900-15)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or  getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt'  then
		setProperty("bfnightmare.x", 1675)
		setProperty("bfnightmare.y", 900+10)
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
		setProperty("bfnightmare.x", 1675)
		setProperty("bfnightmare.y", 900)
            end
end
function onBeatHit()
health = getProperty('health')
	if getProperty('health') > 0.02 then
		setProperty('health', health- 0.01)
	end
	if curBeat % 2 == 1 then
		objectPlayAnimation('fuckers2', 'dance', true)
	end
	if (curBeat > 95 and curBeat < 288) or (curBeat > 351 and curBeat < 448) then
		triggerEvent('Add Camera Zoom', 0.0075, 0.015)
	end
end