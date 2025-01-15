#> entity:damage/apply/core/player
# プレイヤーへダメージを与える

# カスタム死亡ログがあればそれを表示するためにデフォルト死亡ログを非表示
# execute if data storage entity: damage.deathcouse

# damageコマンドを実行する
function entity:damage/apply/core/apply.macro with storage entity:_ damage

# カスタム死亡ログがあって死亡すればログを表示
# execute if data storage entity: damage.deathcouse
# execute if data storage entity: damage.deathcouse
