#******************* Spawning --> Blue Reflection Demons --> Fear Casket *******************


#------- Adds a new tag, indicating the armor stand and mob are a Fear Casket -------
# armor_stand.tags.Add("fear_casket");
# mob.tags.Add("fear_casket");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add fear_casket
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add fear_casket

#------- Sets the name for the base mob -------
# mob.name = "Fear Casket";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=fear_casket, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Fear Casket", "color": "#19B2FF"}'}
