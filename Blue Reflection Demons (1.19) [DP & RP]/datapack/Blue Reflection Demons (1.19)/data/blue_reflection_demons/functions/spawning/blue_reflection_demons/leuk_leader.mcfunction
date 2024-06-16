#******************* Spawning --> Blue Reflection Demons --> Leuk Leader *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Leuk Leader -------
# armor_stand.tags.Add("leuk_leader");
# zombie.tags.Add("leuk_leader");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add leuk_leader
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add leuk_leader

#------- Sets the name for the base mob -------
# zombie.name = "Leuk Leader";
execute as @e[type=zombie, tag=leuk_leader, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Leuk Leader", "color": "#19B2FF"}'}
