local wezterm = require 'wezterm'

-- format-tab-title event handler
-- require 'tabbar'

-- merge appearance + keys into a single config table
local config = {}
for _, mod in ipairs { 'config.appearance', 'config.keys' } do
  for k, v in pairs(require(mod)) do
    config[k] = v
  end
end

return config
