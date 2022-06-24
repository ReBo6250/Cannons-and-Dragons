# High
    execute @s[rxm=-45,rx=-25] ~ ~ ~ effect @s levitation 1 15 true
    execute @s[rxm=-45,rx=-25,tag=!is_on_ground] ~ ~ ~ effect @s speed 1 1 true
# Medium high
    execute @s[rxm=-25,rx=-5] ~ ~ ~ effect @s levitation 1 5 true
    execute @s[rxm=-25,rx=-5,tag=!is_on_ground] ~ ~ ~ effect @s speed 1 5 true
# Normal
    execute @s[rxm=-5,rx=5] ~ ~ ~ effect @s levitation 1 0 true
    execute @s[rxm=-5,rx=5,tag=!is_on_ground] ~ ~ ~ effect @s speed 1 15 true
# Medium Low
    execute @s[rxm=5,rx=25] ~ ~ ~ effect @s slow_falling 1 2 true
    execute @s[rxm=5,rx=25,tag=!is_on_ground] ~ ~ ~ effect @s speed 1 20 true
# Low
    execute @s[rxm=25,rx=45] ~ ~ ~ effect @s slow_falling 1 0 true
    execute @s[rxm=25,rx=45,tag=!is_on_ground] ~ ~ ~ effect @s speed 0 0 true
# Off
    execute @s[tag=is_on_ground] ~ ~ ~ effect @s speed 0 0 true
