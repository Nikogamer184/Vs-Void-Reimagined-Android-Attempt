function onCreate()
if not lowQuality then
	makeLuaSprite('back', 'bg', -1000, -150)
	setScrollFactor('back', 0.3, 0.3)
	scaleObject('back', 1.6, 1.6)
	
	makeLuaSprite('backflash', 'bgdrop', -1000, -150)
	setScrollFactor('backflash', 0.3, 0.3)
	scaleObject('backflash', 1.6, 1.6)
	setProperty('backflash.alpha', 0)
	
	makeAnimatedLuaSprite('stage','stage',-300,-350)
	addAnimationByPrefix('stage','hehe','Stage Bop',24,false)
	setScrollFactor('stage', 1, 1);
	scaleObject('stage', 1.2, 1.2)
	
	makeLuaSprite('therock1', 'therockhalf', -100, -50)
	setScrollFactor('therock1', 0.9, 0.9)
	scaleObject('therock1', 1, 1)
	
	makeLuaSprite('therock3', 'therock2', 1200, 150)
	setScrollFactor('therock3', 0.4, 0.4)
	scaleObject('therock3', 0.3, 0.3)
	doTweenX('therock3', 'therock3', -1600, 300, 'linear')
	
	makeLuaSprite('therock4', 'therock2', 1000, 550)
	setScrollFactor('therock4', 0.4, 0.4)
	scaleObject('therock4', 0.3, 0.3)
	doTweenX('therock4', 'therock4', -1600, 200, 'linear')
	
	makeLuaSprite('therock2', 'therock_butnearhalf', -250, 150)
	setScrollFactor('therock2', 1.4, 1.4)
	scaleObject('therock2', 0.7, 0.7)
			
	makeAnimatedLuaSprite('fuckers','boppingbutempty',-250,-200)
	addAnimationByPrefix('fuckers','dance','Holo Boppers',24,false)
	objectPlayAnimation('fuckers','dance',false)
	setScrollFactor('fuckers', 0.8, 0.8);
	scaleObject('fuckers', 1.2, 1.2)
	
	makeLuaSprite('black2', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black2', 0, 0);
	scaleObject('black2', 3, 3);
	setProperty('black2.alpha', 0.0001)
		
	makeLuaSprite('cum2', 'cum', -300, -100)
	setScrollFactor('cum2', 0, 0)
	scaleObject('cum2', 1.5, 1.5)
	setProperty('cum2.alpha', 0.0001)
	
	makeLuaSprite('cum', 'cum', -300, -100)
	setScrollFactor('cum', 0, 0)
	scaleObject('cum', 1.5, 1.5)
	setProperty('cum.alpha', 0.0001)
	
	makeLuaSprite('backhalf', 'metro/backhalf', -650, -125)
	setScrollFactor('backhalf', 1, 1)
	scaleObject('backhalf', 1.6, 1.6)
	setObjectCamera('backhalf', 'game')
	
	makeAnimatedLuaSprite('pixelthing', 'pixelthing', -250, 0)
	addAnimationByPrefix('pixelthing', 'amogus', 'pixelthing', 24, true)
	setScrollFactor('pixelthing', 1, 1)
	scaleObject('pixelthing', 1.6, 1.6)
	
	makeLuaSprite('heavytf2', 'unfunny images from close chuckle/heby tf2', 800, 700)
	scaleObject('heavytf2', 0.3, 0.2)
	setScrollFactor('heavytf2', 1, 1)
	
		
	addLuaSprite('back', false)
	addLuaSprite('backflash', false)
	addLuaSprite('therock3', false)
	addLuaSprite('therock4', false)
	addLuaSprite('fuckers', false)
	addLuaSprite('therock1', false)
	addLuaSprite('therock2', true)
	addLuaSprite('stage', false)
	addLuaSprite('heavytf2', false)
	addLuaSprite('black2', true)
	addLuaSprite('backhalf', false)
	addLuaSprite('pixelthing', true)
end
	
end
function onCreatePost()
	setProperty('gf.visible', false)
end