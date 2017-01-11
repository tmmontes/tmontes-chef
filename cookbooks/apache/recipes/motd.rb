hostname = node['hostname']
file '/etc/motd' do
    content "Hostname Node is this: #{hostname}"
end

