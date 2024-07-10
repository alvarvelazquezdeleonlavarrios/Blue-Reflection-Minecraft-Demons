#******************* Spawning --> Settings --> Generate Base Entities *******************


#------- Summons an armor stand with the basic information for any demon's 3D model. -------
# ArmorStand armor_stand = new ArmorStand( true, true, false, true, "blue_reflection_demon" );
summon armor_stand ~ ~ ~ {Silent:1b, Invulnerable:1b, Marker:0b, Invisible:1b, Tags:["blue_reflection_demon"]}

#------- Summons a vindicator with the basic information for any demon. -------
# Vindicator vindicator = new Vindicator( true, false, "blue_reflection_demon", 1, null);
summon vindicator ~ ~ ~ {Silent: 1b, CanPickUpLoot:0b, Tags:["blue_reflection_demon"], attributes:[{id:"generic.attack_damage",base:1}], DeathLootTable:""}
