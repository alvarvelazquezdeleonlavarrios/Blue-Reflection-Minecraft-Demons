#******************* Spawning --> Blue Reflection Demons --> Anger Tapirus *******************


#------- Adds a new tag, indicating the armor stand and mob are a Anger Tapirus -------
# armor_stand.tags.Add("anger_tapirus");
# mob.tags.Add("anger_tapirus");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add anger_tapirus
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add anger_tapirus

#------- Sets the name for the base mob -------
# mob.name = "Anger Tapirus";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=anger_tapirus, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Anger Tapirus", "color": "#19B2FF"}'}
