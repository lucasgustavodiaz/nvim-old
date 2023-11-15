require('base')
require('highlights')
require('maps')
require('plugins')

local os = vim.loop.os_uname().sysname

if os == "Darwin" then
  require('macos')
elseif os == "Linux" then
  require('linux')
elseif os == "Windows_NT" then
  require('windows')
else
  error("Unknown OS")
end
