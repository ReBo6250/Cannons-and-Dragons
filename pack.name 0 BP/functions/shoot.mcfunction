# Dragon shoot
    execute @e[type=rebo:dragon,tag=is_tamed,tag=has_rider,r=5,c=1] ~ ~ ~ event entity @p[r=5,scores={c_fireballs=1..}] e:dragon_shoot
    execute @e[type=rebo:baby_dragon,tag=is_tamed,tag=has_rider,r=5,c=1] ~ ~ ~ event entity @p[r=5,scores={c_fireballs=1..}] e:dragon_shoot
    execute @e[type=rebo:wyvern,tag=is_tamed,tag=has_rider,r=5,c=1] ~ ~ ~ event entity @p[r=5,scores={c_fireballs=1..}] e:dragon_shoot

    execute @e[type=!rebo:cannon,tag=is_tamed,tag=has_rider,r=5,c=1] ~ ~ ~ playsound mob.blaze.shoot @p[r=5,scores={c_fireballs=1..}] ~ ~ ~ 100.0 0.5 100.0
    execute @e[type=!rebo:cannon,tag=is_tamed,tag=has_rider,r=5,c=1] ~ ~ ~ scoreboard players remove @p[r=5,scores={c_fireballs=1..}] c_fireballs 1

# Cannon shoot
    execute @e[type=rebo:cannon,tag=has_rider,r=5,c=1] ~ ~ ~ event entity @p[r=5,scores={c_cannonballs=1..}] e:cannon_shoot

    execute @s[scores={c_cannonballs=1..}] ~ ~ ~ execute @e[type=rebo:cannon,tag=has_rider,r=5,c=1] ~ ~ ~ playanimation @s animation.cannon.fire
    execute @e[type=rebo:cannon,tag=has_rider,r=5,c=1] ~ ~ ~ playsound random.explode @p[r=5,scores={c_cannonballs=1..}] ~ ~ ~ 100.0 1.3 100.0
    execute @e[type=rebo:cannon,tag=has_rider,r=5,c=1] ~ ~ ~ scoreboard players remove @p[r=5,scores={c_cannonballs=1..}] c_cannonballs 1
