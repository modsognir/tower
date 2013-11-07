module Tower
  class Name
    def initialize(*args)
      @content = args
    end

    def to_s
      @content.join(' ')
    end
  end
end