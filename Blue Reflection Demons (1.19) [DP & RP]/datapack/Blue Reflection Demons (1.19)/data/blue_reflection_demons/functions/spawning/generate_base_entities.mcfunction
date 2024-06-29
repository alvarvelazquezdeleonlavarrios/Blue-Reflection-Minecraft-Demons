#******************* Spawning --> Settings --> Generate Base Entities *******************


#------- Summons an armor stand with the basic information for any demon's 3D model. -------
# ArmorStand armor_stand = new ArmorStand( true, true, false, true, "blue_reflection_demon" );
summon armor_stand ~ ~ ~ {Silent:1b, Invulnerable:1b, Marker:0b, Invisible:1b, Tags:["blue_reflection_demon"]}

#------- Summons a zombie with the basic information for any demon. -------
# Zombie zombie = new Zombie( true, true, false, false, "blue_reflection_demon", 0, null);
summon zombie ~ ~ ~ {Silent: 1b, Invulnerable:1b, IsBaby:0b, CanPickUpLoot:0b, Tags:["blue_reflection_demon"], Attributes:[{Name:"generic.attack_damage",Base:0}], DeathLootTable:""}
