-- THE INIT FILE FOR 'reinhardt' which is required in '.config/nvim/init.lua' as a kind of package

-- loads the keybindings from the remap.lua file
require("reinhardt.remap")

-- load packer stuff from the packer file 
require("reinhardt.packer")

-- editor settings
require("reinhardt.set")
