### 薙ぎ払いに武器・属性ダメージのX％を追加
#メイン攻撃で計算済み、付与のみ
execute as @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f},distance=..7] run function skill:damage/apply/
