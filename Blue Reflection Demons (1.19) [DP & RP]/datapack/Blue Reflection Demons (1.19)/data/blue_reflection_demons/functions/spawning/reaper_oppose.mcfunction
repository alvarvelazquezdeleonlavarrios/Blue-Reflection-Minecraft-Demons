#******************* Spawning --> Reaper Oppose *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Reaper Oppose -------
# armor_stand.tags.Add("reaper_oppose");
# zombie.tags.Add("reaper_oppose");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add reaper_oppose
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add reaper_oppose

#------- Sets the name for the base mob -------
# zombie.name = "Reaper Oppose";
execute as @e[type=zombie, tag=reaper_oppose, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Reaper Oppose", "color": "#19B2FF"}'}
