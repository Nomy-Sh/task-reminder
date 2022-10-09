module App
  class << self

    attr_reader :root

    def root_path(path)
      File.join(root, path)
    end

    def require_files(files)
      files.uniq.each { |file| require file }
    end
  
    def require_common
      puts "Requiring basic files ..."
      require_constants
      require_files Dir[root_path('app/services/common/*.rb')]
      require_files Dir[root_path('app/lib/**/*.rb')]
      require_env_constants
      puts "Required basic files."
    end

    def require_constants
      puts "Requiring constants"
      puts "No constants as of now"
    end


    def require_env_constants
      return if ENV['firebase_db_url'].present?
      puts "Can't find environment variables, please make sure 'declare -xp | grep firebase' returns some value."
      exit
    end

    def connect_firebase_instances(instances)
      instances.each do |config|
        self.class.send(:attr_reader, :"#{config[:instance]}")  # instance -> firebase instance.
        instance_variable_set(:"@#{config[:instance]}", Tsk::Firebase.new(config))
      end
    end


  end
  @root = __dir__
end