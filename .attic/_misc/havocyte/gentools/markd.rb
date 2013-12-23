#!/usr/bin/env ruby

class String
  public
  def starts_with?(prefix)
    prefix = prefix.to_s
    self[0,prefix.length] == prefix
  end

  def apply_transforms(transforms)
    transforms.each do |from, to, fun|
      if fun.nil? && !from.nil? && !to.nil?
        self.gsub!(from, to)
      elsif !fun.nil?
        self.gsub!(from){|m| send(fun,m,$~)}
      end
    end
    return self
  end
end


TOP_LEVEL = [
  [/\s+=+$/, ''],
  [/^\s*=====\s*(.*)$/, "\n<h5>\\1</h5>\n"],
  [/^\s*====\s*(.*)$/, "\n<h4>\\1</h4>\n"],
  [/^\s*===\s*(.*)$/, "\n<h3>\\1</h3>\n"],
  [/^\s*==\s*(.*)$/, "\n<h2>\\1</h2>\n"],
  [/^\s*=\s*(.*)$/, "\n<h1>\\1</h1>\n"],
  [/\n\n\n+/m, "\n\n"],
  [/(\A|\n\n)([^<].*?)(\n\n|\Z)/m, nil, :basic_block],

  []]


#def top_level_transform(content)
#  TOP_LEVEL.each do |from, to, fun|
#    if fun.nil? && !from.nil? && !to.nil?
#      content.gsub!(from, to)
#    elsif !fun.nil?
#      content.gsub!(from){|m| self.send(fun,m,$~)}
#    end
#  end
#  return content
#end

def basic_block(full,m)
  if full.strip.starts_with? '-'
    "#{m[1]}<li>#{m[2]}</li>#{m[3]}"
  else
    "#{m[1]}<p>#{m[2]}</p>#{m[3]}"
  end
end


def converge
  content = ARGF.read
  curr = ''
  while curr != content
    curr = content.dup
    content = yield content
  end
  print content
end
