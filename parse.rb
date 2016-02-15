#!/usr/bin/ruby -n
line = $_.strip()
if line =~ /^\|name/
  print "#{line[/^.*\[\[(.*)\]\].*$/, 1].gsub(',', '')},"
elsif line =~ /^\|borndied/
  line =~ /^.*(\d{4}).(\d{4})?[^\d]*$/
  born = $1.to_i
  if $2
    died = $2.to_i
    age = died - born
    puts "#{born},#{died},#{age}"
  else
    puts "#{born}"
  end

end
