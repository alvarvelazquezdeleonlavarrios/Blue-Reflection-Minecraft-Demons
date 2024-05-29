#******************* Spawning --> Boredom Skull *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Boredom Skull -------
# armor_stand.tags.Add("boredom_skull");
# zombie.tags.Add("boredom_skull");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add boredom_skull
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add boredom_skull

#------- Sets the name for the base mob -------
# zombie.name = "Boredom Skull";
execute as @e[type=zombie, tag=boredom_skull, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Boredom Skull", "color": "#19B2FF"}'}
