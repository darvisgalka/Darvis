-----------------------------------
-- Area: Ordelle's Caves
--  MOB: Goblin Furrier
-----------------------------------

require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
    checkGoVregime(ally,mob,657,1);
end;