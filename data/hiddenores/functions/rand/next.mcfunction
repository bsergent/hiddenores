# Largely based off https://github.com/mcskware/prng, so credit to mcskware for the random number generator
# (ax + c) % m

# calculate a * x
scoreboard players operation #ho_randtemp ho_calc = #ho_randa ho_calc
scoreboard players operation #ho_randtemp ho_calc *= #ho_random ho_calc

# calculate ax + c
scoreboard players operation #ho_randtemp ho_calc += #ho_randc ho_calc

# calculate (ax+c) % m
scoreboard players operation #ho_randtemp ho_calc %= #ho_randm ho_calc
scoreboard players operation #ho_random ho_calc = #ho_randtemp ho_calc

# Normalize to the specified range
scoreboard players operation #ho_rand ho_calc = #ho_random ho_calc
scoreboard players operation #ho_rand ho_calc %= #ho_randmax ho_calc

#tellraw @s [{ "text":"rand="}, {"score":{"name":"#ho_rand","objective":"ho_calc"},"color":"gold"}]