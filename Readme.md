# about ekokari-tiermaker-png-converter

sample script of rcairo

## specification

input : 1792 x 828 png image

output : 189 x 189 png image

## install (Windows)

install Visual Studio Code and Ruby.
Execute command in VScode bash terminal.

```sh
gem install cairo
```

download me.

```sh
git clone https://github.com/stageleft/ekokari-tiermaker-png-converter.git
```

## prepare

remove sample image if necessary.
```sh
rm input_image/00.PNG
```

get game screenshots from your platform and set into input_image directory.

## execute

```sh
ruby convert.rb input_image output_image
```

## check outputs

see *.png files in output_image directory.

## technical document

https://magazine.rubyist.net/articles/0019/0019-cairo.html

https://rubygems.org/gems/cairo/versions/1.16.1?locale=ja

## input specificaton document

https://www.ekokari.jp/
https://support.apple.com/kb/SP804?locale=ja_JP

## output specificaton document

https://tiermaker.com/
https://tiermaker.com/blog/support/18/image-limits/#:~:text=Template%20Image%20Limits%20(Number%20of%20Images%20%26%C2%A0Total%20Image%C2%A0File%20Size)
