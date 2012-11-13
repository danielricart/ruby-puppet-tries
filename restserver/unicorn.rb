# working path. Can be autoparametrized?
@dir = "/Users/Shared/PersonalGitHubRepo/ruby-puppet-tries/restserver/"

worker_processes 2
working_directory @dir

timeout 30

# path to unicorn socket. used in nginx.conf
listen "#{@dir}tmp/sockets/unicorn.sock", :backlog => 64

# pid path
pid "#{@dir}tmp/pids/unicorn.pid"

# logs
stderr_path "#{@dir}log/unicorn.stderr.log"
stdout_path "#{@dir}log/unicorn.stdout.log"

