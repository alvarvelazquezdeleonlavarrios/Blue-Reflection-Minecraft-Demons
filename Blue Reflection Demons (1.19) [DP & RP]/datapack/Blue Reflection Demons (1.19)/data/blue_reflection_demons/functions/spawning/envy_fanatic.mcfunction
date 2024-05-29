#******************* Spawning --> Envy Fanatic *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Envy Fanatic -------
# armor_stand.tags.Add("envy_fanatic");
# zombie.tags.Add("envy_fanatic");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add envy_fanatic
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add envy_fanatic

#------- Sets the name for the base mob -------
# zombie.name = "Envy Fanatic";
execute as @e[type=zombie, tag=envy_fanatic, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Envy Fanatic", "color": "#19B2FF"}'}
