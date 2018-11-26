##############################
### 潜在能力割り振り画面表示
##############################

function main:settings/potential/get_point

scoreboard players set $MPCostRate Global 100
scoreboard players operation $MPCostRate Global -= @s MPCostRate
scoreboard players set $IntervalRate Global 100
scoreboard players operation $IntervalRate Global -= @s IntervalRate
scoreboard players operation $AuraRate Global = @s AuraRate
scoreboard players remove $AuraRate Global 100
scoreboard players operation $ResistMin Global = @s ResistMin
scoreboard players operation $CritProbability Global = @s CritProbability
scoreboard players remove $CritProbability Global 10
scoreboard players operation $SubLevel Global = @s SubLevel

tellraw @s [""," キャパシティポイントで潜在能力を引き出せます。 総CP: ",{"score":{"name":"$TotalPoint","objective":"Global"},"color":"green"}," 残りCP: ",{"score":{"name":"$LeftPoint","objective":"Global"},"color":"green"}]

tellraw @s ["",{"text":" ❖","color":"green"},{"translate":"消費ＭＰ軽減:           "},{"score":{"name":"$MPCostRate","objective":"Global"},"color":"green"},{"translate":"%% %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$MPCostRate","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 11"}}]},{"text":" ❖","color":"green"},{"translate":"スキル使用不可時間短縮:"},{"score":{"name":"$IntervalRate","objective":"Global"},"color":"green"},{"translate":"%% %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$IntervalRate","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 12"}}]}]
tellraw @s ["",{"text":" ❖","color":"green"},{"translate":"オーラ継続時間延長:   "},{"score":{"name":"$AuraRate","objective":"Global"},"color":"green"},{"translate":"%% %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$AuraRate","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 13"}}]},{"text":" ❖","color":"green"},{"translate":"免疫力最低値:           "},{"score":{"name":"$ResistMin","objective":"Global"},"color":"green"},{"translate":"%% %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$ResistMin","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 14"}}]}]
tellraw @s ["",{"text":" ❖","color":"green"},{"translate":"クリティカル確率増加: "},{"score":{"name":"$CritProbability","objective":"Global"},"color":"green"},{"translate":"%% %3$s(%1$sCP)","with":[{"text":"-2","color":"gold"},{"score":{"name":"$CritProbability","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 21"}}]},{"text":" ❖","color":"green"},{"translate":"他職スキル解放:         "},{"score":{"name":"$SubLevel","objective":"Global"},"color":"green"},{"translate":"LV %3$s(%1$sCP)","with":[{"text":"-2","color":"gold"},{"score":{"name":"$SubLevel","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 22"}}]}]

# tellraw @s ["",{"text":" ❖","color":"green"},{"translate":"消費ＭＰ軽減:           %2$s%% %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$MPCostRate","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 11"}}]},{"text":" ❖","color":"green"},{"translate":"スキル使用不可時間短縮:%2$s%% %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$IntervalRate","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 12"}}]}]
# tellraw @s ["",{"text":" ❖","color":"green"},{"translate":"オーラ継続時間延長:   %2$s%% %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$AuraRate","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 13"}}]},{"text":" ❖","color":"green"},{"translate":"免疫力最低値:           %2$s%% %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$ResistMin","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 14"}}]}]
# tellraw @s ["",{"text":" ❖","color":"green"},{"translate":"クリティカル確率増加: %2$s%% %3$s(%1$sCP)","with":[{"text":"-2","color":"gold"},{"score":{"name":"$CritProbability","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 21"}}]},{"text":" ❖","color":"green"},{"translate":"他職スキル解放:         %2$sLV %3$s(%1$sCP)","with":[{"text":"-2","color":"gold"},{"score":{"name":"$SubLevel","objective":"Global"},"color":"green"},{"text":"⇧","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 22"}}]}]

tellraw @s ["",{"text":" ❖","color":"green"},{"translate":"他ジョブレベルアップ: %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$MPCostRate","objective":"Global"},"color":"green"},{"text":"✞","bold":false,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 31"}}]},{"text":" ❖","color":"green"},{"translate":"キャパシティポイントリセット: %3$s(%1$sCP)","with":[{"text":"-1","color":"gold"},{"score":{"name":"$IntervalRate","objective":"Global"},"color":"green"},{"text":"✞","bold":false,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 32"}}]}]

scoreboard players enable @s PotentialTrigger
scoreboard players reset @s PotentialPrev
