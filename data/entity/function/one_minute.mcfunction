#> entity:one_minute
# -> 1時間処理
## 使用するときにコメントアウトを外してください。
# execute if score $Minutes Count matches 0 run function entity:one_hour

# SkillDisplay削除処理
# HasSkillDisplayに騎乗していなければ削除
execute as @e[tag=SkillDisplay] unless predicate entity:vehicle run kill @s
