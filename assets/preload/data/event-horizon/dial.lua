function onCreate()
if isStoryMode then
	makeAnimatedLuaSprite('box', 'dial/dialbox', -100, 200)
	addAnimationByPrefix('box', 'hi',  'Text Box Appear', 12, false)
	setScrollFactor('box', 0, 0)
	scaleObject('box', 2, 2)
	setProperty('box.alpha', 0)
		
	makeAnimatedLuaSprite('v', 'dial/v', 0, -100)
	addAnimationByPrefix('v', 'norm',  'Void Normal instance', 12, false)
	addAnimationByPrefix('v', 'smug',  'Void Smug instance', 12, false)
	addAnimationByPrefix('v', 'umm',  'Void Umm instance', 12, false)
	addAnimationByPrefix('v', 'wornout',  'Void Worn Out instance', 12, false)
	addAnimationByPrefix('v', 'mad',  'Void Mad instance', 12, false)
	addAnimationByPrefix('v', 'rage',  'Void Rage instance', 12, false)
	addAnimationByPrefix('v', 'crazy',  'Void Crazy instance', 12, false)
	addAnimationByPrefix('v', 'dark',  'Void Dark instance', 12, false)
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
	
	makeLuaSprite('ending', 'end', 0, 0)
	setScrollFactor('ending', 0, 0)
	scaleObject('ending', 1, 1)
	setProperty('ending.alpha', 0)
	setObjectCamera('ending', 'other')
	
	makeLuaText('wordend1', '', 1000, 150, 400)
	setTextSize('wordend1', 30)
	setObjectCamera('wordend1', 'other')
	
	makeLuaText('wordend2', '', 1000, 250, 920)--оригинал 920
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
	addLuaSprite('ending', true)
	
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
		setTextString('wordend1', 'После интенсивной битвы, Бф победил легеднарного В.П. Воида! Все были довольны представлением (кроме Воида, очевидно), а Бф и Гф отправились на землю в МакДональдс                                                                            КОНЕЦ(?)')
		setTextString('wordend2', 'Но сам Воид не собирается сдаваться.                                                                          Теперь доступна вторая неделя.')
	end
	if eng == true then
		setTextString('wordend1', 'After the intense battle, Bf won over the legendary A.C. Void! Everyone has enjoyed the performance (except for Void, obviously), while Bf and Gf traveled back to Earth to McDonalds                                                           THE END(?)')
		setTextString('wordend2', "But Void isn't giving up yet.                                                                                       Now you've unlocked second week.")
	end
end