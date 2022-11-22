function onCreate()
	addCharacterToList('bfbutnight', 'bf')
	addCharacterToList('void-crazy', 'dad')
	addCharacterToList('void-crazy-dark', 'dad')
	addCharacterToList('void-throat', 'dad')
	addCharacterToList('gf-wellwellwell', 'gf')
	addCharacterToList('bf-night2', 'gf')
if not lowQuality then
	
	makeAnimatedLuaSprite('back','darkbg',-1000,-150)
	addAnimationByPrefix('back','idle','Bg Bloop',12,true)
	objectPlayAnimation('back','idle',true)
	setScrollFactor('back', 0.3, 0.3);
	scaleObject('back', 1.6, 1.6)

	makeAnimatedLuaSprite('backbroken','bgbroken',-600,-350)
	addAnimationByPrefix('backbroken','idle','Initial',12,true)
	addAnimationByPrefix('backbroken','break1','1st Break',12,false)
	addAnimationByPrefix('backbroken','break2','2nd Break',12,false)
	objectPlayAnimation('backbroken','idle',true)
	setScrollFactor('backbroken', 0.3, 0.3);
	scaleObject('backbroken', 1.6, 1.6)
	
	makeLuaSprite('backflash', 'bg', -1000, -150)
	setScrollFactor('backflash', 0.3, 0.3)
	scaleObject('backflash', 1.6, 1.6)
	setProperty('backflash.alpha', 1)
	
	makeAnimatedLuaSprite('stage','stage',-300,-350)
	addAnimationByPrefix('stage','hehe','Stage Bop',24,false)
	setScrollFactor('stage', 1, 1);
	scaleObject('stage', 1.2, 1.2)
	
	makeLuaSprite('therock1', 'therock', -100, -50)
	setScrollFactor('therock1', 0.9, 0.9)
	scaleObject('therock1', 1, 1)
	
	makeLuaSprite('therock2', 'therock_butnear', -250, 150)
	setScrollFactor('therock2', 1.4, 1.4)
	scaleObject('therock2', 0.7, 0.7)
	
	makeLuaSprite('bfmomen', 'bfandhemomen', 0, 0)
	setScrollFactor('bfmomen', 0, 0)
	scaleObject('bfmomen', 1, 1)
	setProperty('bfmomen.alpha', 0.0001)
	setObjectCamera('bfmomen', 'other')
	setBlendMode('bfmomen','add')
		
	makeAnimatedLuaSprite('fuckers','boppingbutempty',-250,-200)
	addAnimationByPrefix('fuckers','dance','Holo Boppers',24,false)
	objectPlayAnimation('fuckers','dance',false)
	setScrollFactor('fuckers', 0.8, 0.8);
	scaleObject('fuckers', 1.2, 1.2)
		
	makeAnimatedLuaSprite('fuckersbutscaredsomehow','whyaretheyscared',-250,-200)
	addAnimationByPrefix('fuckersbutscaredsomehow','dance','Holo Boppers',24,false)
	objectPlayAnimation('fuckersbutscaredsomehow','dance',false)
	setScrollFactor('fuckersbutscaredsomehow', 0.8, 0.8);
	scaleObject('fuckersbutscaredsomehow', 1.2, 1.2)
	setProperty('fuckersbutscaredsomehow.alpha', 0.0001)
	
	makeLuaSprite('black', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black', 0, 0);
	scaleObject('black', 3, 3);
	setProperty('black.alpha', 0.0001)
	setObjectCamera('black', 'other')
	
	makeLuaSprite('black2', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black2', 0, 0);
	scaleObject('black2', 3, 3);
	setProperty('black2.alpha', 0.0001)
	
	makeLuaSprite('black3', 'blackpeople', -800, -500);
	setLuaSpriteScrollFactor('black3', 0, 0);
	scaleObject('black3', 3, 3);
	setProperty('black3.alpha', 0.0001)
	
	makeLuaSprite('cum', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum', 0, 0);
	scaleObject('cum', 3, 3);
	setProperty('cum.alpha', 0.0001)
	
	makeLuaSprite('cum2', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum2', 0, 0);
	scaleObject('cum2', 3, 3);
	setProperty('cum2.alpha', 0.0001)
	
	makeLuaSprite('cum3', 'cum', -800, -500);
	setLuaSpriteScrollFactor('cum3', 0, 0);
	scaleObject('cum3', 3, 3);
	setProperty('cum3.alpha', 0.0001)
	setObjectCamera('cum3', 'other')
	
    makeLuaSprite('thescreen','',0,-30)
    makeGraphic('thescreen',2000,2000,'646464')
    setObjectCamera('thescreen','other')
	scaleObject('thescreen', 2, 2)
    setScrollFactor('thescreen',0,0)
	setProperty('thescreen.alpha', 0.0001)
	setBlendMode('thescreen','SUBTRACT')
	
	makeLuaSprite('back1','thegreatfinale/oblivionDark1',-600,-150)
	setScrollFactor('back1', 0.4, 0.4);
	scaleObject('back1', 1.35,1.35)
	setProperty('back1.alpha', 0.0001)
	
	makeLuaSprite('back2','thegreatfinale/oblivionDark2',-600,-150)
	setScrollFactor('back2', 0.5, 0.5);
	scaleObject('back2', 1.35,1.35)
	setProperty('back2.alpha', 0.0001)
	
	makeLuaSprite('back3','thegreatfinale/oblivionDark3',-600,-150)
	setScrollFactor('back3', 0.3, 0.3);
	scaleObject('back3', 1.35,1.35)
	setProperty('back3.alpha', 0.0001)
	
	makeLuaSprite('back22','thegreatfinale/oblivionDark2',-750,-200)
	setScrollFactor('back22', 2, 2);
	scaleObject('back22', 2,2)
	setProperty('back22.alpha', 0.0001)
	setPropertyLuaSprite('back22', 'flipX', true); --mirror sprite horizontally
	
	makeLuaSprite('heavyisdead', 'boomisdead', 440, 490)
	setScrollFactor('heavyisdead', 1, 1)
	scaleObject('heavyisdead', 1, 1)
	setProperty('heavyisdead.alpha', 0.0001)
		
	makeAnimatedLuaSprite('fuckers2','thegreatfinale/hehehebop',-350,-200)
	addAnimationByPrefix('fuckers2','dance','Neo Boppin',24,false)
	objectPlayAnimation('fuckers2','dance',false)
	setScrollFactor('fuckers2', 0.8, 0.8);
	scaleObject('fuckers2', 1.2, 1.2)
	setProperty('fuckers2.alpha', 0.0001)
	
	addLuaSprite('back', false)
	addLuaSprite('black3', false)
	addLuaSprite('backflash', false)
	addLuaSprite('back4', false)
	addLuaSprite('back1', false)
	addLuaSprite('backbroken', false)
	addLuaSprite('back2', false)
	addLuaSprite('back3', false)
	addLuaSprite('fuckers', false)
	addLuaSprite('fuckersbutscaredsomehow', false)
	addLuaSprite('fuckers2', false)
	addLuaSprite('therock1', false)
	addLuaSprite('therock2', true)
	addLuaSprite('stage', false)
	addLuaSprite('heavyisdead', false)
	addLuaSprite('back22', true)
	addLuaSprite('bfmomen', true)
	addLuaSprite('cum', true)
	addLuaSprite('black', true)
	addLuaSprite('black2', true)
	addLuaSprite('cum2', false)
	addLuaSprite('cum', true)
	addLuaSprite('cum3', true)
    addLuaSprite('thescreen',true)
end
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end