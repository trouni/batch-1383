# <h1>Hello world</h1>

def simple_tag_generator(name, content)
  "<#{name}>#{content}</#{name}>"
end

puts tag("p", "Hello Tokyo!")
puts tag("h2", "My awesome title")

# <a href="https://www.lewagon.com">Le Wagon</a>

# This is not convenient
# def tag(name, content, href=nil)
#   "<#{name} href=\"#{href}\">#{content}</#{name}>"
# end
# puts tag("a", "Le Wagon", "https://www.lewagon.com")

def advanced_tag_generator(name, content, attributes = {})
  # <a href="https://www.lewagon.com" class="bold italic">Le Wagon</a>
  attributes_array = attributes.map do |attribute_name, attribute_value|
    "#{attribute_name}=\"#{attribute_value}\""
  end

  "<#{name} #{attributes_array.join(" ")}>#{content}</#{name}>"
end

puts advanced_tag_generator("a", "Le Wagon", id: "wagon-link", href: "https://www.lewagon.com", class: "bold italic")
