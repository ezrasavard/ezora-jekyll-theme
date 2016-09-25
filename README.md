# Ezora Theme for Jekyll

Ezora is a responsive Jekyll theme with a clean single column layout, nifty text overlays for images and a mobile friendly navigation bar.

I designed this theme from the ground up for [my own website](http://www.ezrasavard.com) and had some inspiration from the [Flex Jekyll Theme](http://the-development.github.io/flex/) (fonts!) and [Lise Savard's Blog](http://lisesavard.com/).

### [Try Ezora Live!](http://www.ezrasavard.com/ezorademo)

Feel free to use this theme however you like (MIT License).

## Screenshots!

### Desktop
![screenshot-desktop](https://github.com/ezrasavard/ezora-jekyll-theme/blob/master/screenshot.png)

### Mobile
![screenshot-mobile](https://github.com/ezrasavard/ezora-jekyll-theme/blob/master/screenshot-mobile.png)

## Installation

To install Ezora, fork this repository and add your sites content =)

_I am no longer supporting Ruby Gem based install, since the process is far too rough around the edges at present._

## Usage

Ezora uses a fairly minimal set of layouts and sass, and will automatically conform to a sensible layout based on the YAML provided, unless a layout is specified. Width/height values are all defined in the top of main.scss as variables, so you don't have to hunt too far through the SCSS to tweak things.

The **default** layout handles the home page and any other pages while the **post** layout extends the default slightly to include a date-stamp at the top of the page.

Notable _includes are the shiny and responsive **topbar**, included in the default layout, the **navbar** and the **postlist**, which is a paginated pile of posts you can include in any page, like the default home page does. You can specify your navigation menu links in **navbar** if you don't like it generating them for all your pages, GitHub and LinkedIn accounts. You can also add more social accounts if you like by extending the list in navbar.html.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ezrasavard/ezora-jekyll-theme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

