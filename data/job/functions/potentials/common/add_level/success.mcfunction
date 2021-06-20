
###レベルアップ成功！

scoreboard players operation _ _ = _ Level
scoreboard players add _ Level 1
execute store result storage job: JobStatus[-9].Level int 1 run scoreboard players get _ Level

#表示
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]

tellraw @s[scores={PotentialTrigger=1}] ["",{"translate":" %1$s のレベルを上げた！！ %2$sLV → %3$sLV","with":[{"translate":"剣士"},{"score":{"name":"_","objective": "_"},"color":"green"},{"score":{"name":"_","objective":"Level"},"color":"green"}]}]
tellraw @s[scores={PotentialTrigger=2}] ["",{"translate":" %1$s のレベルを上げた！！ %2$sLV → %3$sLV","with":[{"translate":"忍者"},{"score":{"name":"_","objective": "_"},"color":"green"},{"score":{"name":"_","objective":"Level"},"color":"green"}]}]
tellraw @s[scores={PotentialTrigger=3}] ["",{"translate":" %1$s のレベルを上げた！！ %2$sLV → %3$sLV","with":[{"translate":"狩人"},{"score":{"name":"_","objective": "_"},"color":"green"},{"score":{"name":"_","objective":"Level"},"color":"green"}]}]
tellraw @s[scores={PotentialTrigger=4}] ["",{"translate":" %1$s のレベルを上げた！！ %2$sLV → %3$sLV","with":[{"translate":"白魔導士"},{"score":{"name":"_","objective": "_"},"color":"green"},{"score":{"name":"_","objective":"Level"},"color":"green"}]}]
tellraw @s[scores={PotentialTrigger=5}] ["",{"translate":" %1$s のレベルを上げた！！ %2$sLV → %3$sLV","with":[{"translate":"黒魔導士"},{"score":{"name":"_","objective": "_"},"color":"green"},{"score":{"name":"_","objective":"Level"},"color":"green"}]}]
tellraw @s[scores={PotentialTrigger=6}] ["",{"translate":" %1$s のレベルを上げた！！ %2$sLV → %3$sLV","with":[{"translate":"召喚士"},{"score":{"name":"_","objective": "_"},"color":"green"},{"score":{"name":"_","objective":"Level"},"color":"green"}]}]
tellraw @s[scores={PotentialTrigger=7}] ["",{"translate":" %1$s のレベルを上げた！！ %2$sLV → %3$sLV","with":[{"translate":"絡繰士"},{"score":{"name":"_","objective": "_"},"color":"green"},{"score":{"name":"_","objective":"Level"},"color":"green"}]}]
tellraw @s[scores={PotentialTrigger=8}] ["",{"translate":" %1$s のレベルを上げた！！ %2$sLV → %3$sLV","with":[{"translate":"怪盗"},{"score":{"name":"_","objective": "_"},"color":"green"},{"score":{"name":"_","objective":"Level"},"color":"green"}]}]

#CP反映
scoreboard players add @s[scores={PotentialTrigger=1}] AddKnight 1
scoreboard players add @s[scores={PotentialTrigger=2}] AddNinja 1
scoreboard players add @s[scores={PotentialTrigger=3}] AddHunter 1
scoreboard players add @s[scores={PotentialTrigger=4}] AddWhite_mage 1
scoreboard players add @s[scores={PotentialTrigger=5}] AddBlack_mage 1
scoreboard players add @s[scores={PotentialTrigger=6}] AddSummoner 1
scoreboard players add @s[scores={PotentialTrigger=7}] AddPuppet_master 1
scoreboard players add @s[scores={PotentialTrigger=8}] AddThief 1

#持っているCP(Lv)を消費する
scoreboard players remove @s Level 1
