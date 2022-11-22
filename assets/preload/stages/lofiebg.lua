function onCreate()
if not lowQuality then
    makeLuaSprite('background', 'lofieBG', 0, 0)
	
	makeLuaSprite('heavytf2', 'unfunny images from close chuckle/heby tf2', 1400, 1330)
	scaleObject('heavytf2', 0.3, 0.2)
	setScrollFactor('heavytf2', 1, 1)

    addLuaSprite('background', false)
	addLuaSprite('heavytf2', false)
	
    makeAnimatedLuaSprite('GF_assets1', 'lofie gf moment', 1250, 960);
    addAnimationByIndices('GF_assets1', 'danceRight', 'GF Dancing Beat', '15,16,17,18,19,20,21,22,23,24,25,26,27,28,29',
        24) -------
    addAnimationByIndices('GF_assets1', 'danceLeft', 'GF Dancing Beat', '30,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', 24)
    setObjectOrder('GF_assets1', getObjectOrder('gfGroup') + 1)

    addLuaSprite('GF_assets1', false);
end
	if songName == 'Its been a while' then
		setCharacterX('dad', 900)
	end
end
function onCreatePost()
	if songName == 'Its been a while' then
		setProperty('gf.visible', false)
		setProperty('defaultCamZoom', 0.7)
		setProperty('camGame.zoom', 0.7)
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