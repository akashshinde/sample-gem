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
