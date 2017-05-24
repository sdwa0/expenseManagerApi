set :stage, :development
role :app, %w{root@${IP_ADDRESS}}
role :web, %w{root@${IP_ADDRESS}}
role :db, %w{root@${IP_ADDRESS}}

server '${IP_ADDRESS}',
user: 'root',
roles: %w{web app db},
ssh_options: {
 forward_agent: true,
 keys: [File.join(ENV["HOME"], ".ssh", "id_rsa")]
}

