
#成功フラグ
data modify storage skill: Success set value 1b

# 忍者 バースト
execute unless data storage skill: Skill{Type:"TUSBMemory"} if entity @s[tag=BurstShadow] run function skill:burst/ninja/act1

# 職業変更制限反映
execute unless data storage skill: Skill{Type:"TUSBMemory"} if score @s ChangeJobLock matches -1 store result score @s ChangeJobLock run time query gametime

#実行
function skill:practice/act/
#MP消費
execute if data storage skill: {Success:true} run scoreboard players operation @s MP -= _ MP

#スキルを使ったらMP回復速度を落とす
execute if data storage skill: {Success:true} unless data storage skill: Skill{Name:"マナリフレッシュ"} if score _ MP matches 1.. run scoreboard players set @s MPAcceleration -600
# マナリフレッシュ
execute if data storage skill: Skill{Name:"マナリフレッシュ"} if score _ MP matches 1.. run function skill:act/black_mage/mana_refresh/mp_acceleration

#怪しい粉補正
execute unless data storage skill: {Success:true} if score @s SuspiciousPowderTime matches 1.. run function skill:act/common/suspicious_powder/use_skill1

#MPバー反映
function player:mp_bar/set
