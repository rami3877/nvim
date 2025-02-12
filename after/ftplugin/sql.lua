local pane_tmux = vim.fn.system([[ tmux lsp | sed -e '/(active)/d'  -e 's/\([0-9]\):.*/\1/' ]])

local cmd_send_to_pane = ""
local number_of_pane = {
	len = 0
}

for numbers in pane_tmux:gmatch("%d+") do
	number_of_pane[numbers] = numbers
	number_of_pane.len = number_of_pane.len + 1
end





if number_of_pane.len == 0 or cmd_send_to_pane ~= "" then
	print(cmd_send_to_pane ~= "" and "pane set" or "not found any pane not active")
	return
end


if number_of_pane.len == 1 then
	for i, x in pairs(number_of_pane) do
		if i ~= "len" then
			cmd_send_to_pane = i
			break
		end
	end
end

if number_of_pane.len > 1 then
	local loop = true
	while loop do
		vim.ui.input({ prompt = pane_tmux .. "Enter pane of tmux: " }, function(input)
			if input and input ~= "" then
				loop = not ((function()
					cmd_send_to_pane = tostring(input):gmatch("%d+")() ==
						number_of_pane[tostring(input):gmatch("%d+")()] and
						number_of_pane[tostring(input):gmatch("%d+")()] or ""

					return cmd_send_to_pane ~= ""
				end)())
			else
				loop = false
				print("we will not set the pulgin")
			end
		end)
	end -- while

	if cmd_send_to_pane == "" then
		return
	end
end -- if





vim.keymap.set('n', "<leader>r", function()
	local data = vim.api.nvim_get_current_line()

	if data == "" or not data then
		return
	end
	if data.sub(#data, #data) == ";" then
		data = data.sub(1, #data - 1) .. "\\;"
	end
	vim.fn.system([[tmux send-keys -t  ]] .. cmd_send_to_pane .. " \"" .. data .. "\" " .. "enter")
end)




vim.keymap.set('v', '<leader>r', function()
	local data = table.concat(vim.api.nvim_buf_get_lines(0, (vim.fn.line("v") - 1), (vim.fn.line(".") - 1) + 1, true))

	if data == "" or not data then
		return
	end
	if data:sub(#data, #data) == ";" then
		data = data:sub(1, #data - 1) .. "\\;"
	end

	vim.fn.system([[tmux send-keys -t  ]] .. cmd_send_to_pane .. " \"" .. data .. "\" " .. "enter")
end
, { noremap = true })
