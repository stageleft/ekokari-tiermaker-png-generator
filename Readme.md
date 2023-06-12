# about ekokari-tiermaker-png-generator

sample script of rcairo

## specification

### convert.rb

input : 2560 x 1080 png image

output : 2 x (247 x 247) png image

### emotes.rb

input : 2560 x 1080 png image

output : 5 x (114 x 114) png image

## install (Windows)

install Visual Studio Code and Ruby.
Execute command in VScode bash terminal.

```sh
gem install cairo
```

download me.

```sh
git clone https://github.com/stageleft/ekokari-tiermaker-png-generator.git
```

## prepare (convert.rb case. same as emotes.rb)

remove sample image if necessary.
```sh
rm input_image/00.png
```

get game screenshots from your platform and set into input_image directory.

## execute (convert.rb case. same as emotes.rb)

```sh
ruby convert.rb input_image output_image
```

## check outputs (convert.rb case. same as emotes.rb)

see *.png files in output_image directory.

## technical document

https://magazine.rubyist.net/articles/0019/0019-cairo.html

https://rubygems.org/gems/cairo/versions/1.16.1?locale=ja

## input specificaton document

https://www.ekokari.jp/

https://support.bluestacks.com/hc/en-us/articles/4402958247949-How-to-change-screen-resolution-on-BlueStacks-5

## output specificaton document

https://tiermaker.com/

https://tiermaker.com/blog/support/18/image-limits/#:~:text=Template%20Image%20Limits%20(Number%20of%20Images%20%26%C2%A0Total%20Image%C2%A0File%20Size)
