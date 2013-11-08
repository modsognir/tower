module Tower
  class Contact
    attr_accessor :first_name, :last_name, :phones, :emails
    def initialize(options={})
      @first_name = options[:first_name]
      @last_name = options[:last_name]
      @phones = Array(options[:phones])
      @emails = Array(options[:emails])
    end

    def name
      Name.new(first_name, last_name)
    end

    def phones
      @phones.map {|num| Phone.new(num) }
    end

    def emails
      @emails.map {|num| Email.new(num) }
    end
  end
end