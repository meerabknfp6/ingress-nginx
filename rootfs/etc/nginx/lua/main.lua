local _M = {}

function _M.header_filter()
  if ngx.worker.exiting() then
    ngx.header["Connection"] = "close"
  end
end

return _M
