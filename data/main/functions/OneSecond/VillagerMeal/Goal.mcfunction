execute 0-0-1-0-1 ~ ~ ~ /execute 0-0-1-0-3 ~ ~ ~ /kill @e[r=5,tag=VillagerMeal,score_Freshness_min=-9]
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /tellraw @a {"translate":"* %1$s 「連れて来て下さったのですか！ ありがとうございます。これはほんのお礼です。お受取り下さい。」\n* %1$s 「お～い、みんな！ ごはんだぞ～！！」","with":[{"text":"農業家","color":"dark_green"}]}
execute 0-0-1-0-1 ~ ~ ~ /execute 0-0-1-0-3 ~ ~ ~ /kill @e[r=5,tag=VillagerMeal,score_Freshness=-10]
execute 0-0-1-0-1 ~ ~ ~ /execute @s[score_Conditional_min=1] ~ ~ ~ /tellraw @a {"translate":"* %1$s 「あぁ…連れて来て下さったのですか…。ありがとうございます。でも食事の時間はもう終わってしまいました…。」","with":[{"text":"農業家","color":"dark_green"}]}

