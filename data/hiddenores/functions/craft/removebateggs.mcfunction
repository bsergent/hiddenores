execute as @s run clear @s minecraft:bat_spawn_egg 1
scoreboard players remove @s ho_eggbat 1
execute as @a[scores={ho_eggbat=1..}] run function hiddenores:craft/removebateggs