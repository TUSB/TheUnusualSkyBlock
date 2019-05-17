##############################
### バニラエンティティ初期化
##############################

########## モンスター・生物の場合 ##########
execute if entity @s[team=] run function initialization_manager:vanilla/mob

########## 飛翔物 ##########
### モンスターにより発生するもの
### 火の玉 ラマの唾 シャルカーバレット ウィザースカル
execute unless entity @s[type=!minecraft:fireball,type=!minecraft:llama_spit,type=!minecraft:shulker_bullet,type=!minecraft:wither_skull] run function initialization_manager:vanilla/handle/projectile/from_non_player

### モンスター・プレイヤー両方により発生するもの
### 矢 ポーション 小さい火の玉 雪玉 発光矢 トライデント
execute unless entity @s[type=!minecraft:arrow,type=!minecraft:potion,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:spectral_arrow,type=!minecraft:trident] run function initialization_manager:vanilla/handle/projectile/from_entity

########## 特別扱いが必要なもの ##########
### 落下砂
execute unless entity @s[type=!minecraft:falling_block] run function initialization_manager:vanilla/handle/falling_sand

### アイテム
execute unless entity @s[type=!minecraft:item] run function initialization_manager:vanilla/handle/item

### AEC
execute unless entity @s[type=!minecraft:area_effect_cloud] run function initialization_manager:vanilla/handle/aec

### イヴォーカーファング
execute unless entity @s[type=!minecraft:evoker_fangs] run function initialization_manager:vanilla/handle/fang

### トロッコ(入れられる)
execute unless entity @s[type=!minecraft:chest_minecart,type=!minecraft:hopper_minecart] run function initialization_manager:vanilla/handle/cart/container

########## 爆発物 ##########
### TNT [[DONE]]
execute unless entity @s[type=!minecraft:tnt] run function initialization_manager:vanilla/handle/tnt

### トロッコ(TNT) [[DONE]]
execute unless entity @s[type=!minecraft:tnt_minecart] run function initialization_manager:vanilla/handle/cart/tnt

### エンドクリスタル -> 敵にだけダメージを与える爆発スキルが発動するようにする [[TODO]]
execute unless entity @s[type=!minecraft:end_crystal] run function initialization_manager:vanilla/handle/crystal

########## 何もしないリスト ##########
### 経験値オーブ エンダーパール エンダーアイ 経験値ボトル 額縁 リード 絵画 浮き 花火
# execute unless entity @e[type=!minecraft:experience_orb,type=!minecraft:ender_pearl,type=!minecraft:eye_of_ender,type=!minecraft:experience_bottle,type=!minecraft:item_frame,type=!minecraft:leash_knot,type=!minecraft:painting,type=!minecraft:fishing_bobber,type=!minecraft:firework_rocket,type=!minecraft:armor_stand] run function initialization_manager:vanilla/handle/noop

########## 何もしないリスト(のりもの) ##########
### ボート トロッコ コマブロトロッコ かまどトロッコ
# execute unless entity @s[type=!minecraft:boat,type=!minecraft:minecart,type=!minecraft:command_block_minecart,type=!minecraft:furnace_minecart] run function initialization_manager:vanilla/handle/cart/noop
