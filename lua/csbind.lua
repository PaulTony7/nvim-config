local M = {}

function db(text) 
	file = io.open ('test.log', 'a+')
	io.output(file)
	io.write(os.date('%Y-%m-%d %H:%M:%S ' .. text .. '\n'))
	io.close(file)
	return 0
end 


function get_data()
	local uri = vim.lsp.handlers['textDocument/definition']
	local params = {
		timeout = 5000,
		textDocument = {
			uri = uri,
		}
	}
	local buffer = vim.api.nvim_get_current_buf()
	local clients = vim.lsp.buf_get_clients(buffer) 
	if next(clients) == nil then
		db('Here')	
		return
	end
	for _, client in pairs(clients) do
		db(client.name)
	end
--	local result, err = client.request_sync('csharp/metadata', params, 10000)
--	db(result .. ' ' .. err)
end 

function M.setup()
	vim.api.nvim_create_user_command('Test', get_data, {})
end
return M 
