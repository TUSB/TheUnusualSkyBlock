#> settings:player/burst/config
data remove storage tusb_player: burst_config

## バーストブレイクするためのブレイクゲージ必要量
data modify storage tusb_player: burst_config.require_burst set value 100

## ブレイクゲージがリセットされるまでの時間(ゲージ増減でリセット)
data modify storage tusb_player: burst_config.reset_time set value 20

## バーストブレイクしたときのMobへのダメージ
data modify storage tusb_player: burst_config.burst_break.enemy_damage set value {magic:50}

## バーストブレイクしたときのスポナーへのダメージ
data modify storage tusb_player: burst_config.burst_break.spawner_damage set value 10

## バーストブレイクがリセットされるまでの時間(スポナー破壊でリセット)
data modify storage tusb_player: burst_config.burst_break.reset_time set value 120
