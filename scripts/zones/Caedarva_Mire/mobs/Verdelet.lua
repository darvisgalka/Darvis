-----------------------------------
-- Area: Caedarva Mire
-- NPC: Verdelet
-- ZNM Path: Lamia
-- @pos http://ffxiclopedia.wikia.com/wiki/Mint_Drop traded to ??? at  (J-6)
-----------------------------------

require("scripts/globals/status");
    
-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onCriticalHit
-----------------------------------

function onCriticalHit(mob)   
 
    if (math.random(100) < 20 and mob:AnimationSub() == 0) then  -- 20% change to break that horn on crit   
        mob:AnimationSub(1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

	ally:addCurrency("dominion_note",150);
	ally:PrintToPlayer( "You earned 150 Dominion Notes!");

end;
