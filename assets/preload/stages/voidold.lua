function onCreate()
if not lowQuality then
	
	makeLuaSprite('back', 'bg', -1000, -150)
	setScrollFactor('back', 0.3, 0.3)
	scaleObject('back', 1.6, 1.6)
	
	makeLuaSprite('backflash', 'bgdrop', -1000, -150)
	setScrollFactor('backflash', 0.3, 0.3)
	scaleObject('backflash', 1.6, 1.6)
	setProperty('backflash.alpha', 0)
	
	makeLuaSprite('stage','old/stage',-300,-200)
	setScrollFactor('stage', 1, 1);
	scaleObject('stage', 1.2, 1.2)
	
	makeLuaSprite('therock1old', 'therock', -100, -50)
	setScrollFactor('therock1old', 0.9, 0.9)
	scaleObject('therock1old', 1, 1)
	
	makeLuaSprite('therock2old', 'therock_butnear', -250, 150)
	setScrollFactor('therock2old', 1.4, 1.4)
	scaleObject('therock2old', 0.7, 0.7)
		
	makeAnimatedLuaSprite('fuckersold','old/bopping',-250,-200)
	addAnimationByPrefix('fuckersold','dance','Holo Boppers',24,false)
	objectPlayAnimation('fuckersold','dance',false)
	setScrollFactor('fuckersold', 0.8, 0.8);
	scaleObject('fuckersold', 1.2, 1.2)
	
	makeLuaSprite('black', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black', 0, 0);
	scaleObject('black', 3, 3);
	setProperty('black.alpha', 0)
	setObjectCamera('black', 'other')
	
	makeLuaSprite('black2', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black2', 0, 0);
	scaleObject('black2', 3, 3);
	setProperty('black2.alpha', 0)
	
	makeLuaSprite('cum', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum', 0, 0);
	scaleObject('cum', 3, 3);
	setProperty('cum.alpha', 0)
	
	makeLuaSprite('cum2', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum2', 0, 0);
	scaleObject('cum2', 3, 3);
	setProperty('cum2.alpha', 0)
	
	addLuaSprite('back', false)
	addLuaSprite('backflash', false)
	addLuaSprite('fuckersold', false)
	addLuaSprite('therock1old', false)
	addLuaSprite('therock2old', true)
	addLuaSprite('stage', false)
	addLuaSprite('cum', true)
	addLuaSprite('black', true)
	addLuaSprite('black2', true)
	addLuaSprite('cum2', false)
	addLuaSprite('cum', true)
end
	addLuaSprite('thehealthold', true)
	setProperty('thehealthold.visible', true)
	removeLuaSprite('epekup')
	removeLuaSprite('epekdown')
	removeLuaSprite('thehealth')
	removeLuaSprite('JukeBox')
	removeLuaText('difficulty')
	removeLuaText('nowplaying')
	removeLuaText('nowplaying2')
	removeLuaText('nowplaying3')
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end