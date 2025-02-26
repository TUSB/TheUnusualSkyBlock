##############################
### 毎ティック永遠処理
##############################

###向き補正
# execute if entity @s[tag=FacingPlayer] at @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] run function calc_manager:get/angle1
# execute if entity @s[tag=FacingPlayer] run function calc_manager:set/rotation1
# execute if entity @s[tag=AroundPlayer] facing entity @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] feet rotated ~-45 ~ positioned ^ ^ ^1 run function calc_manager:get/angle1
# execute if entity @s[tag=AroundPlayer,tag=Inverted] facing entity @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] feet rotated ~45 ~ positioned ^ ^ ^1 run function calc_manager:get/angle1
# execute if entity @s[tag=AroundPlayer] run function calc_manager:set/rotation1

# execute if entity @s[tag=Homing] run function entity_manager:homing

###くるくる
# execute if entity @s[tag=Kurukuru] run function entity_manager:kurukuru
# execute if entity @s[tag=CircleCore] run function entity_manager:special_circle
###放物線
# execute if entity @s[tag=ParabolicEntity] run function calc_manager:parabora/move

### temporary task
execute if entity @s[scores={NativeFlag=100..}] run function main:task/temporary

###SmartMotion
execute if entity @s[tag=SmartMotion] run function smart_motion:core/entity_tick

### Mutated
execute if entity @s[tag=Mutated] run function makeup:enemy/mutated

###投射物ヒット検知
execute if entity @s[tag=DamageProjectile] run function entity:projectile_hit/

###ピクミン
# execute if entity @s[tag=Pikmin] run function pikmin_manager:throw/tick

###スキル
execute if entity @s[tag=Skill] run function skill:native_tick
execute if entity @s[tag=BurstShadow] run function skill:tick_player

###矢の反射削除処理
execute if entity @s[type=arrow,tag=!IgnoreReflection,nbt={HasBeenShot:1b}] run function entity:arrow_reflection
###接地矢(など)Projectileタグ削除
execute if entity @s[tag=FlyingRequired,nbt={inGround:true}] run function entity:in_ground
