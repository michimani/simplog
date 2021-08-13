simplog
---

[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fmichimani%2Fsimplog.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fmichimani%2Fsimplog?ref=badge_shield)


simplog is a simple blog theme for [Hugo](https://gohugo.io/).

![screenshot-default](https://user-images.githubusercontent.com/9986092/103643356-de1c8880-4f97-11eb-93d3-05889b839f9f.png)

Demo site is [here](https://michimani.github.io/simplog/).

## Features

- Google Analytics
- Disqus
- Some theme colors
- Responsive
- Custom CSS
- Adobe Fonts
- Lazy load image
- Support tags, categories and archives page
- Show related tags and categories posts

## Installation

```bash
git submodule add https://github.com/michimani/simplog.git ./themes/simplog
```

## Updating

```bash
git submodule update --remote --merge
```

## Detail of features

### Google Analytics

You can insert the Google Analytics tracking code into top of `head` tag. If you insert the tag, set tracking ID at `config.toml`.

```toml
googleAnalytics = "<your tracking ID>"
```

### Disqus

You can set the comment form via Disqus. If you set the comment form, set disqus short name at `config.toml`.

```toml
googleAnalytics = "<your disqus short name>"
```

And if you enable comment form, set `true` at `config.toml` and each post file.

- `config.toml`

    ```toml
    [params]
        [params.enabled]
            comment = true
    ```
    
- each post file

    ```toml
    +++
    # some
    # settings
    # of
    # post
    comments = true
    +++
    ```

The comment form will be enabled when both of them are `true`.

### Custom CSS

If you want to use your own CSS, set value that is path to your CSS file at `config.toml`

```toml
[params]
  customCSS = ""
```

### Adobe Fonts

If you use Adobe Fonts in your site, set value that is Adobe Fonts Kit ID at `config.toml`. In this case you will need to set custom css as well.

```toml
[params]
  adobeFontsKitId = "<your adobe fonts kit ID>"
```

### Some theme colors

You can change theme color easily. Set the value one of `default`, `dark`, `red`, `green` and `blue` at `config.toml`.

```toml
[params]
  colorTheme = "default"
```

- Dark

    ![screenshot-dark](https://user-images.githubusercontent.com/9986092/103643351-dceb5b80-4f97-11eb-836a-24f22ec969b1.png)

- Red/Green/Blue

    ![screenshot-red](https://user-images.githubusercontent.com/9986092/103643355-de1c8880-4f97-11eb-9248-e7be5be63ed3.png)
    ![screenshot-green](https://user-images.githubusercontent.com/9986092/103643352-dd83f200-4f97-11eb-8a10-7ad39bb8a6ca.png)
    ![screenshot-blue](https://user-images.githubusercontent.com/9986092/103643347-d9f06b00-4f97-11eb-8bd6-0f57462b2e3d.png)

### Lazy load image

You can easily set up an image tag for lazy loading by using the shortcode below.

```markdown
{{< lazy src="image-file-name.jpg" alt="attribute for this image" >}}
```

In the above case, the image files under the `images` directory will be displayed. (e.g. `/images/image-file-name.jpg`)

If you want to specify another path or a path with a different domain, write the full path to the image file and add `abs =" y "`.

```markdown
{{< lazy src="https://michimani.github.io/simplog/images/featured_image.jpg" alt="attribute for this image" abs="y" >}}
```

## Developmet

Install `nodenv` and install `node 15.x`

```bash
brew install nodenv
```

```bash
nodenv install 15.14.0
```

Install the node module for development such as CSS generation.

```bash
npm install
```

### Generate CSS from SCSS

To generate CSS from SCSS, run the following command.

```bash
npm run css:scss
```

If you want to monitor SCSS changes, run the following command.

```bash
npm run watch:scss
```


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fmichimani%2Fsimplog.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fmichimani%2Fsimplog?ref=badge_large)
