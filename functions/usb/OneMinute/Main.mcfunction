###１秒かまど炎維持
execute 0-0-1-0-1 ~ ~ ~ /blockdata ~ ~-1 ~ {BurnTime:20000s}
###イベントタイマー経過
scoreboard players remove #EventTimer Global 1
###イベント発生
execute 0-0-1-0-1 ~ ~ ~ /scoreboard players test #EventTimer Global 0 0
execute 0-0-1-0-1 ~ ~ ~ /function usb:OneMinute/Event/Cause if @s[score_Conditional_min=1]
###イベントタイマーリセット
execute 0-0-1-0-1 ~ ~ ~ /scoreboard players test #EventTimer Global * 0
execute 0-0-1-0-1 ~ ~ ~ /function usb:OneMinute/Event/Reset if @s[score_Conditional_min=1]
###羊誘導イベント処理
scoreboard players add @e[tag=VillagerMeal] Freshness 1
