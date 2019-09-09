require "yaml"
require "pry"

def load_library(file)
  emoticons = YAML.load_file('./lib/emoticons.yml')
    translator_hash = {:get_meaning => {}, :get_emoticon => {}}
    emoticons.each do |meaning, array|
           translator_hash[:get_meaning][array[1]] = meaning
           translator_hash[:get_emoticon][array[0]] = array[1]
        end
    translator_hash
  end


def get_japanese_emoticon (file, emoticon)
  #need to fingure out how to identify the first key
  message = "Sorry, that emoticon was not found"
  translator_hash = load_library('./lib/emoticons.yml')
    translator_hash[:get_emoticon][0] == emoticon ?  translator_hash[:get_emoticon][emoticon][1] : message
    binding.pry

end




def get_english_meaning
end
