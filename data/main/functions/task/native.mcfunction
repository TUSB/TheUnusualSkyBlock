##############################
### 毎ティック永遠処理
##############################

###向き補正
# execute if entity @s[tag=FacingPlayer] at @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] run function calc_manager:get/angle1
# execute if entity @s[tag=FacingPlayer] run function calc_manager:set/rotation1
# execute if entity @s[tag=AroundPlayer] facing entity @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] feet rotated ~-45 ~ positioned ^ ^ ^1 run function calc_manager:get/angle1
# execute if entity @s[tag=AroundPlayer,tag=Inverted] facing entity @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},sort=nearest,limit=1] feet rotated ~45 ~ positioned ^ ^ ^1 run function calc_manager:get/angle1
# execute if entity @s[tag=AroundPlayer] run function calc_manager:set/rotation1

# execute if entity @s[tag=Homing] run function entity_manager:homing

###くるくる
# execute if entity @s[tag=Kurukuru] run function entity_manager:kurukuru
# execute if entity @s[tag=CircleCore] run function entity_manager:special_circle
###放物線
# execute if entity @s[tag=ParabolicEntity] run function calc_manager:parabora/move

###ピクミン
# execute if entity @s[tag=Pikmin] run function pikmin_manager:throw/tick

###真空斬り
# execute if entity @s[tag=AerialSlash,scores={DecrementTimer=..0}] run function skill:act/knight/aerial_slash/re_aim
###地烈斬
# execute if entity @s[tag=CrackSlash] run function skill:act/knight/crack_slash/tick
###斬鉄剣
# execute if entity @s[tag=OdinSlash1] run function skill:act/knight/odin_slash/tick1
# execute if entity @s[tag=OdinSlash2] run function skill:act/knight/odin_slash/tick2
# execute if entity @s[tag=OdinSlash3] run function skill:act/knight/odin_slash/tick3
###手裏剣
# execute if entity @s[tag=Shuriken] run function skill:act/ninja/shuriken/tick
###介錯処理
# execute if entity @s[tag=KaishakuExplosion] run function skill:act/ninja/kaishaku/tick
###ステークスファイア処理
execute if entity @s[tag=StakesFire] run function makeup:skill/act/hunter/stakes_fire/tick
###バードストライク処理
# execute if entity @s[tag=BirdStrike] run function skill:act/hunter/bird_strike/tick
###ワイルドフレア継続処理
# execute if entity @s[tag=WildFlare] run function skill:act/hunter/wild_flare/tick
###フォトニックレーザー
# execute if entity @s[tag=PhotonicLazer] run function skill:act/hunter/photonic_lazer/tick
###ディア
execute if entity @s[tag=Dia] run function makeup:skill/act/white_mage/dia/tick
###フラワーギフト
# execute if entity @s[tag=FlowerGift] run function skill:act/white_mage/flower_gift/tick
###レイズ処理
# execute if entity @s[tag=RaisePoint] run function skill:act/white_mage/araise/tick
###セイクリッドピラー処理
# execute if entity @s[tag=SacredPillarBase] run function skill:act/white_mage/sacred_pillar/tick/common
###ホーリー処理
# execute if entity @s[tag=Holy] run function skill:act/white_mage/holy/tick
###アイスジャベリン処理
#execute if entity @s[tag=IceStorm] run function skill:act/black_mage/ice_storm/tick
###アイスジャベリン処理
# execute if entity @s[tag=JavelinIce] run function skill:act/black_mage/ice_javelin/tick
###スティッキーアイス処理
# execute if entity @s[tag=StickyIce] run function skill:act/black_mage/sticky_ice/tick
###エクリプスフレイム処理
#execute if entity @s[tag=CrossFire] run function skill:act/black_mage/cross_fire/tick
###エクリプスフレイム処理
# execute if entity @s[tag=EclipseFlameCore] run function skill:act/black_mage/eclipse_flame/tick
# execute if entity @s[tag=EclipseFlameParticle] run function skill:act/black_mage/eclipse_flame/direction
###ワイルドカード処理
# execute if entity @s[tag=WildCard] run function skill:act/black_mage/wild_card/cast/tick
###キャンドル処理
# execute if entity @s[tag=Candle] positioned ~ ~1 ~ unless entity @e[tag=Candle,distance=..0.01,limit=1] positioned as @s run function skill:act/black_mage/candle/tick
###ジン・スピリット処理
# execute if entity @s[tag=GinSpirit] run function skill:act/black_mage/gin_spirit/tick
###ジン・スピリットコウモリ処理
# execute if entity @s[tag=GinSpiritBat] positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,gamemode=!creative,gamemode=!spectator,limit=1] run function skill:act/black_mage/gin_spirit/heal
###ウィンドウォール竜巻処理
# execute if entity @s[tag=WindWallTornado] run function skill:act/black_mage/wind_wall/tick_tornado
###金タライ処理
# execute if entity @s[tag=KanaTarai] run function skill:act/summoner/kana_tarai/tick
###つんつんペット処理
# execute if entity @s[tag=Sicced] run function skill:act/sicced/pets
###サモンＢ処理
execute if entity @s[tag=SummonedBlock] run function skill:act/summoner/fill/tick
###ふかふか処理
# execute if entity @s[tag=Fukafuka] run function skill:act/summoner/fukafuka/tick
###コールC処理
# execute if entity @s[tag=Crystal] run function skill:act/summoner/call_crystal/tick/all
###グライダー処理
execute if entity @s[tag=Glider] run function skill:act/summoner/summon_glider/glide
###ぷちブラック処理
# execute if entity @s[tag=PetitBlack] run function skill:act/summoner/petit_black/tick/all
###ウィークペイント
# execute if entity @s[tag=WeakPaint] run function skill:act/common/weakness_paint/tick
###ライブラ
# execute if entity @s[tag=Libra] run function skill:act/common/libra/tick

###接地矢(など)Projectileタグ削除
execute if entity @s[tag=FlyingRequired,nbt={inGround:true}] run function entity:in_ground
