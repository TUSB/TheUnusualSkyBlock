##############################
### キュアフィールド毎秒処理
##############################

#-(MP回復量-1)を取得  MPHealingWaitを<0にするため直後にMP+1される
scoreboard players operation _ _ = @s MP

#効果発動
execute as @a[distance=..8] run function skill:act/common/cure_field/apply

#残り時間減少
scoreboard players remove @s Interval 1

#効果切れ
kill @s[scores={Interval=..0}]

#演出
function makeup:skill/act/common/cure_field/tick
