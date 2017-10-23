module Languages
  class Crystal
    protected def shout
      puts "Hello, I am written in Crystal"
    end
  end

  class Ruby
    def shout
      Crystal.new.shout
    end
  end
end

Languages::Ruby.new.shout # => Hello, I am written in Crystal
Languages::Crystal.new.shout
# => Error: protected method 'shout' called for Languages::Crystal
