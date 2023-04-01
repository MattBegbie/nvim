-- require("nerdtree")
--
--


--sleep(5)
vim.cmd [[ autocmd VimEnter * NERDTree ]]
vim.cmd [[ autocmd VimEnter * wincmd p ]]

--function sleep(n)
 -- if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
--end
