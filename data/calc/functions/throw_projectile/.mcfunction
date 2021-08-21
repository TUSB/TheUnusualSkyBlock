###保存するMotionと同じPosでこのfunctionを実行する
#Motionを保存
execute unless entity 0-0-0-0-0 run summon marker ^ ^ ^ {UUID:[I;0,0,0,0]}
execute in area:control_area run tp 0-0-0-0-0 ^ ^ ^
data modify entity @s Motion set from entity 0-0-0-0-0 Pos
#2t後にNoGravity解除
schedule function calc:throw_projectile/schedule2/ 2t replace
#2t後までtag付与
tag @s add SkillProjectile
