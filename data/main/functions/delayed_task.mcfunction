##############################
### １ティック遅れ処理
##############################

###ダークスワンプ復帰処理
effect give @s[tag=DarkSwampLevitation2,nbt={OnGround:true}] minecraft:levitation 1 1 true
tag @s[tag=DarkSwampLevitation2] remove DarkSwampLevitation2

###ぽむぽむ花火花火ダメージ回避
execute as @s[tag=InvulnerableTick] run data merge entity @s {Invulnerable:false}
tag @s[tag=InvulnerableTick] remove InvulnerableTick





###共通タグ削除
tag @s remove DelayedTask

###ダークスワンプ復帰は2tick遅らせる必要がある
tag @s[tag=DarkSwampLevitation] add DarkSwampLevitation2
tag @s[tag=DarkSwampLevitation] remove DarkSwampLevitation
tag @s[tag=DarkSwampLevitation2] add DelayedTask
