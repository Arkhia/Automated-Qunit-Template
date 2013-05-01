require 'sinatra'
require_relative 'file_tasks'

class Server
  class << self
    attr_accessor :config
  end

  configure :development do
    require_relative("./settings")
    Server.config = Settings
  end
  set :public_folder, Server.config::PUBLIC

  get "/qunit" do
    return 404 unless development?
    @paths = Server.config::JS_PATHS
    @script_files = {}
    public_folder = Server.config::PUBLIC
    
    @paths.each do |key, path|
      FileTasks::list_files(File.join(public_folder, path)) do |file|
        @script_files[key] = [] if @script_files[key].nil?
        @script_files[key].push file if file[/.js$/]
      end   
    end
    
    erb :qunit_test
  end
end