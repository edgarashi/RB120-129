#What is the default return value of to_s when invoked on an object?
#Where could you go to find out if you want to be sure?


#From Object class in Ruby Docs
# to_s → string click to toggle source

# Returns a string representing obj. The default to_s prints the object’s
# class and an encoding of the object id. As a special case,
# the top-level object that is the initial execution context of
# Ruby programs returns “main”.