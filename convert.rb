#-*- coding: utf-8 -*-
# ruby convert.rb <input_dir> <output_dir>
require 'cairo'

# setup conversion spec.
in_width = 1792
in_height = 828

out_xpos = 94
out_ypos = 593
out_width = 189
out_height = out_width

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
def trim_and_mirror(in_name, out_name, out_x, out_y, out_w, out_h)
    in_image  = Cairo::ImageSurface.from_png(in_name)
    out_image = Cairo::ImageSurface.new(out_w, out_h)
    out_canvas = Cairo::Context.new(out_image)
    out_canvas.fill do
        mirror_out_canvas = Cairo::Matrix.new(-1, 0, 0, 1, out_w, 0)
        out_canvas.set_matrix(mirror_out_canvas)
        out_canvas.set_source(in_image, 0-out_x, 0-out_y)
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
    out_name = in_name.gsub("#{in_dir}", "#{out_dir}")
    trim(in_name, out_name, out_xpos, out_ypos, out_width, out_height)
    trim_and_mirror(in_name, out_name.gsub(".PNG", "r.PNG"), out_xpos, out_ypos, out_width, out_height)
}

exit 0