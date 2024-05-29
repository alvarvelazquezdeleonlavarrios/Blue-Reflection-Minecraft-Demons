#******************* Gameplay --> Natural Spawning --> Scanner *******************


#------- In this new second, checks for new default mobs that spawned naturally in the game. Procures check them once. -------
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=!blue_reflection_demon] at @s run function blue_reflection_demons:gameplay/natural_spawning/spawn_random_demon

#------- Resets the natural spawner timer count for 1 second (20 ticks). -------
# GameManager.natural_spawning_current_wait = 20;
scoreboard players set $GameManager _natural_spawning.current_wait_time 20
