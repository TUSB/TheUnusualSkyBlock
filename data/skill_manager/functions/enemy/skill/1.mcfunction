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
execute if entity @s[tag=HealLv4] run function skill_manager:enemy/heal/4
execute if entity @s[tag=HealLv5] run function skill_manager:enemy/heal/5
execute if entity @s[tag=HealLv6] run function skill_manager:enemy/heal/6
execute if entity @s[tag=HealLv7] run function skill_manager:enemy/heal/7
execute if entity @s[tag=HealLv8] run function skill_manager:enemy/heal/8
execute if entity @s[tag=HealLv9] run function skill_manager:enemy/heal/9
execute if entity @s[tag=HealLv10] run function skill_manager:enemy/heal/10
### セルフヒール
execute if entity @s[tag=SelfHealLv1] run function skill_manager:enemy/self_heal/1
execute if entity @s[tag=SelfHealLv2] run function skill_manager:enemy/self_heal/2
execute if entity @s[tag=SelfHealLv3] run function skill_manager:enemy/self_heal/3
execute if entity @s[tag=SelfHealLv4] run function skill_manager:enemy/self_heal/4
execute if entity @s[tag=SelfHealLv5] run function skill_manager:enemy/self_heal/5
execute if entity @s[tag=SelfHealLv6] run function skill_manager:enemy/self_heal/6
execute if entity @s[tag=SelfHealLv7] run function skill_manager:enemy/self_heal/7
execute if entity @s[tag=SelfHealLv8] run function skill_manager:enemy/self_heal/8
execute if entity @s[tag=SelfHealLv9] run function skill_manager:enemy/self_heal/9
execute if entity @s[tag=SelfHealLv10] run function skill_manager:enemy/self_heal/10

### 忍者
execute if entity @s[tag=Ninja] run function skill_manager:enemy/teleport/1
### Swim補正
execute if entity @s[tag=Interpolator] run function skill_manager:enemy/interpolator/1
### コール
execute if entity @s[tag=Call] run function skill_manager:enemy/call/1
### 叫び
execute if entity @s[tag=Scream] run function skill_manager:enemy/scream/1
### スキル詰め合わせ
execute if entity @s[tag=SkillBox] run function skill_manager:enemy/teleport/1
### セキュリティレーザー
execute if entity @s[tag=SecurityLaserLv1] run function skill_manager:enemy/security_laser/1/act1
execute if entity @s[tag=SecurityLaserLv2] run function skill_manager:enemy/security_laser/2/act1
execute if entity @s[tag=SecurityLaserLv3] run function skill_manager:enemy/security_laser/3/act1
### アイシングレイ
execute if entity @s[tag=IcingRay] run function skill_manager:enemy/icing_ray/1/act1
### ホワイトライダー
execute if entity @s[tag=WhiteRider] run function skill_manager:enemy/whiterider/summon
### ななめジャンプ
execute if entity @s[tag=JumpingAttack] run function skill_manager:enemy/jump/1
### 魔弾の射手
execute if entity @s[tag=Shooter,tag=!DontMove] run function skill_manager:enemy/shooter/move/1
### キャプチャー
execute if entity @s[tag=Capture] run function skill_manager:enemy/capture/1

### 発生確率0%セット
scoreboard players reset $Threshold Global
