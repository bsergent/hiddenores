#tellraw @s {"text":"Crafted prospector pick."}
give @s minecraft:golden_pickaxe{"display":{"Name":"{\"text\":\"Prospector Pick\",\"italic\":false}"},"Enchantments":[{"lvl":1s,"id":"minecraft:unbreaking"}]} 1
scoreboard players add @s ho_eggstoremove 1
scoreboard players remove @s ho_craftpick 1
execute as @s[scores={ho_craftpick=1..}] run function hiddenores:craft/craftprospectorpick