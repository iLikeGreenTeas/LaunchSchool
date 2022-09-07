hash = {a: 1, b: 2, c: 3, d: 4, e: 5}

hash.each_key { |key| puts key }
hash.each_value { |value| puts value }
hash.each { |key, value| puts "#{key}: #{value}" }
