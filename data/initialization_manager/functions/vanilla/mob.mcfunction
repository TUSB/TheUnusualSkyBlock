##############################
### バニラエンティティ初期化
##############################

########## モンスター・生物 ##########
tag @s add Mob
function status_manager:definition_reader/vanilla

### コウモリ イルカ オウム カメ
execute unless entity @s[type=!minecraft:bat,type=!minecraft:dolphin,type=!minecraft:parrot,type=!minecraft:turtle] run function initialization_manager:vanilla/draw/ally/non_active

### ネコ ニワトリ ウシ ロバ ウマ ラマ ムーシュルーム ラバ オセロット ブタ ウサギ ヒツジ スケルトンホース ゾンビホース
execute unless entity @s[type=!minecraft:cat,type=!minecraft:chicken,type=!minecraft:cow,type=!minecraft:donkey,type=!minecraft:horse,type=!minecraft:llama,type=!minecraft:mooshroom,type=!minecraft:mule,type=!minecraft:ocelot,type=!minecraft:pig,type=!minecraft:rabbit,type=!minecraft:sheep,type=!minecraft:skeleton_horse,type=!minecraft:zombie_horse] run function initialization_manager:vanilla/draw/animal

### タラ フグ サケ イカ 熱帯魚
execute unless entity @s[type=!minecraft:cod,type=!minecraft:pufferfish,type=!minecraft:salmon,type=!minecraft:squid,type=!minecraft:tropical_fish] run function initialization_manager:vanilla/draw/fish

### 洞窟クモ クリーパー ドラウンド エンダーマイト ジャイアント ガーディアン ハスク シルバーフィッシュ スケルトン クモ ストレイ ウィザースケルトン ゾンビ
execute unless entity @s[type=!minecraft:cave_spider,type=!minecraft:creeper,type=!minecraft:drowned,type=!minecraft:endermite,type=!minecraft:giant,type=!minecraft:guardian,type=!husk,type=!minecraft:silverfish,type=!minecraft:skeleton,type=!minecraft:spider,type=!minecraft:stray,type=!minecraft:wither_skeleton,type=!minecraft:zombie_horse] run function initialization_manager:vanilla/draw/enemy/active

### エルダーガーディアン エンダードラゴン シャルカー ウィザー
execute unless entity @s[type=!minecraft:elder_guardian,type=!minecraft:ender_dragon,type=!minecraft:shulker,type=!minecraft:wither] run function initialization_manager:vanilla/draw/enemy/boss

### マグマキューブ スライム
execute unless entity @s[type=!minecraft:magma_cube,type=!minecraft:slime] run function initialization_manager:vanilla/draw/slimy

### エンダーマン パンダ シロクマ　オオカミ ゾンビピッグマン
execute unless entity @s[type=!minecraft:enderman,type=!minecraft:panda,type=!minecraft:polar_bear,type=!minecraft:wolf,type=!minecraft:zombie_pigman] run function initialization_manager:vanilla/draw/enemy/non_active

### ブレイズ ガスト ファントム ヴェックス
execute unless entity @s[type=!minecraft:blaze,type=!minecraft:ghast,type=!minecraft:phantom,type=!minecraft:vex] run function initialization_manager:vanilla/draw/enemy/fly

### イヴォーカー イリュージョナー ピリッジャー ヴィンディケーター
execute unless entity @s[type=!minecraft:evoker,type=!minecraft:illusioner,type=!minecraft:pillager,type=!minecraft:vindicator] run function initialization_manager:vanilla/draw/ally/active

### ラヴィッジャー トレーダーラマ
execute unless entity @s[type=!minecraft:ravager,type=!minecraft:trader_llama] run function initialization_manager:vanilla/draw/ally/boss

### アイアンゴーレム スノーゴーレム
execute unless entity @s[type=!minecraft:iron_golem,type=!minecraft:snow_golem] run function initialization_manager:vanilla/draw/golem

### 村人 行商人
execute unless entity @s[type=!minecraft:villager,type=!minecraft:wandering_trader] run function initialization_manager:vanilla/draw/ally/villager

### ウィッチ ゾンビ村人
execute unless entity @s[type=!minecraft:witch,type=!minecraft:zombie_villager] run function initialization_manager:vanilla/draw/enemy/villager
