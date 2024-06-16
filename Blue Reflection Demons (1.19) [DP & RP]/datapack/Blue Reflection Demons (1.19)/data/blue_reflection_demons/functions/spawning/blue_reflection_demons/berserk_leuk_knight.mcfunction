#******************* Spawning --> Blue Reflection Demons --> Berserk Leuk Knight *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Berserk Leuk Knight -------
# armor_stand.tags.Add("berserk_leuk_knight");
# zombie.tags.Add("berserk_leuk_knight");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add berserk_leuk_knight
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add berserk_leuk_knight

#------- Sets the name for the base mob -------
# zombie.name = "Berserk Leuk Knight";
execute as @e[type=zombie, tag=berserk_leuk_knight, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Berserk Leuk Knight", "color": "#19B2FF"}'}
