##############################
### 毎ティック処理
##############################

###向き補正
tp @s[tag=TowardPlayer] ^ ^ ^ facing entity @p[nbt=!{Health:0.0f}]

###地烈斬
execute if entity @s[tag=CrackSlash] run function skill_manager:knight/crack_slash/tick
###斬鉄剣
execute if entity @s[tag=OdinSlash1] run function skill_manager:knight/odin_slash/tick1
execute if entity @s[tag=OdinSlash2] run function skill_manager:knight/odin_slash/tick2
execute if entity @s[tag=OdinSlash3] run function skill_manager:knight/odin_slash/tick3
###手裏剣
execute if entity @s[tag=Shuriken] run function skill_manager:ninja/shuriken/tick
###介錯処理
execute if entity @s[tag=KaishakuExplosion] run function skill_manager:ninja/kaishaku/tick
###ステークスファイア処理
execute if entity @s[tag=StakesSucceeded] run function skill_manager:hunter/stakes_fire/success
execute if entity @s[tag=StakesFailed] run function skill_manager:hunter/stakes_fire/failure
###バードストライク処理
execute if entity @s[tag=BirdStrike] run function skill_manager:hunter/bird_strike/tick
###ワイルドフレア継続処理
execute if entity @s[tag=WildFlare] run function skill_manager:hunter/wild_flare/tick
###セイクリッドピラー処理
execute if entity @s[tag=SacredPillarBase] run function skill_manager:white_mage/sacred_pillar/tick/common
###アイスストーム処理
execute if entity @s[tag=IceStorm] run function skill_manager:black_mage/ice_storm/tick
###クロスファイア処理
execute if entity @s[tag=CrossFire] run function skill_manager:black_mage/cross_fire/tick
###つんつんペット処理
execute if entity @s[tag=Sicced] run function skill_manager:sicced/pets
###コールC処理
execute if entity @s[tag=Crystal] run function skill_manager:summoner/call_crystal/tick/all
###ぷちブラック処理
execute if entity @s[tag=PetitBlack] run function skill_manager:summoner/petit_black/tick/all
###ウィークペイント
execute if entity @s[tag=WeakPaint] run function skill_manager:common/weakness_paint/tick

###クールダウン監視処理
execute if entity @s[tag=ObserveCooldown] run function trigger_manager:cooldown/tick

###接地矢(など)Projectileタグ削除
execute if entity @s[tag=FlyingRequired,nbt={inGround:true}] run function trigger_manager:in_ground

###流体泳処理
execute if entity @s[tag=Swim] run function enemy_manager:swim/common
