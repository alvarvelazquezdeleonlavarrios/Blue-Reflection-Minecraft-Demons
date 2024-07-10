#******************* Spawning --> Blue Reflection Demons --> Admirator *******************


#------- Adds a new tag, indicating the armor stand and mob are a Admirator -------
# armor_stand.tags.Add("admirator");
# mob.tags.Add("admirator");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add admirator
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add admirator

#------- Sets the name for the base mob -------
# mob.name = "Admirator";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=admirator, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Admirator", "color": "#19B2FF"}'}
