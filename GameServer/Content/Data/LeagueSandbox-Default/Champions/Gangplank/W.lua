function finishCasting()
    local owner = owner
    local newHealth = owner:getStats():getCurrentHealth() + 10 + 70*spellLevel + 1*owner:getStats():getTotalAp()
    local maxHealth = owner:getStats():getMaxHealth()
    
    
    if newHealth >= maxHealth then
        owner:getStats():setCurrentHealth(maxHealth)
    else
        owner:getStats():setCurrentHealth(newHealth)
    end    
end

function applyEffects()
end
