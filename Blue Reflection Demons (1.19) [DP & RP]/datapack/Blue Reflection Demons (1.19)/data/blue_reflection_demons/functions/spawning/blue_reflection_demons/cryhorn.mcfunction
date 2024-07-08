#******************* Spawning --> Blue Reflection Demons --> Cryhorn *******************


#------- Adds a new tag, indicating the armor stand and mob are a Cryhorn -------
# armor_stand.tags.Add("cryhorn");
# mob.tags.Add("cryhorn");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add cryhorn
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add cryhorn

#------- Sets the name for the base mob -------
# mob.name = "Cryhorn";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=cryhorn, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Cryhorn", "color": "#19B2FF"}'}
