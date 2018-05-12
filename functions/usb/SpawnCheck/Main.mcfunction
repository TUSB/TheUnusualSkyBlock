###敵性モブチェック
scoreboard players tag @s[team=!FriendlyTeam] add Enemy {Attributes:[{Name:"generic.followRange"}],Invulnerable:false}
function usb:SpawnCheck/Enemy if @s[tag=Enemy]
###飛翔物チェック
scoreboard players tag @s add FlyingObject {inTile:"minecraft:air"}
scoreboard players tag @s add FlyingObject {life:0}
scoreboard players tag @s[type=minecraft:shulker_bullet] add FlyingObject
function usb:SpawnCheck/FlyingObject if @s[tag=FlyingObject]
###マインカートスポナーチェック
scoreboard players tag @s[type=minecraft:spawner_minecart] add FloatingRequired {PortalCooldown:0}
scoreboard players tag @s[type=minecraft:spawner_minecart,tag=!FloatingRequired] add CooldownRequired
###TNT即爆
entitydata @s[type=minecraft:tnt] {Fuse:0s,Motion:[0d,0d,0d]}
###上向きFallingBlock保護
entitydata @s[type=minecraft:falling_block] {FallDistance:1f}
###成功保証
seed
