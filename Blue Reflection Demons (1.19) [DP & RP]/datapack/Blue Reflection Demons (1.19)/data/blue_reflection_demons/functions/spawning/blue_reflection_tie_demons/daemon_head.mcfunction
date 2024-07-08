#******************* Spawning --> Blue Reflection Tie Demons --> Daemon Head *******************


#------- Adds a new tag, indicating the armor stand and mob are a Daemon Head -------
# armor_stand.tags.Add("daemon_head");
# mob.tags.Add("daemon_head");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add daemon_head
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add daemon_head

#------- Sets the name for the base mob -------
# mob.name = "Daemon Head";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=daemon_head, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Daemon Head", "color": "#36B01E"}'}
