#-*- coding: utf-8 -*-
# ruby convert.rb <input_dir> <output_dir>
require 'cairo'

# setup conversion spec.
in_width = 2560
in_height = 1080

out_xpos = [328,460,597,728,862]
out_ypos = 666
out_width = 114
out_height = 114

# functions
def trim(in_name, out_name, out_x, out_y, out_w, out_h)
    in_image  = Cairo::ImageSurface.from_png(in_name)
    out_image = Cairo::ImageSurface.new(out_w, out_h)
    out_canvas = Cairo::Context.new(out_image)
    out_canvas.set_source(in_image, 0-out_x, 0-out_y)
    out_canvas.fill do
        out_canvas.rectangle(0, 0, out_w, out_h)
    end
    out_image.write_to_png(out_name)
end

# execute
if ARGV.size != 2 then
    puts "ruby convert.rb <input_dir> <output_dir>"
    exit 1
end

in_dir = ARGV[0]
out_dir = ARGV[1]

Dir.glob("#{in_dir}/*").each{|in_name|
    out_name = in_name.downcase.gsub("#{in_dir}", "#{out_dir}")
    for i in 0...5 do
        trim(in_name, out_name.gsub(".png", (i+1).to_s + ".png"), out_xpos[i], out_ypos, out_width, out_height)
    end
}

exit 0