#******************* Gameplay --> 3D Models --> Update Demon --> Amor Falsa *******************


#------- Updates the Amor Falsa's 3D model position and rotation on the base mob's position -------
# armor_stand.position = demon.position;   armor_stand.rotation = demon.rotation;
tp @e[type=armor_stand, tag=amor_falsa, limit=1, sort=nearest] ~ ~ ~ ~ ~

#------- If the demon takes damage, its armor stand renders the demon with a red color -------
# if (demon.hurt_time == 10):
#   armor_stand.update3DModel( amor_falsa, damage );
execute if entity @s[nbt={HurtTime:10s}] run data merge entity @e[type=armor_stand, tag=amor_falsa, limit=1, sort=nearest, distance=..1] {ArmorItems:[{},{},{},{id:"minecraft:nether_brick", Count:1b, tag:{CustomModelData:1705114}}]}

#------- The armor stand returns the normal color to the demon after taking the damage -------
# if (demon.hurt_time == 0):
#   armor_stand.update3DModel( amor_falsa, normal );
execute if entity @s[nbt={HurtTime:0s}] run data merge entity @e[type=armor_stand, tag=amor_falsa, limit=1, sort=nearest, distance=..1] {ArmorItems:[{},{},{},{id:"minecraft:nether_brick", Count:1b, tag:{CustomModelData:1705113}}]}
