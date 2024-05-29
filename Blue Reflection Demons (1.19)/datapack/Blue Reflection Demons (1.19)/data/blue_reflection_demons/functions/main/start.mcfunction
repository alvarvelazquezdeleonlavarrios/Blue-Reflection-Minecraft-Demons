#******************* Main --> Start *******************


#------- Creates the game variables for the logic that spawns naturally the demons in the world. -------
scoreboard objectives add _natural_spawning.current_wait_time dummy
scoreboard objectives add _natural_spawning.demon_type_chance dummy


#------- Creates a fake player named "$GameManager" to do the overall automatic updates like the mobs' natural spawning. -------
scoreboard players set $GameManager _natural_spawning.current_wait_time 20
scoreboard players set $GameManager _natural_spawning.demon_type_chance -1


#------- Prints a message in the chat when this Data Pack is reloaded -------
tellraw @a {"text": "***************************************************************************","color": "#11276E"}
tellraw @a {"text": "----------- Blue Reflection Demons Data Pack ----------","color": "#1A3AA3"}
tellraw @a {"text": "----------------- For Java Edition 1.19 --------------","color": "#0470B8"}
tellraw @a {"text": "------------------------- v.1.0 --------------------","color": "#19B2FF"}
tellraw @a {"text": "--- Developed by: Alvar Velázquez de León Lavarrios ---","color": "#B8B8B8"}
tellraw @a {"text": "***************************************************************************","color": "#11276E"}
