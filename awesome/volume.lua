local function update_volume(widget)
    local fd = io.popen("amixer sget Master")
    local status = fd:read("*all")
    fd:close()

    -- Extract the volume percentage
    local volume = status:match("(%d?%d?%d)%%")
    if volume then
        volume = tonumber(volume) / 100
    else
        volume = 0 -- Default to 0 if extraction fails
    end

    -- Check the mute status
    local is_muted = status:match("%[(o[^%]]*)%]")

    -- Starting color
    local sr, sg, sb = 0x3F, 0x3F, 0x3F
    -- Ending color
    local er, eg, eb = 0xDC, 0xDC, 0xCC

    -- Interpolate the color based on the volume
    local ir = volume * (er - sr) + sr
    local ig = volume * (eg - sg) + sg
    local ib = volume * (eb - sb) + sb
    local interpol_colour = string.format("%.2x%.2x%.2x", ir, ig, ib)

    -- Update the widget text based on mute status
    if is_muted and is_muted:find("on", 1, true) then
        widget:set_markup(" <span background='#" .. interpol_colour .. "'>   </span>")
    else
        widget:set_markup(" <span color='red' background='#" .. interpol_colour .. "'> M </span>")
    end
end

