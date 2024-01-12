bullet = actor_spr:new({
    update = function(_ENV)
        x = math:rotate_point(x, y, 50, 50, time()).x
        y = math:rotate_point(x, y, 50, 50, time()).y
    end
})