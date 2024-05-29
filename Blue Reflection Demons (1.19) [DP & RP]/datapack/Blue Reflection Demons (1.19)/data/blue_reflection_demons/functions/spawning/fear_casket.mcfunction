#******************* Spawning --> Fear Casket *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Fear Casket -------
# armor_stand.tags.Add("fear_casket");
# zombie.tags.Add("fear_casket");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add fear_casket
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add fear_casket

#------- Sets the name for the base mob -------
# zombie.name = "Fear Casket";
execute as @e[type=zombie, tag=fear_casket, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Fear Casket", "color": "#19B2FF"}'}
