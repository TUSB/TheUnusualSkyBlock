#> skill:act/summoner/petit_black/mob_damage2
# モブを実行者にして距離を測り、ダメージを与える
# 半径計算
    scoreboard players set _ Calc 4
    scoreboard players operation # Calc *= _ Calc
    scoreboard players remove # Calc 10
# 距離を取得
    execute store result score _ _ run function calc:geometry/distance/
# ダメージ付与
    execute if score _ _ <= # Calc run function skill:damage/apply/