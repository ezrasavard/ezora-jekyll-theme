# Ezora Theme for Jekyll

Ezora is a responsive Jekyll theme with a clean single column layout, nifty text overlays for images and a mobile friendly navigation bar.

I designed this theme from the ground up for [my own website](http://www.ezrasavard.com) and had some inspiration from the [Flex Jekyll Theme](http://the-development.github.io/flex/) (fonts!) and [Lise Savard's Blog](http://lisesavard.com/).

Feel free to use this theme however you like (MIT License).

In this directory, you'll find the files you need to be able to package up your theme into a gem. Put your layouts in `_layouts`, your includes in `_includes` and your sass in `_sass`. To experiment with this code, add some sample content and run `bundle exec jekyll serve` – this directory is setup just like a Jekyll site!

## Screenshots!

### Desktop
![screenshot-desktop](https://github.com/ezrasavard/ezora-jekyll-theme/blob/master/screenshot.png)

### Mobile
![screenshot-mobile](https://github.com/ezrasavard/ezora-jekyll-theme/blob/master/screenshot-mobile.png)

## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "ezora-jekyll-theme"
```

And add this line to your Jekyll site:

```yaml
theme: ezora-jekyll-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ezora-jekyll-theme

## Usage

Ezora uses a fairly minimal set of layouts and sass, and will automatically conform to a sensible layout based on the YAML provided, unless a layout is specified. Width/height values are all defined in the top of main.scss as variables, so you don't have to hunt too far through the SCSS to tweak things.

The **default** layout handles the home page and any other pages while the **post** layout extends the default slightly to include a date-stamp at the top of the page.

Notable _includes are the shiny and responsive **topbar**, included in the default layout, and the **postlist**, which is a paginated pile of posts you can include in any page, like the default home page does. You can specify your navigation menu links in **topbar**.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ezrasavard/ezora-jekyll-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

You theme is setup just like a normal Jelyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, and `_sass` tracked with Git will be released.

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

