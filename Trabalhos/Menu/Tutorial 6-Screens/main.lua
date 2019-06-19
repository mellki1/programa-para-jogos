display.setStatusBar (display.HiddenStatusBar)
system.setIdleTimer( false ) -- impede a tela de apagar;

local director = require ("Sources.director")
director:changeScene("Sources.menu")