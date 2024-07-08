#******************* Spawning --> Blue Reflection Tie Demons --> Armet *******************


#------- Adds a new tag, indicating the armor stand and mob are a Armet -------
# armor_stand.tags.Add("armet");
# mob.tags.Add("armet");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add armet
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add armet

#------- Sets the name for the base mob -------
# mob.name = "Armet";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=armet, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Armet", "color": "#36B01E"}'}
