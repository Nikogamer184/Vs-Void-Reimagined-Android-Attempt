function onCreate()
if isStoryMode then
	makeAnimatedLuaSprite('box', 'dial/dialbox', -100, 200)
	addAnimationByPrefix('box', 'hi',  'Text Box Appear', 12, false)
	setScrollFactor('box', 0, 0)
	scaleObject('box', 2, 2)
	setProperty('box.alpha', 0)

	
	makeAnimatedLuaSprite('v', 'dial/ac', 0, -100)
	addAnimationByPrefix('v', 'norm',  'Void Normal instance', 12, false)
	addAnimationByPrefix('v', 'mad',  'Void Mad instance', 12, false)
	addAnimationByPrefix('v', 'yell',  'Void Yell instance', 14, true)
	setScrollFactor('v', 0, 0)
	scaleObject('v', 1, 1)
	setProperty('v.alpha', 0)

	makeAnimatedLuaSprite('b', 'dial/bfandtheboys', 900, -100)
	addAnimationByPrefix('b', 'norm',  'Bf Normal instance', 12, false)
	addAnimationByPrefix('b', 'smug',  'Bf Smug instance', 12, false)
	addAnimationByPrefix('b', 'umm',  'Bf Umm instance', 12, false)
	addAnimationByPrefix('b', 'ready',  'Bf Ready instance', 12, false)
	addAnimationByPrefix('b', 'boysnorm',  'Accretion Normal instance', 12, false)
	addAnimationByPrefix('b', 'boysumm',  'Accretion Umm instance', 12, false)
	setScrollFactor('b', 0, 0)
	scaleObject('b', 1, 1)
	setProperty('b.alpha', 0)
	
	makeLuaSprite('arrow', 'dial/arrow', 1250, 400)
	setScrollFactor('arrow', 0, 0)
	scaleObject('arrow', 0.5, 0.5)
	setProperty('arrow.alpha', 0)
	
	makeLuaSprite('ending', 'endtrue', 0, 0)
	setScrollFactor('ending', 0, 0)
	scaleObject('ending', 1, 1)
	setProperty('ending.alpha', 0)
	setObjectCamera('ending', 'other')
	
	makeLuaText('wordend1', '', 1000, 150, 400)
	setTextSize('wordend1', 30)
	setObjectCamera('wordend1', 'other')
	
	makeLuaText('wordend2', '', 1000, 200, 920)--оригинал 920
	setTextSize('wordend2', 30)
	setObjectCamera('wordend2', 'other')
	
	setProperty('wordend1.alpha', 0)
	setProperty('wordend2.alpha', 0)
	
    setTextAlignment('wordend1', 'center')
    setTextAlignment('wordend2', 'center')
	
	setTextFont('wordend1', 'warface.ttf')
	setTextFont('wordend2', 'warface.ttf')
	
	addLuaSprite('v', true)
	addLuaSprite('b', true)
	addLuaSprite('arrow', true)
	addLuaSprite('box', true)
	addLuaSprite('ending')
	addLuaText('wordend1')
	addLuaText('wordend2')
end
end
function onUpdate()
if difficulty == 0 then
	eng = true
end
if difficulty == 1 then
	rus = true
end	
	if rus == true then
		setTextString('wordend1', 'После второго раунда настоящий В.П. был повержен. И пока Гф и Бф обсуждали о том , откуда у второго взялись силы Инди Кросса, Воид проснулся и неохотно поблагодарилл БФа за то, что не уничтожил половину галактики.                                                                               КОНЕЦ (правда)')
		setTextString('wordend2', 'Теперь доступна ХРЕНОВА ТОННА БОНУСНОГО КОНТЕНТА!                                                  Спасибо, что поиграл в VS Void: Reimagined.                                               (господи зачем я сделал английский перевод)')
	end
	if eng == true then
		setTextString('wordend1', 'After second round the real A.C. was defeated. And while Gf and Bf were discussing about how Bf got powers of Indie Cross, Void woke up and begrudgingly thanked Bf for not destroying half of the galaxy               THE END(for real)')
		setTextString('wordend2', "Now you've unlocked SHIT TON OF BONUS CONTENT!                                                      Thank you for playing VS Void: Reimagined.                                                     (jesus why did i do the english translation)")
	end
end