function onCreate()
if isStoryMode then
	
	makeLuaSprite('ending', 'end', 0, 0)
	setScrollFactor('ending', 0, 0)
	scaleObject('ending', 1, 1)
	setProperty('ending.alpha', 0)
	setObjectCamera('ending', 'other')
	
	makeLuaText('first', '', 0, 120, 400)
	setTextSize('first', 35)
	setObjectCamera('first', 'other')
	
	makeLuaText('second', '', 0, 140, 430)
	setTextSize('second', 35)
	setObjectCamera('second', 'other')
	
	makeLuaText('third', '', 0, 200, 460)
	setTextSize('third', 35)
	setObjectCamera('third', 'other')
	
	makeLuaText('four', '', 0, 550, 520)
	setTextSize('four', 40)
	setObjectCamera('four', 'other')
	
	makeLuaText('five', '', 0, 250, 990)--оригинал 590
	setTextSize('five', 35)
	setObjectCamera('five', 'other')
	
	makeLuaText('six', '', 0, 280, 920)--оригинал 620
	setTextSize('six', 35)
	setObjectCamera('six', 'other')
	
	setProperty('first.alpha', 0)
	setProperty('second.alpha', 0)
	setProperty('third.alpha', 0)
	setProperty('four.alpha', 0)
	setProperty('five.alpha', 0)
	setProperty('six.alpha', 0)
	
	setTextFont('first', 'warface.ttf')
	setTextFont('second', 'warface.ttf')
	setTextFont('third', 'warface.ttf')
	setTextFont('four', 'warface.ttf')
	setTextFont('five', 'warface.ttf')
	setTextFont('six', 'warface.ttf')
	
	addLuaSprite('ending', true)
	addLuaText('first', true)
	addLuaText('second', true)
	addLuaText('third', true)
	addLuaText('four', true)
	addLuaText('five', true)
	addLuaText('six', true)
end
end
function onUpdate()
if difficulty == 0 then
	eng = true
end
if difficulty == 1 then
	rus = true
end	if rus == true then
		setTextString('first', 'Даже не ожидал что ты будешь проходить старые песни в сюжете.')
		setTextString('second', 'Теперь пожалуйста напиши в дискорде мне понравился мод или говно полное')
		setTextString('third', '')
		setTextString('four', 'Спасибо за игру (правда)')
		setTextString('five', '')
		setTextString('six', '')
	end
	if eng == true then
		setTextString('first', "Didn't expect you to play old songs on story mode.")
		setTextString('second', 'Now please let me know if you liked my mod or is it shit.')
		setTextString('third', '')
		setTextString('four', 'Thanks for playing(really)')
		setTextString('five', '')
		setTextString('six', '')
	end
end