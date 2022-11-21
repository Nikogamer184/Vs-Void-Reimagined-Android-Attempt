function onUpdate(elapsed)
        if (curStep > 1471 and curStep < 1695) then
            for j = 0,getProperty('notes.length') -1 do
                noteType = getPropertyFromGroup('notes', j, 'noteType')

                if (noteType ~= 'BendySplashNote' and noteType ~= 'BendyShadowNote') then
                    setPropertyFromGroup('notes', j, 'texture','oblivion')
                end
            end
            for i = 4,7 do
                setPropertyFromGroup('strumLineNotes', i, 'texture','oblivion')
            end
        end
        
    if (curStep == 1696) then
        for j = 0,getProperty('notes.length') -1 do
            if getPropertyFromGroup('notes', j, 'noteType') ~= 'BendySplashNote' and getPropertyFromGroup('notes', j, 'noteType') ~= 'BendyShadowNote' then
                setPropertyFromGroup('notes', j, 'texture','')
            end
        end
        for i = 4,7 do
            setPropertyFromGroup('strumLineNotes', i, 'texture','NOTE_assets')
        end
    end
end