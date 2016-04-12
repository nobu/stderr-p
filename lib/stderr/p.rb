# -*- coding: us-ascii -*-
def STDERR.p(*args)
  return *args.each do |arg|
    puts arg.inspect
  end
end
