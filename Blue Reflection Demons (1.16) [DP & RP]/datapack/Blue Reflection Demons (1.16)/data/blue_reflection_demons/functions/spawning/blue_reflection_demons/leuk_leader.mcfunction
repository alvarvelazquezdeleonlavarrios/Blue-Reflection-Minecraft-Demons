#******************* Spawning --> Blue Reflection Demons --> Leuk Leader *******************


#------- Adds a new tag, indicating the armor stand and mob are a Leuk Leader -------
# armor_stand.tags.Add("leuk_leader");
# mob.tags.Add("leuk_leader");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add leuk_leader
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add leuk_leader

#------- Sets the name for the base mob -------
# mob.name = "Leuk Leader";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=leuk_leader, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Leuk Leader", "color": "#19B2FF"}'}
