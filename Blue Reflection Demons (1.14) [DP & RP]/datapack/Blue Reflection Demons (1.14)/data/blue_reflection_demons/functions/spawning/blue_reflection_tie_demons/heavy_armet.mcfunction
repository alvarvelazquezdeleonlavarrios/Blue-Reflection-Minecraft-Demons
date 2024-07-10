#******************* Spawning --> Blue Reflection Tie Demons --> Heavy Armet *******************


#------- Adds a new tag, indicating the armor stand and mob are a Heavy Armet -------
# armor_stand.tags.Add("heavy_armet");
# mob.tags.Add("heavy_armet");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_armet
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_armet

#------- Sets the name for the base mob -------
# mob.name = "Heavy Armet";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=heavy_armet, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Heavy Armet", "color": "#36B01E"}'}
