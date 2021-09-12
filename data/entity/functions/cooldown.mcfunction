##############################
### PortalCooldown0トリガー
##############################

###CallOnTimeOut
execute if entity @s[tag=CallOnTimeOut] run function enemy:ai/call/time

###ぽむぽむ花火処理
execute if entity @s[tag=PomPom] run function skill:act/summoner/pompom/explode

###CooldownRequired処理
tag @s[tag=CooldownRequired] add Garbage
