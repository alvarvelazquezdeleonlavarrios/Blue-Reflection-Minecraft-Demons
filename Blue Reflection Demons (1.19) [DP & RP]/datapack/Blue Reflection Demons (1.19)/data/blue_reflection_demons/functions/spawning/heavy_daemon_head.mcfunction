#******************* Spawning --> Heavy Daemon Head *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Heavy Daemon Head -------
# armor_stand.tags.Add("heavy_daemon_head");
# zombie.tags.Add("heavy_daemon_head");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_daemon_head
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_daemon_head

#------- Sets the name for the base mob -------
# zombie.name = "Heavy Daemon Head";
execute as @e[type=zombie, tag=heavy_daemon_head, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Heavy Daemon Head", "color": "#19B2FF"}'}
