#******************* Spawning --> Blue Reflection Demons --> Assassin Interest *******************


#------- Adds a new tag, indicating the armor stand and mob are a Assassin Interest -------
# armor_stand.tags.Add("assassin_interest");
# mob.tags.Add("assassin_interest");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add assassin_interest
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add assassin_interest

#------- Sets the name for the base mob -------
# mob.name = "Assassin Interest";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=assassin_interest, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Assassin Interest", "color": "#19B2FF"}'}
