tag @s[type=skeleton,predicate=obs:chances/7,predicate=obs:nether] add obs.replace
tag @s[type=zombified_piglin,predicate=obs:chances/8] add obs.replace
execute unless entity @e[type=minecraft:ender_dragon] if predicate obs:chances/9 run tag @s[type=enderman,predicate=obs:chances/9,predicate=obs:end] add obs.replace

execute as @e[type=skeleton,tag=obs.replace] run summon wither_skeleton
execute as @e[type=zombified_piglin,tag=obs.replace] run summon blaze ~0.0625 ~ ~
execute as @e[type=zombified_piglin,tag=obs.replace] run summon blaze ~-0.0625 ~ ~
execute as @e[type=enderman,tag=obs.replace] run summon shulker

tp @e[tag=obs.replace] ~ -1000 ~

tag @s add obs.process