-----------------------------------
-- Area: Temenos N T    
-- NPC:  Telchines_Dragoon
-----------------------------------
package.loaded["scripts/zones/Temenos/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/limbus");
require("scripts/zones/Temenos/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
        GetMobByID(16928791):updateEnmity(target);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
		ally:addCurrency("mweya_plasm",33);
    ally:PrintToPlayer( "You earned 33 Mweya Plasm!");
    GetNPCByID(16928770+452):setStatus(STATUS_NORMAL);
end;
