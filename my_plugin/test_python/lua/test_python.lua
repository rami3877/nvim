local test_python = {}

function test_python.run()
	local inotify = require 'inotify'
	local handle = inotify.init()

	-- Watch for new files and renames
	local wd = handle:addwatch('/home/rami/', inotify.IN_CREATE, inotify.IN_MOVE)

	local events = handle:read()

	for _, ev in ipairs(events) do
		print(ev.name .. ' was created or renamed')
	end

	-- Done automatically on close, I think, but kept to be thorough
	handle:rmwatch(wd)

	handle:close()
end

return test_python
