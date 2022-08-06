
### 遠隔攻撃ターゲットを取得する


tag @s add CasterPlayer

execute positioned ^ ^ ^0.1 run function calc:target/caster/enemy/catch_loop

tag @s remove CasterPlayer

# 1tick後にターゲット解放
schedule function calc:target/caster/release 1t
