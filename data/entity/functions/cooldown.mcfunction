##############################
### PortalCooldown0トリガー
##############################

###死亡処理
tag @s add Garbage

###CallOnTimeOut
execute if entity @s[tag=CallOnTimeOut] run function enemy:ai/call/trigger/time

###ぽむぽむ花火処理
execute if entity @s[tag=PomPom] run function skill:act/summoner/pompom/explode

###ダークスワンプ処理
execute if entity @s[tag=DarkSwamp] run function skill:act/black_mage/dark_swamp/tick
