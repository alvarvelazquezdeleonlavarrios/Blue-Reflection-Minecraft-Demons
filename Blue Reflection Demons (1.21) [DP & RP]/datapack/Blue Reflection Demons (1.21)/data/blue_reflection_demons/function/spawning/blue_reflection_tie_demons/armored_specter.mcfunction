#******************* Spawning --> Blue Reflection Tie Demons --> Armored Specter *******************


#------- Adds a new tag, indicating the armor stand and mob are a Armored Specter -------
# armor_stand.tags.Add("armored_specter");
# mob.tags.Add("armored_specter");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add armored_specter
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add armored_specter

#------- Sets the name for the base mob -------
# mob.name = "Armored Specter";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=armored_specter, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Armored Specter", "color": "#36B01E"}'}
