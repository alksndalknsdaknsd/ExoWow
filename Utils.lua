function ExoWow:PrintColorSep(color, sep, ...)
  local args = {}
  for _, arg in ipairs({ ... }) do
    tinsert(args, tostring(arg))
  end
  print('|c' .. color .. strjoin(sep, unpack(args)) .. '|r')
end

function ExoWow:PrintColor(color, ...)
  ExoWow:PrintColorSep(color, ' ', ...)
end

function ExoWow:PrintRedSep(sep, ...)
  ExoWow:PrintColorSep('ffff0000', sep, ...)
end

function ExoWow:PrintRed(...)
  ExoWow:PrintColor('ffff0000', ...)
end

function ExoWow:PrintGreenSep(sep, ...)
  ExoWow:PrintColorSep('ff00ff64', sep, ...)
end

function ExoWow:PrintGreen(...)
  ExoWow:PrintColor('ff00ff64', ...)
end

function ExoWow:FormatColor(color, ...)
  return '|c' .. color .. strjoin(' ', ...) .. '|r'
end
