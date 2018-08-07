# Shortcut for adding a pair
h = {1 => 'A'}
h[3] ||= 'C'
h # => {1 => 'A', 3 => 'C'}

# Instead of {:key1 => 'a', :key2 => 'b'} you can use:
{key1: 'a', key2: 'b'}
# Instead of {"key1" => 'a', "key2" => 'b'} you can use:
{"key1": 'a', "key2": 'b'}
