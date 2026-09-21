#> player:burst/bar/macro/init

# 個人バースト ボスバー作成
$bossbar remove burst:$(id)
$bossbar add burst:$(id) {"translate":"ブレイクゲージ","italic":true,"bold":true}
$bossbar set burst:$(id) color white
$bossbar set burst:$(id) visible false
$bossbar set burst:$(id) style notched_6
$execute store result bossbar burst:$(id) max run data get storage tusb_player: burst_config.require_burst
$bossbar set burst:$(id) players @s
