-- FIXME: ömer'in ellerinden öper.
local mt = {}
mt.__index = mt

return {
    new = function()
        return setmetatable({}, mt)
    end
}
