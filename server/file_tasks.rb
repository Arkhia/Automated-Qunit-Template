module FileTasks
  def self.list_files (location)
    files = Dir.foreach(location).to_a
    
    files.reject! do |file|
      file == "." || file == ".."
    end
    
    if(block_given?)
      files.each() do |file|
        yield file
      end
    else return files
    end
  end
end