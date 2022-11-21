function onStepHit()
	if curStep == 16 then
	if difficulty == 0 then
		setProperty('i got perms.alpha', 1)
	end
	if difficulty == 1 then
		setProperty('i got perms-r.alpha', 1)
	end
	end
	if curStep == 32 then
		if difficulty == 0 then
		doTweenAlpha('cum', 'i got perms', 0, 1, 'linear')
		doTweenY('among us', 'i got perms', 500, 1, 'sineIn')
		end
		if difficulty == 1 then
		doTweenAlpha('cum', 'i got perms-r', 0, 1, 'linear')
		doTweenY('among us', 'i got perms-r', 500, 1, 'sineIn')
		end
	end
	if curStep == 80 then
		if difficulty == 0 then
		setProperty('he wants it.alpha', 1)
		end
		if difficulty == 1 then
		setProperty('he wants it-r.alpha', 1)
		end
	end
	if curStep == 96 then
		if difficulty == 0 then
		doTweenAlpha('cum', 'he wants it', 0, 1, 'linear')
		doTweenY('among us', 'he wants it', 500, 1, 'sineIn')
		end
		if difficulty == 1 then
		doTweenAlpha('cum', 'he wants it-r', 0, 1, 'linear')
		doTweenY('among us', 'he wants it-r', 500, 1, 'sineIn')
		end
	end
	if curStep == 16 or curStep == 80 then
		setProperty('cum.alpha', 1)
		doTweenAlpha('cum', 'cum', 0, 1, 'linear')
	end
	if curStep == 144 then
		setProperty('black.alpha', 0)
		setProperty('cum.alpha', 1)
		doTweenAlpha('cum', 'cum', 0, 1, 'linear')
	end
	if curStep == 656 then
		doTweenAlpha('hitext', 'idcaboutradi', 1, 2, 'linear')
		doTweenX('textgobrr', 'idcaboutradi', 400, 10, 'linear')
	end
	if curStep == 736 then
		doTweenAlpha('hitext', 'idcaboutradi', 0, 1, 'linear')
	end
end
function onCreatePost()
	setProperty('gf.visible', false)
end
function onCreate()
	makeLuaSprite('smol', 'unfunny images from close chuckle/smol vod (CREDITS TO ANNIE STARS FOR MAKING THIS JPEG (USED ONE) )', 2200, 1250)
	setScrollFactor('smol', 1.05, 1.05)
	scaleObject('smol', 2, 2)
	
	addLuaSprite('smol', true)
	
	makeLuaSprite('black', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black', 0, 0);
	scaleObject('black', 3, 3);
	setProperty('black.alpha', 1)
	setObjectCamera('black', 'other')
	
	makeLuaSprite('cum', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum3', 0, 0);
	scaleObject('cum', 3, 3);
	setProperty('cum.alpha', 0.0001)
	setObjectCamera('cum', 'other')
	
	makeLuaSprite('i got perms', 'i got perms', 400, 200)
	scaleObject('i got perms', 1, 1)
	setObjectCamera('i got perms', 'other')
	setProperty('i got perms.alpha', 0.00001)
	
	makeLuaSprite('he wants it', 'he wants it too', 400, 200)
	scaleObject('he wants it', 1, 1)
	setObjectCamera('he wants it', 'other')
	setProperty('he wants it.alpha', 0.00001)
	
	makeLuaSprite('i got perms-r', 'i got perms rus', 400, 200)
	scaleObject('i got perms-r', 1, 1)
	setObjectCamera('i got perms-r', 'other')
	setProperty('i got perms-r.alpha', 0.00001)
	
	makeLuaSprite('he wants it-r', 'he wants it too rus', 400, 200)
	scaleObject('he wants it-r', 1, 1)
	setObjectCamera('he wants it-r', 'other')
	setProperty('he wants it-r.alpha', 0.00001)
	
	makeLuaText('idcaboutradi', '', 500, 300, 300)
	setScrollFactor('idcaboutradi', 1, 1);
	setObjectCamera('idcaboutradi', 'hud')
	setTextFont('idcaboutradi', 'warface.ttf')
	setTextSize('idcaboutradi', 30)
	setProperty('idcaboutradi.alpha', 0.0001)
	if difficulty == 0 then
		setTextString('idcaboutradi', "i don't care if radi is in the void port, this is a somewhat collab with radi's creator")
	end
	if difficulty == 1 then
		setTextString('idcaboutradi', "мне наплевать на то, что ради в порте на воида, это типа коллаба с создателем ради")
	end
	
	addLuaSprite('black', true)
	addLuaSprite('i got perms', true)
	addLuaSprite('he wants it', true)
	addLuaSprite('i got perms-r', true)
	addLuaSprite('he wants it-r', true)
	addLuaSprite('cum', true)
		addLuaSprite('b3Ready', true);
		addLuaSprite('b3Set', true);
		addLuaSprite('b3Go', true);
	addLuaText('idcaboutradi', true)
end
local amongusjoke = true
function onEvent(name, value1)
	if name == 'hud on beat shit' then
		amongusjoke = not amongusjoke
		if amongusjoke then
		setProperty('camHUD.x', 5)
		end
		if not amongusjoke then
		setProperty('camHUD.x', -7)
		end
		doTweenX('among us joke haha funny', 'camHUD', 0, 0.5, 'sineOut')
	end
end