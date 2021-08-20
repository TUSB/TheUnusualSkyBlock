### 薙ぎ払いに武器・属性ダメージのX％を追加
#メイン攻撃で計算済み、付与のみ
execute as @e[tag=Mob,nbt=!{HurtTime:0s},distance=..7] run function skill:damage/apply/
