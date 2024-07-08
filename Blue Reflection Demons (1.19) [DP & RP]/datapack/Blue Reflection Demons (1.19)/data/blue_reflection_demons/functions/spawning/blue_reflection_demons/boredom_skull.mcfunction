#******************* Spawning --> Blue Reflection Demons --> Boredom Skull *******************


#------- Adds a new tag, indicating the armor stand and mob are a Boredom Skull -------
# armor_stand.tags.Add("boredom_skull");
# mob.tags.Add("boredom_skull");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add boredom_skull
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add boredom_skull

#------- Sets the name for the base mob -------
# mob.name = "Boredom Skull";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=boredom_skull, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Boredom Skull", "color": "#19B2FF"}'}
