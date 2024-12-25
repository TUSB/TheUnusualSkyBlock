#> effect:palsy/check
### 麻痺 チェック
### 成功ならfail
### 失敗ならfail演出 -> true

execute store result score _ _ run function calc:random
scoreboard players set _ Calc 100
scoreboard players operation _ _ %= _ Calc

# スキル成功
execute if score _ _ > @s PalsyLevel run return fail
# スキル失敗
function makeup:effect/palsy/fail
return 1
