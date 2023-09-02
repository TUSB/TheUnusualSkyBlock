
### 毎ティック一時処理

###魅了
#execute if score @s <score> matches 1.. run function skill:enemy/charm/tick

###幻影
execute if score @s BlinkSubTimer matches 1.. run function skill:enemy/blink/activate/decorate/tick

###隼斬り遅延発動処理
execute if score @s FalconSlashTimer matches 1.. run function skill:act/knight/falcon_slash/decorate/tick

###猛火斬ダメージ付与処理
execute if score @s RagingDamage matches 1.. run function skill:act/knight/raging_slash/tick

###詠唱演出
execute if score @s NextActionTick matches 1.. run function skill:enemy/delay_action/act/

###放物運動処理
# execute if entity @s[tag=Parabolic] run function skill:enemy/parabolic_motion/tick
