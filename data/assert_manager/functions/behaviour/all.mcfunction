##############################
### ターゲット定義テスト
##############################

schedule function assert_manager:behaviour/reader/target/type/default 2t
schedule function assert_manager:behaviour/reader/target/type/natural 4t

schedule function assert_manager:behaviour/reader/target/type/target_ally 8t
schedule function assert_manager:behaviour/reader/target/type/target_enemy 10t

schedule function assert_manager:behaviour/reader/target/active/default 12t
schedule function assert_manager:behaviour/reader/target/active/always 14t
schedule function assert_manager:behaviour/reader/target/active/damaged 16t

schedule function assert_manager:behaviour/reader/target/desired_distance/default 18t
schedule function assert_manager:behaviour/reader/target/desired_distance/set 20t

schedule function assert_manager:behaviour/reader/target/follow_range/default_mob 22t
schedule function assert_manager:behaviour/reader/target/follow_range/default_bullet 24t
schedule function assert_manager:behaviour/reader/target/follow_range/set_mob 26t
schedule function assert_manager:behaviour/reader/target/follow_range/set_bullet 28t

schedule function assert_manager:behaviour/reader/target/detect/default 30t
schedule function assert_manager:behaviour/reader/target/detect/nearest 32t
schedule function assert_manager:behaviour/reader/target/detect/perspective 34t
schedule function assert_manager:behaviour/reader/target/detect/sight 36t











schedule function assert_manager:behaviour/reader/directions/repeater/continue/default 30t
schedule function assert_manager:behaviour/reader/directions/repeater/continue/true 32t
schedule function assert_manager:behaviour/reader/directions/repeater/continue/false 34t

schedule function assert_manager:behaviour/reader/directions/repeater/duration/default 36t
schedule function assert_manager:behaviour/reader/directions/repeater/duration/set 38t

schedule function assert_manager:behaviour/reader/directions/repeater/end/default 40t
schedule function assert_manager:behaviour/reader/directions/repeater/end/set 42t

schedule function assert_manager:behaviour/reader/directions/repeater/random_delay/default 44t
schedule function assert_manager:behaviour/reader/directions/repeater/random_delay/set 46t

schedule function assert_manager:behaviour/reader/directions/repeater/count/default 48t
schedule function assert_manager:behaviour/reader/directions/repeater/count/set 50t

schedule function assert_manager:behaviour/reader/directions/repeater/start/default 52t
schedule function assert_manager:behaviour/reader/directions/repeater/start/set 54t

schedule function assert_manager:behaviour/reader/directions/target_pos/default 56t
schedule function assert_manager:behaviour/reader/directions/target_pos/set_x 58t
schedule function assert_manager:behaviour/reader/directions/target_pos/set_y 60t
schedule function assert_manager:behaviour/reader/directions/target_pos/set_z 62t
schedule function assert_manager:behaviour/reader/directions/target_pos/set_xyz 64t

schedule function assert_manager:behaviour/reader/directions/target_offset/default 66t
schedule function assert_manager:behaviour/reader/directions/target_offset/set_x 68t
schedule function assert_manager:behaviour/reader/directions/target_offset/set_y 70t
schedule function assert_manager:behaviour/reader/directions/target_offset/set_z 72t
schedule function assert_manager:behaviour/reader/directions/target_offset/set_xyz 74t

schedule function assert_manager:behaviour/reader/directions/rotate_speed/default 76t
schedule function assert_manager:behaviour/reader/directions/rotate_speed/set 78t

schedule function assert_manager:behaviour/reader/directions/tilt_speed/default 80t
schedule function assert_manager:behaviour/reader/directions/tilt_speed/set 82t

schedule function assert_manager:behaviour/reader/directions/update_tick/default 84t
schedule function assert_manager:behaviour/reader/directions/update_tick/set 86t

schedule function assert_manager:behaviour/reader/directions/rotate_angle/default 88t
schedule function assert_manager:behaviour/reader/directions/rotate_angle/center 90t
schedule function assert_manager:behaviour/reader/directions/rotate_angle/range 92t
schedule function assert_manager:behaviour/reader/directions/rotate_angle/center_range 94t

schedule function assert_manager:behaviour/reader/directions/tilt_angle/default 96t
schedule function assert_manager:behaviour/reader/directions/tilt_angle/center 98t
schedule function assert_manager:behaviour/reader/directions/tilt_angle/range 100t
schedule function assert_manager:behaviour/reader/directions/tilt_angle/center_range 102t
