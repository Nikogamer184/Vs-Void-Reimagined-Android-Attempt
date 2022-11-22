function onCreate()
if not lowQuality then
	precacheImage('metro/glowthingwhenuhh')
	precacheImage('metro/glowthingwhenuhh2')
	precacheImage('metro/skyflash')
	
	makeLuaSprite('back', 'metro/sky', -500, -250)
	setScrollFactor('back', 0.3, 0.3)
	scaleObject('back', 1.6, 1.6)
	
	makeLuaSprite('goofy ass', 'unfunny images from close chuckle/the goofy', -500, 200)
	setScrollFactor('goofy ass', 0.5, 0.5)
	scaleObject('goofy ass', 0.3, 0.3)
	
	makeLuaSprite('stage','metro/roof',-500,0)
	setScrollFactor('stage', 1, 1);
	scaleObject('stage', 1.4, 1.4)
		
	makeLuaSprite('back2','metro/bg',-700,-50)
	setScrollFactor('back2', 0.4, 0.4);
	scaleObject('back2', 1.6, 1.6)
	
	makeLuaSprite('light1', 'metro/lightb', 0, 500)
	setScrollFactor('light1', 0.6, 0.6)
	scaleObject('light1', 1, 1)
	
	makeLuaSprite('light2', 'metro/lightg', 400, 500)
	setScrollFactor('light2', 0.6, 0.6)
	scaleObject('light2', 1, 1)
	
	makeLuaSprite('light3', 'metro/lightb', 800, 500)
	setScrollFactor('light3', 0.6, 0.6)
	scaleObject('light3', 1, 1)
	
	makeLuaSprite('light4', 'metro/lightg', 1200, 500)
	setScrollFactor('light4', 0.6, 0.6)
	scaleObject('light4', 1, 1)
	
	makeLuaSprite('whitething', 'metro/glowthingwhenuhh', -300, -100)
	setScrollFactor('whitething', 0, 0)
	scaleObject('whitething', 1.5, 1.5)
	setBlendMode('whitething','add')
	setProperty('whitething.alpha', 0)
	
	makeLuaSprite('whitething2', 'metro/glowthingwhenuhh2', -300, -200)
	setScrollFactor('whitething2', 0, 0)
	scaleObject('whitething2', 1.5, 1.5)
	setBlendMode('whitething2','add')
	setProperty('whitething2.alpha', 0.0001)
	
	makeLuaSprite('backflashidk', 'metro/skyflash', -500, -250);
	setLuaSpriteScrollFactor('backflashidk', 0.3, 0.3);
	scaleObject('backflashidk', 1.6, 1.6);
	setProperty('backflashidk.alpha', 0)
	
	makeLuaSprite('cum2', 'cum', -300, -100)
	setScrollFactor('cum2', 0, 0)
	scaleObject('cum2', 1.5, 1.5)
	setProperty('cum2.alpha', 0.0001)
	
	makeLuaSprite('cum', 'cum', -300, -100)
	setScrollFactor('cum', 0, 0)
	scaleObject('cum', 1.5, 1.5)
	setProperty('cum.alpha', 0.0001)
	
	makeLuaSprite('AMBLACK', 'blackpeople', -300, -100)
	setScrollFactor('AMBLACK', 0, 0)
	scaleObject('AMBLACK', 1.5, 1.5)
	setProperty('AMBLACK.alpha', 0.0001)
	setObjectCamera('AMBLACK', 'other')
	
	addLuaSprite('back', false)
	addLuaSprite('backflashidk', false)
	addLuaSprite('back2', false)
	addLuaSprite('goofy ass', false)
	addLuaSprite('light1', false)
	addLuaSprite('light2', false)
	addLuaSprite('light3', false)
	addLuaSprite('light4', false)
	addLuaSprite('stage', false)
	addLuaSprite('cum2', false)
	addLuaSprite('whitething', true)
	addLuaSprite('whitething2',true)
	addLuaSprite('cum', true)
	addLuaSprite('AMBLACK', true)
end
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end