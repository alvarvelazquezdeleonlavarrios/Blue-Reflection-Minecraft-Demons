#******************* Spawning --> Violetwing Tineresy *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Violetwing Tineresy -------
# armor_stand.tags.Add("violetwing_tineresy");
# zombie.tags.Add("violetwing_tineresy");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add violetwing_tineresy
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add violetwing_tineresy

#------- Sets the name for the base mob -------
# zombie.name = "Violetwing Tineresy";
execute as @e[type=zombie, tag=violetwing_tineresy, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Violetwing Tineresy", "color": "#19B2FF"}'}
