#******************* Main --> Start *******************


#------- Creates the game variables for the logic that spawns naturally the demons in the world. -------
scoreboard objectives add _ntrlSpwn.crtWT dummy
scoreboard objectives add _ntrlSpwn.dmTp dummy

#------- Creates some constants with fixed values for math operations. -------
scoreboard objectives add _const.64 dummy


#------- Creates a fake player named "$GameManager" to do the overall automatic updates like the mobs' natural spawning. -------
scoreboard players set $GameManager _ntrlSpwn.crtWT 20

#------- Creates a fake player named "$Constants" that will contain the value of the constants created previously. -------
scoreboard players set $Constants _const.64 64


#------- Prints a message in the chat when this Data Pack is reloaded -------
tellraw @a {"text": "***************************************************************************","color": "#11276E"}
tellraw @a {"text": "----------- Blue Reflection Demons Data Pack ----------","color": "#2046C7"}
tellraw @a {"text": "----------- For Minecraft: Java Edition v.1.16 ----------","color": "#057FD1"}
tellraw @a {"text": "------------------------- v.1.0 --------------------","color": "#26D4FF"}
tellraw @a {"text": "--- Developed by: Alvar Velázquez de León Lavarrios ---","color": "#B8B8B8"}
tellraw @a {"text": "***************************************************************************","color": "#11276E"}
