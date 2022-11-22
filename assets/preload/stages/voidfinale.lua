function onCreate()
	addCharacterToList('bf-night', 'bf')
	addCharacterToList('specials', 'dad')
if not lowQuality then
if isStoryMode then
	makeAnimatedLuaSprite('cut','thegreatfinale/transform_cutscene',300, 0)
	addAnimationByPrefix('cut','idle','Init',24,true)
	addAnimationByPrefix('cut','glitch1','GlitchA',12,false)
	addAnimationByPrefix('cut','glitch2','GlitchB',12,false)
	addAnimationByPrefix('cut','glitch3','GlitchC',12,false)
	addAnimationByPrefix('cut','death','Dead',12,false)
	addAnimationByPrefix('cut','bye','Gone',12,false)
	addAnimationByPrefix('cut','screech','Scream',12,true)
	objectPlayAnimation('cut','idle',true)
	setScrollFactor('cut', 0, 0);
	scaleObject('cut', 1, 1)
	setProperty('cut.alpha', 0.0001)

	makeAnimatedLuaSprite('particles','thegreatfinale/transform_particles',-250, -200)
	addAnimationByPrefix('particles','idle','Succ',12,true)
	objectPlayAnimation('particles','idle',true)
	setScrollFactor('particles', 0, 0);
	scaleObject('particles', 1.5, 1.5)
	setProperty('particles.alpha', 0.0001)
