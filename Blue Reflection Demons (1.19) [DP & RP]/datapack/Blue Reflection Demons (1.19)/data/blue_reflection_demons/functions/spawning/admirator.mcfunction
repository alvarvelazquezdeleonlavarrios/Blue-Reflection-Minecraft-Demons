#******************* Spawning --> Admirator *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Admirator -------
# armor_stand.tags.Add("admirator");
# zombie.tags.Add("admirator");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add admirator
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add admirator

#------- Sets the name for the base mob -------
# zombie.name = "Admirator";
execute as @e[type=zombie, tag=admirator, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Admirator", "color": "#19B2FF"}'}
