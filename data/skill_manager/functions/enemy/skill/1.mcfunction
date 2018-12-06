##############################
### 敵スキル１つ目
##############################

### 深淵様
execute if entity @s[tag=Shinen] run function skill_manager:enemy/shinen/1
### サーヴァント
execute if entity @s[tag=Servant] run function skill_manager:enemy/servant/1
### サテライト
execute if entity @s[tag=Satelite] run function skill_manager:enemy/satelite/1
### テレポート
execute if entity @s[tag=Teleport] run function skill_manager:enemy/teleport/1
### 魅了
execute if entity @s[tag=CharmLv1] run function skill_manager:enemy/charm/1
execute if entity @s[tag=CharmLv2] run function skill_manager:enemy/charm/2
execute if entity @s[tag=CharmLv3] run function skill_manager:enemy/charm/3
### 幻影
execute if entity @s[tag=BlinkLv1] run function skill_manager:enemy/blink/1
execute if entity @s[tag=BlinkLv2] run function skill_manager:enemy/blink/2
execute if entity @s[tag=BlinkLv3] run function skill_manager:enemy/blink/3
### 回復
execute if entity @s[tag=HealLv1] run function skill_manager:enemy/heal/1
execute if entity @s[tag=HealLv2] run function skill_manager:enemy/heal/2
execute if entity @s[tag=HealLv3] run function skill_manager:enemy/heal/3
### セルフヒール
execute if entity @s[tag=SelfHealLv1] run function skill_manager:enemy/self_heal/1
execute if entity @s[tag=SelfHealLv2] run function skill_manager:enemy/self_heal/2
execute if entity @s[tag=SelfHealLv3] run function skill_manager:enemy/self_heal/3
### 忍者
execute if entity @s[tag=Ninja] run function skill_manager:enemy/teleport/1
### Swim補正
#execute if entity @s[tag=Interpolator] run function skill_manager:enemy/interpolator/1

### 発生確率0%セット
scoreboard players reset $Threshold Global
