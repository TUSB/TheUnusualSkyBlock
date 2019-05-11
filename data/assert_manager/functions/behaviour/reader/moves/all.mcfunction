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

schedule function assert_manager:behaviour/reader/moves/destination/default 44t
schedule function assert_manager:behaviour/reader/moves/destination/update 46t
schedule function assert_manager:behaviour/reader/moves/destination/memorize 48t
schedule function assert_manager:behaviour/reader/moves/destination/direction 50t

schedule function assert_manager:behaviour/reader/moves/target_offset/forward/default 52t
schedule function assert_manager:behaviour/reader/moves/target_offset/forward/set 54t

schedule function assert_manager:behaviour/reader/moves/forward/speed/default 56t
schedule function assert_manager:behaviour/reader/moves/forward/speed/set 58t
schedule function assert_manager:behaviour/reader/moves/forward/acceleration/default 60t
schedule function assert_manager:behaviour/reader/moves/forward/acceleration/set 62t
schedule function assert_manager:behaviour/reader/moves/forward/speed_min/default 64t
schedule function assert_manager:behaviour/reader/moves/forward/speed_min/set 66t
schedule function assert_manager:behaviour/reader/moves/forward/speed_max/default 68t
schedule function assert_manager:behaviour/reader/moves/forward/speed_max/set 70t

schedule function assert_manager:behaviour/reader/moves/upward/speed/default 72t
schedule function assert_manager:behaviour/reader/moves/upward/speed/set 74t
schedule function assert_manager:behaviour/reader/moves/upward/acceleration/default 76t
schedule function assert_manager:behaviour/reader/moves/upward/acceleration/set 78t
schedule function assert_manager:behaviour/reader/moves/upward/speed_min/default 80t
schedule function assert_manager:behaviour/reader/moves/upward/speed_min/set 82t
schedule function assert_manager:behaviour/reader/moves/upward/speed_max/default 84t
schedule function assert_manager:behaviour/reader/moves/upward/speed_max/set 86t

schedule function assert_manager:behaviour/reader/moves/leftward/speed/default 88t
schedule function assert_manager:behaviour/reader/moves/leftward/speed/set 90t
schedule function assert_manager:behaviour/reader/moves/leftward/acceleration/default 92t
schedule function assert_manager:behaviour/reader/moves/leftward/acceleration/set 94t
schedule function assert_manager:behaviour/reader/moves/leftward/speed_min/default 96t
schedule function assert_manager:behaviour/reader/moves/leftward/speed_min/set 98t
schedule function assert_manager:behaviour/reader/moves/leftward/speed_max/default 100t
schedule function assert_manager:behaviour/reader/moves/leftward/speed_max/set 102t
