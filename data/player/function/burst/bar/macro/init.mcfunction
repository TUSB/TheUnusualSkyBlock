#> player:burst/bar/macro/init

# 個人バースト ボスバー作成
$bossbar remove burst:$(id)
$bossbar add burst:$(id) {"translate":"バーストゲージ","italic":true,"bold":true}
$bossbar set burst:$(id) color white
$bossbar set burst:$(id) visible false
$bossbar set burst:$(id) style notched_6
$bossbar set burst:$(id) max 100
$bossbar set burst:$(id) players @s
