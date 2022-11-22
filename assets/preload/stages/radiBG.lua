function onCreate()
if not lowQuality then
	
    makeAnimatedLuaSprite('GF_assets1', 'radi gf moment', 1250, 760);
    addAnimationByIndices('GF_assets1', 'danceRight', 'GF Dancing Beat', '15,16,17,18,19,20,21,22,23,24,25,26,27,28,29',
        24) -------
    addAnimationByIndices('GF_assets1', 'danceLeft', 'GF Dancing Beat', '30,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', 24)

    makeLuaSprite('background', 'radi/back', 0, 0)

    makeLuaSprite('rubble', 'radi/middle', 0, 0)

    makeLuaSprite('front', 'radi/Front', 0, 0)
    setLuaSpriteScrollFactor('front', 1, 1)
	
	makeLuaSprite('heavytf2', 'unfunny images from close chuckle/heby tf2', 600, 600)
	scaleObject('heavytf2', 0.3, 0.2)
	setScrollFactor('heavytf2', 1, 1)
	
	makeLuaSprite('black2', 'blackpeople', -1000, -500)
	setScrollFactor('black2', 0, 0)
	scaleObject('black2', 4, 4)
	setProperty('black2.alpha', 0.0001)

    addLuaSprite('background', false)
	addLuaSprite('heavytf2', false)
    addLuaSprite('rubble', false)
    addLuaSprite('GF_assets1', false);
    addLuaSprite('front', true)
	addLuaSprite('black2', true)
end
		if songName == 'Abuse' then
			setCharacterX('dad', -100)
			setCharacterY('dad', 80)
			setCharacterX('boyfriend', 950)
			setCharacterY('boyfriend', 100)
			setProperty('defaultCamZoom', 0.9)
if not lowQuality then
			makeLuaSprite('bacckk', 'house', -200, 0)
			setScrollFactor('bacckk', 1, 1)
			scaleObject('bacckk', 1.5, 1.5)
	makeLuaSprite('barrels', 'the barrels', 1000, 560)
	scaleObject('barrels', 0.9, 0.9)
	removeLuaSprite('GF_assets1')
	addLuaSprite('barrels', false)
	
	makeLuaSprite('heavytf2', 'unfunny images from close chuckle/heby tf2', 500, 530)
	scaleObject('heavytf2', 0.3, 0.2)
	setScrollFactor('heavytf2', 1, 1)
			addLuaSprite('bacckk', false)
			addLuaSprite('heavytf2', false)
	makeLuaSprite('cum', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum', 0, 0);
	scaleObject('cum', 3, 3);
	setProperty('cum.alpha', 0.0001)
	makeLuaSprite('black', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black', 0, 0);
	scaleObject('black', 3, 3);
	setProperty('black.alpha', 0.0001)
	setObjectCamera('black', 'other')
	addLuaSprite('black', true)
	addLuaSprite('cum', true)
end
	addLuaSprite('thehealthold', true)
	setProperty('thehealth.alpha', 0.0001)
	setProperty('thehealthold.visible', true)
			setProperty('epekup.alpha', 0.0001)
			setProperty('epekdown.alpha', 0.0001)
		end
	if songName == 'Dark Toxicity' then
		setCharacterX('gf', 2200)
	end
end
function onBeatHit()
	if curBeat % 2 == 0 then
        playAnim('GF_assets1', 'danceRight')
    else
        playAnim('GF_assets1', 'danceLeft')
    end
end
function onCountdownTick(counter)
	if counter == 0 then
        playAnim('GF_assets1', 'danceRight')
	end
    if counter == 1 then  --countdownReady
        playAnim('GF_assets1', 'danceLeft')
    end
    if counter == 2 then --countdownSet
        playAnim('GF_assets1', 'danceRight')
    end
    if counter == 3 then --countdownGo
        playAnim('GF_assets1', 'danceLeft')
    end
end
function onSongStart()
        playAnim('GF_assets1', 'danceRight')
end