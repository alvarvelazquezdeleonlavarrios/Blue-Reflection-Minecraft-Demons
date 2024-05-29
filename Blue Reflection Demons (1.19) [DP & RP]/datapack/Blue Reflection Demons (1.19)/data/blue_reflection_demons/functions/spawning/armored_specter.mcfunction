#******************* Spawning --> Armored Specter *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Armored Specter -------
# armor_stand.tags.Add("armored_specter");
# zombie.tags.Add("armored_specter");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add armored_specter
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add armored_specter

#------- Sets the name for the base mob -------
# zombie.name = "Armored Specter";
execute as @e[type=zombie, tag=armored_specter, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Armored Specter", "color": "#19B2FF"}'}
