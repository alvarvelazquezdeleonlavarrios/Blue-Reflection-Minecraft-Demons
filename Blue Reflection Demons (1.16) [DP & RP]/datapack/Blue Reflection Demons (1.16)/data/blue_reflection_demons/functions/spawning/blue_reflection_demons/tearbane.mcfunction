#******************* Spawning --> Blue Reflection Demons --> Tearbane *******************


#------- Adds a new tag, indicating the armor stand and mob are a Tearbane -------
# armor_stand.tags.Add("tearbane");
# mob.tags.Add("tearbane");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add tearbane
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add tearbane

#------- Sets the name for the base mob -------
# mob.name = "Tearbane";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=tearbane, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Tearbane", "color": "#19B2FF"}'}
