file '/etc/motd' do
 content "
 IPADDRESS: #{node['ipaddress']}
 HOSTNAME : #{node['hostname']}
 MEMORY   : #{node['memory']['total']}
 CPU      : #{node['cpu']['0']['mhz']}
 "
end

