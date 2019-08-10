##############################
### 敵スキル発動
##############################

### タグに追加
data modify entity @s Tags append from block 0 0 0 RecordItem.tag.Parameter.Skill[0].Name

execute if entity @s[tag=Blink] run function skill_manager:enemy/blink/level
execute if entity @s[tag=Call] run function skill_manager:enemy/call/1
execute if entity @s[tag=Capture] run function skill_manager:enemy/capture/1
execute if entity @s[tag=Charm] run function skill_manager:enemy/charm/level
execute if entity @s[tag=Heal] run function skill_manager:enemy/heal/level
execute if entity @s[tag=IcingRay] run function skill_manager:enemy/icing_ray/1
execute if entity @s[tag=Interpolator] run function skill_manager:enemy/interpolator/level
execute if entity @s[tag=Jump] run function skill_manager:enemy/jump/1
execute if entity @s[tag=Reraise] run function skill_manager:enemy/reraise/1
execute if entity @s[tag=Satelite] run function skill_manager:enemy/satelite/1
execute if entity @s[tag=Scream] run function skill_manager:enemy/scream/1
execute if entity @s[tag=SecurityLaser] run function skill_manager:enemy/security_laser/level
execute if entity @s[tag=SelfDamage] run function skill_manager:enemy/self_damage/1
execute if entity @s[tag=SelfHeal] run function skill_manager:enemy/self_heal/level
execute if entity @s[tag=Servant] run function skill_manager:enemy/servant/1
execute if entity @s[tag=Shinen] run function skill_manager:enemy/shinen/1
execute if entity @s[tag=Shooter] run function skill_manager:enemy/shootor/1
execute if entity @s[tag=Teleport] run function skill_manager:enemy/teleport/1
execute if entity @s[tag=WhiteRider] run function skill_manager:enemy/white_rider/1

### タグを復元
data modify entity @s Tags set from block 0 0 0 RecordItem.tag.EntityData.Tags
