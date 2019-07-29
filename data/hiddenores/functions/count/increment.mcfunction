# Increment x
scoreboard players add @s ho_checkx 1
execute at @e[type=area_effect_cloud,tag=ho_counter] run teleport @e[type=area_effect_cloud,tag=ho_counter] ~1 ~ ~

# Increment z
execute as @s[scores={ho_checkx=8..}] at @e[type=area_effect_cloud,tag=ho_counter] run teleport @e[type=area_effect_cloud,tag=ho_counter] ~-15 ~ ~1
execute as @s[scores={ho_checkx=8..}] run scoreboard players add @s ho_checkz 1
execute as @s[scores={ho_checkx=8..}] run scoreboard players set @s ho_checkx -7

# Increment y
execute as @s[scores={ho_checkz=8..}] at @e[type=area_effect_cloud,tag=ho_counter] run teleport @e[type=area_effect_cloud,tag=ho_counter] ~ ~1 ~-15
execute as @s[scores={ho_checkz=8..}] run scoreboard players add @s ho_checky 1
execute as @s[scores={ho_checkz=8..}] run tag @s add ho_countthrottle
execute as @s[scores={ho_checkz=8..}] run scoreboard players set @s ho_checkz -7

# Finish when y gets to 6
execute as @s[scores={ho_checky=8..}] run tag @s remove ho_counting

tag @e[type=area_effect_cloud,tag=ho_counter] remove ho_proxclose
tag @e[type=area_effect_cloud,tag=ho_counter] remove ho_proxveryclose
execute as @s[scores={ho_checkx=-5..5,ho_checky=-5..5,ho_checkz=-5..5}] run tag @e[type=area_effect_cloud,tag=ho_counter] add ho_proxclose
execute as @s[scores={ho_checkx=-3..3,ho_checky=-3..3,ho_checkz=-3..3}] run tag @e[type=area_effect_cloud,tag=ho_counter] add ho_proxveryclose

#tellraw @s [{"text":"x="}, {"score":{"name":"@s","objective":"ho_checkx"}}, {"text":", z="}, {"score":{"name":"@s","objective":"ho_checkz"}}]