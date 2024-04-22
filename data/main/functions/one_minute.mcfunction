
### １分処理

scoreboard players add $Minutes Count 1
execute if score $Minutes Count matches 60.. run function main:one_hour

scoreboard players set $TenSeconds Count 0

# SkillDisplay削除処理
# HasSkillDisplayに騎乗していなければ削除
scoreboard players set @e[tag=SkillDisplay] _ 0
execute as @e[tag=SkillDisplay] store result score @s _ on vehicle if entity @s
kill @e[tag=SkillDisplay,scores={_=0}]
