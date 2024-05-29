#******************* Spawning --> Armet *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Armet -------
# armor_stand.tags.Add("armet");
# zombie.tags.Add("armet");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add armet
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add armet

#------- Sets the name for the base mob -------
# zombie.name = "Armet";
execute as @e[type=zombie, tag=armet, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Armet", "color": "#19B2FF"}'}
