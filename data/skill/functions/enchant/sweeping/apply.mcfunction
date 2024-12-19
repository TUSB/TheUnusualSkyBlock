### 薙ぎ払いに武器・属性ダメージのX％を追加
#メイン攻撃で計算済み、付与のみ
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] run function skill:damage/apply/

#属性ダメージ演出
execute at 0-0-0-0-2 run function makeup:skill/enchant/elemental_damage/hit
