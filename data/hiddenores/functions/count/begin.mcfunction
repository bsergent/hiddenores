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
scoreboard players set @s ho_redstoneact 0
scoreboard players set @s ho_redstonerep 0
scoreboard players set @s ho_ironact 0
scoreboard players set @s ho_ironrep 0
scoreboard players set @s ho_coalact 0
scoreboard players set @s ho_coalrep 0

execute as @s[tag=ho_goldpick] run scoreboard players set @s ho_checkx -7
execute as @s[tag=ho_goldpick] run scoreboard players set @s ho_checky -7
execute as @s[tag=ho_goldpick] run scoreboard players set @s ho_checkz -7
execute as @s[tag=ho_ironpick] run scoreboard players set @s ho_checkx -5
execute as @s[tag=ho_ironpick] run scoreboard players set @s ho_checky -5
execute as @s[tag=ho_ironpick] run scoreboard players set @s ho_checkz -5
# scoreboard players set @s ho_checkx -1
# scoreboard players operation @s ho_checkx *= #ho_countradius ho_calc
# scoreboard players set @s ho_checky -1
# scoreboard players operation @s ho_checky *= #ho_countradius ho_calc
# scoreboard players set @s ho_checkz -1
# scoreboard players operation @s ho_checkz *= #ho_countradius ho_calc

kill @e[type=area_effect_cloud,tag=ho_counter]
execute as @s[tag=ho_goldpick] run summon area_effect_cloud ~-7 ~-7 ~-7 {Tags:["ho_counter"],NoGravity:1b,Particle:"block air",Radius:.5f,Duration:2147483647}
execute as @s[tag=ho_ironpick] run summon area_effect_cloud ~-5 ~-5 ~-5 {Tags:["ho_counter"],NoGravity:1b,Particle:"block air",Radius:.5f,Duration:2147483647}