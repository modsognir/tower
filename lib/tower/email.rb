module Tower
  class Email
    def initialize(address)
      @address = address
    end

    def to_s
      @address
    end
  end
end