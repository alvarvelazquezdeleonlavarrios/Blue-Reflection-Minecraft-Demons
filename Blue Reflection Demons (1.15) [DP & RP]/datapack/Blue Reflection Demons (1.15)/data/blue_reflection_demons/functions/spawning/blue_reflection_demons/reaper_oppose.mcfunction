#******************* Spawning --> Blue Reflection Demons --> Reaper Oppose *******************


#------- Adds a new tag, indicating the armor stand and mob are a Reaper Oppose -------
# armor_stand.tags.Add("reaper_oppose");
# mob.tags.Add("reaper_oppose");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add reaper_oppose
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add reaper_oppose

#------- Sets the name for the base mob -------
# mob.name = "Reaper Oppose";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=reaper_oppose, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Reaper Oppose", "color": "#19B2FF"}'}
