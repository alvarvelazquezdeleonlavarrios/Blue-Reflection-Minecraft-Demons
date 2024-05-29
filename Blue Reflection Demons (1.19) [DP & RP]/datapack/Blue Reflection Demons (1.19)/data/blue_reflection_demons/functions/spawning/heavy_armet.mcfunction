#******************* Spawning --> Heavy Armet *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Heavy Armet -------
# armor_stand.tags.Add("heavy_armet");
# zombie.tags.Add("heavy_armet");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_armet
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_armet

#------- Sets the name for the base mob -------
# zombie.name = "Heavy Armet";
execute as @e[type=zombie, tag=heavy_armet, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Heavy Armet", "color": "#19B2FF"}'}
