-- ~/.config/nvim/lua/utils.lua

local M = {}

-- Function to check if a VPN is active
function M.is_vpn_active()
  -- Check for a VPN interface (e.g., tun0, wg0)
  local handle = io.popen("ip -o -4 addr show")  -- List all IPv4 interfaces
  local result = handle:read("*a")
  handle:close()

  -- Look for VPN interfaces (adjust based on your VPN setup)
  if result:match("utun420") then
    return true
  end

  -- Alternatively, check for a specific VPN IP range
  --local ip_handle = io.popen("hostname -I")  -- Get current IP addresses
  --local ip_result = ip_handle:read("*a")
  --ip_handle:close()

  -- Check if any IP belongs to a VPN range (e.g., 10.8.0.x for OpenVPN)
  --for ip in ip_result:gmatch("%d+%.%d+%.%d+%.%d+") do
    --if ip:match("^10%.8%.0%.") then  -- Adjust the range as needed
      --return true
    --end
  --end

  return false
end

return M
