local mt = {}
mt.__index = mt

local colors = require 'src.colors'

function mt:draw()
    -- TODO: get flag position from maze.
    self.x = math.min(math.max(self.x, self.maze_offset), self.maze_offset + (self.maze_size - 1) * self.size)
    self.y = math.min(math.max(self.y, self.maze_offset), self.maze_offset + (self.maze_size - 1) * self.size)

    -- TODO: add chocolate asset here.
    love.graphics.setColor(colors.YELLOW_CHENIN)
    love.graphics.rectangle('fill', self.x, self.y, self.size, self.size)
end

return {
    new = function(x, y, size, maze_size, maze_offset)
        return setmetatable({
            x = x,
            y = y,
            size = size,
            maze_size = maze_size,
            maze_offset = maze_offset
        }, mt)
    end
}