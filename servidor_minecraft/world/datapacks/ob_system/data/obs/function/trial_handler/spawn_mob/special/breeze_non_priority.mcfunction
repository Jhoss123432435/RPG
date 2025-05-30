scoreboard players set #cob.trial.breeze cob.trial 0
execute as @e[tag=cob.trial_mob,type=breeze] run scoreboard players add #cob.trial.breeze cob.trial 1
execute if entity @e[tag=cob.block,tag=cob.ominous] run scoreboard players remove #cob.trial.breeze cob.trial 1

execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 5..19 unless score #cob.trial.breeze cob.trial matches 1.. run function obs:trial_handler/spawn_mob/special/breeze
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 20..29 unless score #cob.trial.breeze cob.trial matches 2.. run function obs:trial_handler/spawn_mob/special/breeze
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 30..39 unless score #cob.trial.breeze cob.trial matches 3.. run function obs:trial_handler/spawn_mob/special/breeze
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 40..50 unless score #cob.trial.breeze cob.trial matches 4.. run function obs:trial_handler/spawn_mob/special/breeze
