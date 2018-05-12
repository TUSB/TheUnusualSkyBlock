########################################
	#ロード時load_oneを１回だけ通るようにする
	#From Tag minecraft:load
	#as ワールド at ワールド
########################################
scoreboard objectives add LOGIN_COUNT minecraft.custom:minecraft.play_one_minute ログイン検知タイマー
execute unless score $Base LOGIN_COUNT matches 1.. run function main:load_once
difficulty normal
defaultgamemode adventure
#say ワールドをロードしました。
