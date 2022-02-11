class Loader
  def self.json_loader(path)
    file = File.read(path)
    JSON.parse(file)
  rescue StandardError
    puts "Error, #{path} file not found"
  end
end
