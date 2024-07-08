#******************* Spawning --> Blue Reflection Demons --> Envy Fanatic *******************


#------- Adds a new tag, indicating the armor stand and mob are a Envy Fanatic -------
# armor_stand.tags.Add("envy_fanatic");
# mob.tags.Add("envy_fanatic");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add envy_fanatic
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add envy_fanatic

#------- Sets the name for the base mob -------
# mob.name = "Envy Fanatic";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=envy_fanatic, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Envy Fanatic", "color": "#19B2FF"}'}
