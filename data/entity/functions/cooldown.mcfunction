##############################
### PortalCooldown0トリガー
##############################

###CallOnTimeOut
execute if entity @s[tag=CallOnTimeOut] run function entity:enemy/ai/call/time
###CooldownRequired処理
tag @s[tag=CooldownRequired] add Garbage
