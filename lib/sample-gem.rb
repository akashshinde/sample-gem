require File::expand_path(File::join(File::dirname(__FILE__), "/version.rb"))

module SampleGem
  module Core
    # Your code goes here...
    def self.init(options = {})
      x = "Init complete"
      puts x if !options[:quiet]
      x
    end
  end
end
