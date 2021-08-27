##############################
### 地裂斬発動
##############################

###---演出---Start
function makeup:skill/act/knight/crack_slash/act00
###---演出---End

###弾召喚
summon minecraft:trident 1 1 1 {Tags:[Initializing,CrackSlash,CooldownRequired],PortalCooldown:20,NoGravity:true,Silent:true,DealtDamage:true}
###モーションを計算する
execute rotated ~ 0 positioned ^ ^ ^-0.1 run tp @e[tag=Initializing,limit=1] ~ ~0.1 ~
execute as @e[tag=Initializing,limit=1] positioned ~ ~0.1 ~ run function calc_manager:get/direction1

###モーション補正
#scoreboard players set $M Global 180
#function calc_manager:multiply/pos1
###モーション適用
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/motion1
###飛翔物スキル設定
execute if score @s ModeSkill matches 11021 run scoreboard players set $Damage Global 45000
execute if score @s ModeSkill matches 11022 run scoreboard players set $Damage Global 140000
execute if score @s ModeSkill matches 11023 run scoreboard players set $Damage Global 850000
function skill_manager:damage_modifier/apply
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = $Damage Global

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing

###---演出---Start
function makeup:skill/act/knight/crack_slash/act01
###---演出---End
