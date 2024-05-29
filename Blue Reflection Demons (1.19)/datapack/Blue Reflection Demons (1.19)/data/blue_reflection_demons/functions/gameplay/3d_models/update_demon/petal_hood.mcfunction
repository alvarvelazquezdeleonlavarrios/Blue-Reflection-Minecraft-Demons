#******************* Gameplay --> 3D Models --> Update Demon --> Petal Hood *******************


#------- Updates the Petal Hood's 3D model position and rotation on the base mob's position -------
# armor_stand.position = demon.position;   armor_stand.rotation = demon.rotation;
tp @e[type=armor_stand, tag=petal_hood, limit=1, sort=nearest] ~ ~ ~ ~ ~

#------- If the demon takes damage, its armor stand renders the demon with a red color -------
# if (demon.hurt_time == 10):
#   armor_stand.update3DModel( petal_hood, damage );
execute if entity @s[nbt={HurtTime:10s}] run data merge entity @e[type=armor_stand, tag=petal_hood, limit=1, sort=nearest, distance=..1] {ArmorItems:[{},{},{},{id:"minecraft:nether_brick", Count:1b, tag:{CustomModelData:1705128}}]}

#------- The armor stand returns the normal color to the demon after taking the damage -------
# if (demon.hurt_time == 0):
#   armor_stand.update3DModel( petal_hood, normal );
execute if entity @s[nbt={HurtTime:0s}] run data merge entity @e[type=armor_stand, tag=petal_hood, limit=1, sort=nearest, distance=..1] {ArmorItems:[{},{},{},{id:"minecraft:nether_brick", Count:1b, tag:{CustomModelData:1705127}}]}
