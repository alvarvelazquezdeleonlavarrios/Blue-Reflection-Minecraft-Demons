#******************* Spawning --> Daemon Head *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Daemon Head -------
# armor_stand.tags.Add("daemon_head");
# zombie.tags.Add("daemon_head");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add daemon_head
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add daemon_head

#------- Sets the name for the base mob -------
# zombie.name = "Daemon Head";
execute as @e[type=zombie, tag=daemon_head, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Daemon Head", "color": "#19B2FF"}'}
