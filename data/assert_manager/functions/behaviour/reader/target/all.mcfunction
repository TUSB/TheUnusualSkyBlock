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

schedule function assert_manager:behaviour/reader/target/desired_height/default 38t
schedule function assert_manager:behaviour/reader/target/desired_height/set 40t
