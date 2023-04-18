# def tag(tag_name, content, attributes = {})
#   # create an empty array
#   attr_array = []
#   # attributes is a hash with 3 key/value pairs
#   # iterate over the hash
#   attributes.each do |key, value|
#   # interpolate the key and value like "key=value"
#   # store in an array
#     attr_array << "#{key}=\"#{value}\""
#   end
#   # join the array
#   # attr_array.join(" ")
#   # use the produced string here 👇
#   "<#{tag_name} #{attr_array.join(" ")}>#{content}</#{tag_name}>"
# end

def tag(tag_name, content, attributes = {})
  attr_array = attributes.map { |key, value| "#{key}=\"#{value}\""}
  "<#{tag_name} #{attr_array.join(" ")}>#{content}</#{tag_name}>"
end

# <h1>Google me!</h1>
puts tag('h1', 'Google me!')

# <h1 class="text-center">Google me!</h1>
puts tag('h1', 'Google me!', {class: "text-center"})


# <h1 class="text-center" style="color: red" id="main-example">Google me!</h1>
puts tag('h1', 'Google me!', class: "text-center", style: "color: red", id: "main-example", hernando: "happy-birthday")
