macro define_method(mname, body)
  def {{mname}}
    {{body}}
  end
end

define_method greets, puts "Hi!"
# This generates:
#
#     def greets
#       puts "Hi!"
#     end

define_method add, 1 + 2
# This generates:
#
#     def add
#       1 + 2
#     end

greets # => Hi!
add    # => 3

# ## Some additions:
# Use id when calling a macro with a symbol
macro define_method(name, content)
  def {{name.id}}
    {{content}}
  end
end

define_method :greets, puts "Hi!"

greets # => Hi!

# Use body to get the code of a block
macro define_method(name, &block)
  def {{name.id}}
    {{block.body}}
  end
end

define_method :greets do
  puts "Hi!"
end

greets # => "Hi!"
