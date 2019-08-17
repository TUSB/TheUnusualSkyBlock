##############################
### 敵スキル発動
##############################

### 現在のタグをコピー
data modify entity 1-0-0-0-0 Tags set from entity @s Tags 
### タグに追加
data modify entity @s Tags append from block 0 0 0 RecordItem.tag.CurrentSkill[0].Name

### この間Tagsは1-0-0-0-0を書き換えること
execute if entity @s[tag=Blink] run function skill_manager:enemy/blink/level
execute if entity @s[tag=Call] run function skill_manager:enemy/call
execute if entity @s[tag=Capture] run function skill_manager:enemy/capture
execute if entity @s[tag=Charm] run function skill_manager:enemy/charm/level
execute if entity @s[tag=Explode] run function skill_manager:enemy/explode
execute if entity @s[tag=Haste] run function skill_manager:enemy/haste
execute if entity @s[tag=Heal] run function skill_manager:enemy/heal/select
execute if entity @s[tag=IcingRay] run function skill_manager:enemy/icing_ray
execute if entity @s[tag=Jump] run function skill_manager:enemy/jump
execute if entity @s[tag=Reraise] run function skill_manager:enemy/reraise/select
execute if entity @s[tag=Revival,scores={LifeTime=0..}] run function skill_manager:enemy/revival
execute if entity @s[tag=Satelite] run function skill_manager:enemy/satelite
execute if entity @s[tag=Scream] run function skill_manager:enemy/scream
execute if entity @s[tag=SecurityLaser] run function skill_manager:enemy/security_laser/level
execute if entity @s[tag=SelfHeal] run function skill_manager:enemy/self_heal
execute if entity @s[tag=Servant] run function skill_manager:enemy/servant
execute if entity @s[tag=Shinen] run function skill_manager:enemy/shinen
execute if entity @s[tag=Shooter] run function skill_manager:enemy/shootor
execute if entity @s[tag=Teleport] run function skill_manager:enemy/teleport
execute if entity @s[tag=WhiteRider] run function skill_manager:enemy/white_rider/summon

### タグを復元
data modify entity @s Tags set from entity 1-0-0-0-0 Tags
data merge entity 1-0-0-0-0 {Tags:[Initialized,System]}
