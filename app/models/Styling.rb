module Styles
module ClassMethods

def style
pastel = Pastel.new
# puts pastel.red('Unicorns!') > ree text
# pastel.red.on_green.bold('Unicorns!')

end

def puts_slow(str)
  chars = str.split(//)
  chars.each do |c|
    print c
    sleep 0.1
  end
  print "\n"
end

def puts_medium(str)
  chars = str.split(//)
  chars.each do |c|
    print c
    sleep 0.03
  end
  print "\n"
end

def puts_fast(str)
  chars = str.split(//)
  chars.each do |c|
    print c
    sleep 0.02
  end
  print "\n"
end

def puts_super_fast(str)
  chars = str.split(//)
  chars.each do |c|
    print c
    sleep 0.0001
  end
  print "\n"
end



end
end
