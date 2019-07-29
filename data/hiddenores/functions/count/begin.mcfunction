title @s actionbar { "text":"Checking ore deposits..." }
playsound minecraft:ui.toast.out block @s ~ ~ ~ 1 0.5
tag @s add ho_counting

scoreboard players set @s ho_diamondact 0
scoreboard players set @s ho_diamondrep 0
scoreboard players set @s ho_emeraldact 0
scoreboard players set @s ho_emeraldrep 0
scoreboard players set @s ho_lapisact 0
scoreboard players set @s ho_lapisrep 0
scoreboard players set @s ho_goldact 0
scoreboard players set @s ho_goldrep 0
scoreboard players set @s ho_ironact 0
scoreboard players set @s ho_ironrep 0
scoreboard players set @s ho_coalact 0
scoreboard players set @s ho_coalrep 0

scoreboard players set @s ho_checkx -7
scoreboard players set @s ho_checky -7
scoreboard players set @s ho_checkz -7
# scoreboard players set @s ho_checkx -1
# scoreboard players operation @s ho_checkx *= #ho_countradius ho_calc
# scoreboard players set @s ho_checky -1
# scoreboard players operation @s ho_checky *= #ho_countradius ho_calc
# scoreboard players set @s ho_checkz -1
# scoreboard players operation @s ho_checkz *= #ho_countradius ho_calc

kill @e[type=area_effect_cloud,tag=ho_counter]
summon area_effect_cloud ~-7 ~-7 ~-7 {Tags:["ho_counter"],NoGravity:1b,Particle:"block air",Radius:.5f,Duration:2147483647}