##############################
### 遠隔攻撃ターゲットを解放する
##############################

### function calc_manager:target/caster/catch
### のお片付けファンクション

tag @e[tag=CasterTarget,limit=1] remove CasterTarget
