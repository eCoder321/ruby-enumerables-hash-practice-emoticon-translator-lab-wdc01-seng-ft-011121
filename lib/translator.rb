# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)
  # code goes here
  raw_emoticons = YAML.load_file(file_path)
 # binding.pry
  emoticons = Hash.new 
  raw_emoticons.each {
    |a,i| 
    emoticons[a] = {english: i[0], japanese: i[1]}
  }
  emoticons
end

<<<<<<< HEAD
def get_japanese_emoticon(file_path, icon)
  emoticons = load_library(file_path)
  emoticons.each {
    |a, b|
    yrt = b.select {
      |o,i|
      i == icon
    }
    return b[:japanese] if yrt[:english] == icon
  }
  "Sorry, that emoticon was not found"
end


=======
def get_japanese_emoticon()
  # code goes here
  
end

>>>>>>> 05c0b8ec2ee14ad9cc0feaa66b684c3d5a3ca771
def get_english_meaning(file_path, icon)
  emoticons = load_library(file_path)
  emoticons.each {
    |a, b|
    yrt = b.select {
      |o,i|
      i == icon
    }
<<<<<<< HEAD
    return a if yrt[:japanese] == icon
  }
  "Sorry, that emoticon was not found"
end

#load_library
#get_english_meaning("./lib/emoticons.yml", "☜(⌒▽⌒)☞")
=======
    return a if yrt[o] == :japanese
  }
end

#load_library
get_english_meaning()
>>>>>>> 05c0b8ec2ee14ad9cc0feaa66b684c3d5a3ca771
