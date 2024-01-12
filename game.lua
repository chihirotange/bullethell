function _init()
    aichan = create(actor_spr, {draw_order = 10, spr_i = 1})
-- spr = 1})
end

function _update()
    actor_mng:update()
end

function _draw()
    cls()
    actor_mng:draw()
end