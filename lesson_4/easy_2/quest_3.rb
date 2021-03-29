

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

#How do you find where Ruby will look for a method when that method is called?
# Looking at the objects ancestors provides the 'Method Lookup Path' that Ruby
# will follow.

#How can you find an object's ancestors?
#You can find an object's ancestors by calling the .ancestors method
# on the object. This will provide you with the method lookup path.

#What is the lookup chain for Orange and HotSauce?
# Orange is -> Orange, Taste, Object, Kernel, BasicObject
p Orange.ancestors #-> [Orange, Taste, Object, Kernel, BasicObject]
#HotSauce is -> HotSauce, Taste, Object, Kernel, BasicObject
p HotSauce.ancestors #-> [HotSauce, Taste, Object, Kernel, BasicObject]