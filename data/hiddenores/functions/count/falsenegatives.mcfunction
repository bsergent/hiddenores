tag @s remove ho_falseneg
function hiddenores:rand/next
execute as @s[tag=ho_ironpick] run scoreboard players operation #ho_rand ho_calc *= #ho_ironnegmodnum ho_calc
execute as @s[tag=ho_ironpick] run scoreboard players operation #ho_rand ho_calc /= #ho_ironnegmodden ho_calc
#tellraw @s[tag=ho_ironpick] [{ "text":"rand_mod="}, {"score":{"name":"#ho_rand","objective":"ho_calc"},"color":"gold"}]
execute if score #ho_rand ho_calc matches ..1 run tag @s add ho_falseneg