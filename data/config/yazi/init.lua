require("starship"):setup()
require("git"):setup()
-- require("full-border"):setup()

-- line mode: size mtime (permissions/owner live in the bottom status bar)
function Linemode:details()
  local cha = self._file.cha
  if not cha or cha.is_dummy then return "" end

  local parts = {}

  local size = self._file:size()
  if size then parts[#parts + 1] = ya.readable_size(size) end

  local mtime = cha.mtime
  if mtime and mtime ~= 0 then
    mtime = math.floor(mtime)
    if os.date("%Y", mtime) == os.date "%Y" then
      mtime = os.date("%b %d %H:%M", mtime)
    else
      mtime = os.date("%b %d  %Y", mtime)
    end
    parts[#parts + 1] = mtime
  end

  return table.concat(parts, " ")
end
