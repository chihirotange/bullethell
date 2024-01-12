function _init()
    create(bullet, {draw_order = 10, spr_i = 1, x = 10})
end

function _update()
    actor_mng:update()
end

function _draw()
    cls()
    actor_mng:draw()
end