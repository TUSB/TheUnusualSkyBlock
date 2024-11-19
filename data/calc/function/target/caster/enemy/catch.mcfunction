#> calc:target/caster/enemy/catch
### 遠隔攻撃ターゲットの位置に0-0-0-0-0をTP

#成功フラグ初期化
data remove storage calc: Success
#実行者の目線位置を保存
execute anchored eyes run tp 0-0-0-0-0 ^ ^ ^

execute positioned ^ ^ ^0.1 anchored eyes run function calc:target/caster/enemy/catch_loop

# 1tick後にターゲット解放
schedule function calc:geometry/return_marker 1t replace
