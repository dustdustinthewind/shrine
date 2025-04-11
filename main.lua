-- the dip will be the furthest point the rope can be from

function _init()
    --june colors 🐕
    poke(0x5f2e,1)
    pal({[0]=0,129,2,11,137,130,143,7,8,9,10,138,12,140,136,14},1)

    --poke mouse
    poke(24365,1)

    m = mouse()
    h = heart()
    s = red_string({x1 = stat(32), y1 = stat(33)})
end

function _update60()
    m:update()

    h:update()

    local offset = 0
    if (h.on_beat) offset = 2

    s.x1 = m.x
    s.y1 = m.y - 2 + offset
    s:update()
end

function _draw()
    cls()
    m:draw()
    s:draw()
    h:draw()
end