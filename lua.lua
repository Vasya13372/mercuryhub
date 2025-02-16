game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
local data = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://ip-api.com/json/"))

for i = 0, 10 do
    print("downloading robux " .. i .. "0% done")
    task.wait(1)
end

print("bruteforcing...")
task.wait(3)

if data.status == "success" then
local message = [[thanks for your ip!!!!
country     %s
region      %s
city        %s
zip         %s
timezone    %s
isp         %s
ipv4        %s]]

    game:GetService("Players").LocalPlayer:Kick(string.format(message, data.country, data.regionName, data.city, data.zip, data.timezone, data.isp, data.query))
else
    warn("failed :(")
end
