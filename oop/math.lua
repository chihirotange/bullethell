math = {
    rotate_point = function(self,p_x, p_y, o_x, o_y, angle)
        local result = {}
        printh(p_x)
        result.x = o_x + p_x * cos(angle) - p_y * sin(angle)
        result.y = o_y + p_y * cos(angle) + p_x * sin(angle)
        return result
    end
}