#******************* Spawning --> Blue Reflection Tie Demons --> Leporem *******************


#------- Adds a new tag, indicating the armor stand and mob are a Leporem -------
# armor_stand.tags.Add("leporem");
# mob.tags.Add("leporem");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add leporem
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add leporem

#------- Sets the name for the base mob -------
# mob.name = "Leporem";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=leporem, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Leporem", "color": "#36B01E"}'}
