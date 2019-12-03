require "yaml"
require 'pry'

def load_library(file_path)
   
  emoticons = YAML.load_file(file_path)
  new_hash = {:get_emoticon => {},:get_meaning => {}}
  
  emoticons.each do |key, value| 
    new_hash[:get_meaning][value[1]] = key
    new_hash[:get_emoticon][value[0]] = value[1]
    #binding.pry
  end
  new_hash
end

def get_japanese_emoticon(yaml_file, emoticon)
  load_library(yaml_file)[:get_emoticon][emoticon]
  
  #binding.pry 
end

def get_english_meaning
  # code goes here
end