end
	
	makeLuaSprite('back8', 'bg', -1000, -150)
	setScrollFactor('back8', 0.3, 0.3)
	scaleObject('back8', 1.6, 1.6)
	
	makeLuaSprite('ripbozo', 'holoBroken', -300, 0)
	setScrollFactor('ripbozo', 0.6, 0.6)
	scaleObject('ripbozo', 1, 1)
	
	makeAnimatedLuaSprite('back4','thegreatfinale/oblivionBG',-1500,-250)
	addAnimationByPrefix('back4', 'bapbapbap', 'BG Bop', 24, false)
	setScrollFactor('back4', 0.3, 0.3);
	scaleObject('back4', 2,2)
	
	makeAnimatedLuaSprite('stage','stage',-300,-350)
	addAnimationByPrefix('stage','hehe','Stage Bop',24,false)
	setScrollFactor('stage', 1, 1);
	scaleObject('stage', 1.2, 1.2)
	
	makeLuaSprite('back1','thegreatfinale/oblivionDark1',-600,-150)
	setScrollFactor('back1', 0.4, 0.4);
	scaleObject('back1', 1.35,1.35)
	
	makeLuaSprite('back2','thegreatfinale/oblivionDark2',-600,-150)
	setScrollFactor('back2', 0.5, 0.5);
	scaleObject('back2', 1.35,1.35)
	
	makeLuaSprite('back3','thegreatfinale/oblivionDark3',-600,-150)
	setScrollFactor('back3', 0.3, 0.3);
	scaleObject('back3', 1.35,1.35)
	
	makeLuaSprite('back22','thegreatfinale/oblivionDark2',-750,-200)
	setScrollFactor('back22', 2, 2);
	scaleObject('back22', 2,2)
	setPropertyLuaSprite('back22', 'flipX', true); --mirror sprite horizontally
	
	makeLuaSprite('therock1', 'therockdark', -100, -50)
	setScrollFactor('therock1', 0.9, 0.9)
	scaleObject('therock1', 1, 1)
	
	makeLuaSprite('therock2', 'therock_butnear', -250, 150)
	setScrollFactor('therock2', 1.4, 1.4)
	scaleObject('therock2', 0.7, 0.7)
		
	makeAnimatedLuaSprite('fuckers','thegreatfinale/hehehebop',-350,-200)
	addAnimationByPrefix('fuckers','dance','Neo Boppin',24,false)
	objectPlayAnimation('fuckers','dance',false)
	setScrollFactor('fuckers', 0.8, 0.8);
	scaleObject('fuckers', 1.2, 1.2)
		
	makeAnimatedLuaSprite('fuckersbutscaredsomehow','whyaretheyscared2',-250,-200)
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
	
	makeLuaSprite('black2', 'blackpeople', -800, -300);
	setLuaSpriteScrollFactor('black2', 0, 0);
	scaleObject('black2', 3, 3);
	setProperty('black2.alpha', 0.0001)
	
	makeLuaSprite('black3', 'thegreatfinale/behindhim', -800, -500);
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
	
	makeLuaSprite('thethingie', 'camTint', 0, 0);
	setLuaSpriteScrollFactor('thethingie', 0, 0);
	scaleObject('thethingie', 1, 1);
	setProperty('thethingie.alpha', 1)
	setObjectCamera('thethingie', 'other')
	
	makeAnimatedLuaSprite('bgglitch', 'thegreatfinale/okmaybeuseit', -550, -500);
	addAnimationByPrefix('bgglitch', 'glitchy', 'Glitch FX', 12, true)
	addAnimationByPrefix('bgglitch', 'idle', 'Init', 12, false)
	objectPlayAnimation('bgglitch', 'idle', true)
	setLuaSpriteScrollFactor('bgglitch', 1, 1);
	scaleObject('bgglitch', 1, 1);
	
	makeLuaSprite('bfmomen', 'bfandhemomen', 0, 0)
	setScrollFactor('bfmomen', 0, 0)
	scaleObject('bfmomen', 1, 1)
	setProperty('bfmomen.alpha', 0.0001)
	setObjectCamera('bfmomen', 'other')
	
	makeAnimatedLuaSprite('backbroken','bgbroken',-600,-350)
	addAnimationByPrefix('backbroken','idle','Initial',12,true)
	addAnimationByPrefix('backbroken','break1','1st Break',12,false)
	addAnimationByPrefix('backbroken','break2','2nd Break',12,false)
	objectPlayAnimation('backbroken','idle',true)
	setScrollFactor('backbroken', 0.3, 0.3);
	scaleObject('backbroken', 1.6, 1.6)
	
    makeLuaSprite('thescreen','',0,-30)
    makeGraphic('thescreen',2000,2000,'646464')
    setObjectCamera('thescreen','other')
	scaleObject('thescreen', 2, 2)
    setScrollFactor('thescreen',0,0)
	setProperty('thescreen.alpha', 0.0001)
	setBlendMode('thescreen','SUBTRACT')
	
	makeLuaSprite('bfnightmare', 'bfnmmomen', 825, 300)
	setScrollFactor('bfnightmare', 1, 1)
	scaleObject('bfnightmare', 1, 1)
	setProperty('bfnightmare.alpha', 0.0001)
	
	makeLuaSprite('heavyisdead', 'boomisdead', 440, 490)
	setScrollFactor('heavyisdead', 1, 1)
	scaleObject('heavyisdead', 1, 1)
	
	makeLuaSprite('themic', 'thegreatfinale/themic', 440, 690)
	setScrollFactor('themic', 1, 1)
	scaleObject('themic', 1, 1)
	setProperty('themic.angle', 80)
	setProperty('themic.alpha', 0.0001)
	
	makeAnimatedLuaSprite('blackhole','thegreatfinale/no face bozo',80, 30)
	addAnimationByPrefix('blackhole','idle','Succ',24,true)
	objectPlayAnimation('blackhole','idle',true)
	setScrollFactor('blackhole', 1, 1);
	scaleObject('blackhole', 1, 1)
	setProperty('blackhole.alpha', 0.0001)
	
	addLuaSprite('back8', false)
	addLuaSprite('back4', false)
	addLuaSprite('back1', false)
	addLuaSprite('backbroken', false)
	addLuaSprite('back2', false)
	addLuaSprite('back3', false)
	addLuaSprite('ripbozo', false)
	addLuaSprite('fuckers', false)
	addLuaSprite('therock1', false)
	addLuaSprite('fuckersbutscaredsomehow', false)
	addLuaSprite('bfnightmare', true)
	addLuaSprite('therock2', true)
	addLuaSprite('stage', false)
	addLuaSprite('back22', true)
	addLuaSprite('heavyisdead', false)
	addLuaSprite('themic', false)
	addLuaSprite('blackhole', false)
	addLuaSprite('bgglitch', true)
	addLuaSprite('bfmomen', true)
	addLuaSprite('black', true)
	addLuaSprite('black2', true)
	addLuaSprite('black3', true)
	addLuaSprite('cum2', false)
	addLuaSprite('particles', true)
	addLuaSprite('cut', true)
	addLuaSprite('cum', true)
	addLuaSprite('thethingie', true)
    addLuaSprite('thescreen',true)
		if songName == 'Donut' then
			makeLuaSprite('back', 'DONUTSONGBG', -400, -500)
			setScrollFactor('back', 1, 1)
			scaleObject('back', 1.2, 1.2)
	
	makeLuaSprite('heavytf2', 'unfunny images from close chuckle/heby tf2', 500, 530)
	scaleObject('heavytf2', 0.3, 0.2)
	setScrollFactor('heavytf2', 1, 1)
			addLuaSprite('back', false)
			addLuaSprite('heavytf2', false)
			setProperty('back22.alpha', 0)
			setProperty('therock2.alpha', 0.0001)
			setProperty('thethingie.alpha', 0.0001)
		end
end
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end