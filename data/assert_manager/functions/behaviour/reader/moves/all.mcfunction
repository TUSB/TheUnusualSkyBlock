##############################
### ターゲット定義テスト
##############################

schedule function assert_manager:behaviour/reader/moves/start_direction/rotate_offset/default 2t
schedule function assert_manager:behaviour/reader/moves/start_direction/rotate_offset/mean 4t
schedule function assert_manager:behaviour/reader/moves/start_direction/rotate_offset/range 6t
schedule function assert_manager:behaviour/reader/moves/start_direction/rotate_offset/mean_range 8t

schedule function assert_manager:behaviour/reader/moves/start_direction/tilt_offset/default 10t
schedule function assert_manager:behaviour/reader/moves/start_direction/tilt_offset/mean 12t
schedule function assert_manager:behaviour/reader/moves/start_direction/tilt_offset/range 14t
schedule function assert_manager:behaviour/reader/moves/start_direction/tilt_offset/mean_range 16t

schedule function assert_manager:behaviour/reader/moves/spin_speed/default 18t
schedule function assert_manager:behaviour/reader/moves/spin_speed/set 20t

schedule function assert_manager:behaviour/reader/moves/repeater/continue/default 22t
schedule function assert_manager:behaviour/reader/moves/repeater/continue/false 24t
schedule function assert_manager:behaviour/reader/moves/repeater/continue/true 26t

schedule function assert_manager:behaviour/reader/moves/repeater/count/default 28t
schedule function assert_manager:behaviour/reader/moves/repeater/count/set 30t

schedule function assert_manager:behaviour/reader/moves/repeater/delay/default 32t
schedule function assert_manager:behaviour/reader/moves/repeater/delay/mean 34t
schedule function assert_manager:behaviour/reader/moves/repeater/delay/range 36t
schedule function assert_manager:behaviour/reader/moves/repeater/delay/mean_range 38t

schedule function assert_manager:behaviour/reader/moves/repeater/duration/default 40t
schedule function assert_manager:behaviour/reader/moves/repeater/duration/set 42t

schedule function assert_manager:behaviour/reader/moves/target_position/default 44t
schedule function assert_manager:behaviour/reader/moves/target_position/update 46t
schedule function assert_manager:behaviour/reader/moves/target_position/memorize 48t
schedule function assert_manager:behaviour/reader/moves/target_position/direction 50t

schedule function assert_manager:behaviour/reader/moves/target_offset/forward/default 52t
schedule function assert_manager:behaviour/reader/moves/target_offset/forward/set 54t
schedule function assert_manager:behaviour/reader/moves/target_offset/upward/default 56t
schedule function assert_manager:behaviour/reader/moves/target_offset/upward/set 58t
