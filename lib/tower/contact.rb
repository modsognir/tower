module Tower
  class Contact
    attr_accessor :first_name, :last_name
    def initialize(options={})
      @first_name = options[:first_name]
      @last_name = options[:last_name]
    end

    def name
      Name.new(first_name, last_name)
    end
  end
end