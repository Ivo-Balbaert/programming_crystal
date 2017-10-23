require "./mineral/*"

module Mineral
  puts "app mineral is started!"

  module Hardness
    def data
      mohs = {"talc" => 1, "gold" => 2.5, "calcite" => 3,
              "apatite" => 5, "corundum" => 9}
    end

    def hardness
      data[self.name]
    end
  end

  # Every Mineral has **hardness** (see the `Hardness` module).
  #
  # To create a standard rocky Mineral:
  #
  # ```
  # min1 = Mineral.new(108)
  # min1.to_s
  # ```
  #
  # The above produces:
  #
  # ```text
  # "This is a mineral with id 108 and is called rock"
  # ```
  #
  # Checks the hardness with `#hardness`.

  class Mineral
    include Hardness
    getter id
    getter name
    property crystal_struct

    # Creates a mineral with given parameters
    def initialize(@id : Int32, @name : String, @crystal_struct : String)
    end

    # Creates a mineral with as "rock", 0 hardness and unknown structure
    def initialize(@id : Int32)
      @name = "rock"
      @crystal_struct = "unknown"
    end

    # Prints out a description of this mineral
    def to_s
      puts "This is a mineral with id #{id} and is called #{name} "
      puts "It has #{crystal_struct} as crystal structure"
    end

    # Returns object properties in csv-format
    def to_csv
      "#{id},#{name},#{hardness},#{crystal_struct}"
    end

    def ==(other : self)
      id == other.id
    end

    def ==(other)
      false
    end

    # Returns crystal structure of this mineral
    def kind_of_crystal
      @crystal_struct
    end

    # :nodoc:
    class Helper # no docs are created for this class
    end          # neither for private or protected classes
  end
end
