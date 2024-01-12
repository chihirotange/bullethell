global = _ENV

class = setmetatable({
    new = function(_ENV, tbl)
        tbl =  tbl or {}
        setmetatable(tbl, {__index = _ENV})
        post_construct(tbl)
        return tbl
    end,
    post_construct = function(tbl)
    end
}, {__index = _ENV})

function create(type, tbl)
    tbl = type:new(tbl)
    add(actor_mng.update_list, tbl)
    if (tbl.draw_order != -1) then
        add_to_draw(tbl, tbl.draw_order)
    end
    return tbl
end

function add_to_draw(actor, draw_order)
    if count(actor_mng.draw_list) == 0 then
        add(actor_mng.draw_list, actor)
    else
        for i, a in pairs(actor_mng.draw_list) do
            if draw_order >= a.draw_order then
                add(actor_mng.draw_list, actor)
                break
            end
        end
    end
end

actor_mng = {
    update_list = {},
    draw_list = {},
    update = function(self)
        for a in all(self.update_list) do
            a:update()
        end
    end,
    draw = function(self)
        for a in all(self.draw_list) do
            a:draw()
        end
    end,
}

actor = class:new({
    x = 0,
    y = 0,
    draw_order = -1,
    post_construct = function(ENV)
    end,
    update = function(_ENV)
    end,
    draw = function(_ENV)
    end
})

actor_spr = actor:new({
    spr_i = -1,
    draw = function(_ENV)
        spr(spr_i, x, y)
    end
})