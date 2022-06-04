#NativeTask

###真空斬り
execute if entity @s[tag=AerialSlash] run function skill:act/knight/aerial_slash/tick
###地烈斬
# execute if entity @s[tag=CrackSlash] run function skill:act/knight/crack_slash/tick
###影封縫
execute if entity @s[tag=ShadowThrust] run function skill:act/knight/shadow_thrust/tick
###斬鉄剣
execute if entity @s[tag=OdinSlash] run function skill:act/knight/odin_slash/tick_slash
###介錯処理
execute if entity @s[tag=KaishakuExplosion] run function skill:act/ninja/kaishaku/explode_tick
###ステークスファイア処理
execute if entity @s[tag=StakesFire] run function makeup:skill/act/hunter/stakes_fire/tick
###バードストライク処理
execute if entity @s[tag=BirdStrike] run function skill:act/hunter/bird_strike/tick
###ワイルドクッキング継続処理
execute if entity @s[tag=WildCooking] run function skill:act/hunter/wild_cooking/tick
###ワイルドフレア継続処理
# execute if entity @s[tag=WildFlare] run function skill:act/hunter/wild_flare/tick
###フォトニックレーザー
execute if entity @s[tag=PhotonicLaser] run function skill:act/hunter/photonic_laser/tick0
###シャイニングボルト
execute if entity @s[tag=ShiningBolt] run function makeup:skill/act/white_mage/shining_bolt/tick
###フラワーギフト
execute if entity @s[tag=FlowerGift] run function skill:act/white_mage/flower_gift/tick
###レイズ処理
execute if entity @s[tag=RaisePoint] run function makeup:skill/act/white_mage/araise/tick
###セイクリッドピラー処理
execute if entity @s[tag=SacredPillar] run function skill:act/white_mage/sacred_pillar/tick/
###ホーリー処理
execute if entity @s[tag=Holy] run function skill:act/white_mage/holy/tick
###アイスジャベリン処理
#execute if entity @s[tag=IceStorm] run function skill:act/black_mage/ice_storm/tick
###アイスジャベリン処理
execute if entity @s[tag=JavelinIce] run function skill:act/black_mage/ice_javelin/tick
###スティッキーアイス処理
execute if entity @s[tag=StickyIce] run function skill:act/black_mage/sticky_ice/tick
###エクリプスフレイム処理
#execute if entity @s[tag=CrossFire] run function skill:act/black_mage/cross_fire/tick
###エクリプスフレイム処理
execute if entity @s[tag=EclipseFlameCore] run function skill:act/black_mage/eclipse_flame/tick
###ワイルドカード処理
# execute if entity @s[tag=WildCard] run function skill:act/black_mage/wild_card/cast/tick
###キャンドル処理
execute if entity @s[tag=Candle] positioned ~ ~1 ~ unless entity @e[tag=Candle,distance=..0.01,limit=1] positioned as @s run function skill:act/black_mage/candle/tick
###ジン・スピリットコウモリ処理
execute if entity @s[tag=GinSpiritBat] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,gamemode=!creative,gamemode=!spectator,limit=1] run function skill:act/black_mage/gin_spirit/heal
###ウィンドウォール竜巻処理
# execute if entity @s[tag=WindWallTornado] run function skill:act/black_mage/wind_wall/tick_tornado
###金タライ処理
execute if entity @s[tag=KanaTarai] if entity @e[tag=Enemy,dx=0] run function skill:act/summoner/kana_tarai/hit
###つんつんペット処理
# execute if entity @s[tag=Sicced] run function skill:act/sicced/pets
###サモンＢ処理
execute if entity @s[tag=SummonedBlock] run function skill:act/summoner/fill/tick
###ふかふか処理
execute if entity @s[tag=Fukafuka] run function skill:act/summoner/fukafuka/tick
###コールC処理
execute if entity @s[tag=Crystal] run function skill:act/summoner/call_crystal_attack/tick/all
###グライダー処理
execute if entity @s[tag=Glider] run function skill:act/summoner/summon_glider/glide
###ぷちブラック処理
execute if entity @s[tag=PetitBlack] run function skill:act/summoner/petit_black/tick
###ウィークペイント
# execute if entity @s[tag=WeakPaint] run function skill:act/common/weakness_paint/tick
###ライブラ
# execute if entity @s[tag=Libra] run function skill:act/common/libra/tick

###トラップ
execute if entity @s[tag=DecelerateTrap] run function skill:act/hunter/decelerate_trap/tick
execute if entity @s[tag=ExpelTrap] run function skill:act/hunter/expel_trap/tick
execute if entity @s[tag=KasapTrap] run function skill:act/hunter/kasap_trap/tick

###ふかふかケージ
execute if entity @s[tag=Cage] run function skill:act/summoner/fukafuka/cage

###ジン・スピリット処理
execute if entity @s[tag=GinSpirit] run function skill:act/black_mage/gin_spirit/tick
