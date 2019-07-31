give @s minecraft:iron_pickaxe{"display":{"Name":"{\"text\":\"Iron Prospector Pick\",\"italic\":false}","Lore":["{\"text\":\"11x7x11\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"50% false negatives\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Cannot detect diamond\",\"color\":\"gray\",\"italic\":false}"]}} 1
scoreboard players add @s ho_eggblaze 1
scoreboard players remove @s ho_craftironpick 1
execute as @s[scores={ho_craftironpick=1..}] run function hiddenores:craft/ironpropick