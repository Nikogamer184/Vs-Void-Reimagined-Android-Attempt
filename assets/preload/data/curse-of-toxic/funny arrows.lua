function onUpdate(elapsed)
        --if (curStep > 383 and curStep < 1151) or curStep > 1407 then
        if curStep > 0 then
            for j = 0,getProperty('notes.length') -1 do
                noteType = getPropertyFromGroup('notes', j, 'noteType')

                if (noteType ~= 'BendySplashNote' and noteType ~= 'BendyShadowNote') then
                    setPropertyFromGroup('notes', j, 'texture','stolennotesgobrr')
                end
            end
            for i = 4,7 do
                setPropertyFromGroup('strumLineNotes', i, 'texture','stolennotesgobrr')
            end
        end
        --if (curStep > 1151 and curStep < 1407) then
        --    for j = 0,getProperty('notes.length') -1 do
        --        noteType = getPropertyFromGroup('notes', j, 'noteType')
        --        if (noteType ~= 'BendySplashNote' and noteType ~= 'BendyShadowNote') then
        --            setPropertyFromGroup('notes', j, 'texture','real')
        --        end
        --    end
        --    for i = 4,7 do
        --        setPropertyFromGroup('strumLineNotes', i, 'texture','real')
        --    end
        --end
        
        
end