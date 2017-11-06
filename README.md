# Styling Links with Pseudo Selectors and ID Selectors

## Objectives

1. `<link>` to an external stylesheet `style.css` from `index.html`.
2. Add an `id` attribute to a HTML tag.
3. Build the Questions `div` with a class of `questions`.
4. Create the "pill" style buttons by giving an `a` tag a `btn` class.
5. Use ID Selectors to style the navigation links.
6. Use Pseudo Selectors to give "hover" states to navigation links and pills.

## Instructions

We're going to build and style the "Questions" portion of the Icebreakers homepage and give the navigation links and "pill" link buttons hover states for styles. We're going to be practicing using ID selectors and Pseudo selectors to add the required styles. By the end of this lab, the homepage in `index.html` with the styles in `style.css` should look like and behave like (pay attention to the hover state as the cursor moves):

![Hover States](https://learn-co-curriculum.s3.amazonaws.com/icebreaker-navigation-hovers.gif)

Code your styles in style.css and include it in index.html with a <link> tag with an href attribute and a rel attribute of value stylesheet.

You have to use the specific selectors described below to style the navigation.

## Previewing in the Browser

As you add the styles to `style.css`, you should check your work visually by looking at `index.html` in the browser. When working on this lab in the Learn IDE, type `httpserver` in your IDE terminal. You will get an IP Address that you can open in your browser to see your site. You can learn more about this at the [Help Center](http://help.learn.co/the-learn-ide/common-ide-questions/viewing-html-pages-in-the-learn-ide).

### The Navigation Links

Add a style for the hover state of the `nav a` links using the hover [pseudo selector](https://www.w3schools.com/cssref/sel_hover.asp) and make their hover state have a `text-decoration` of `underline` and a `color` of `#0056b3`. 

### The Main Header Link

First, add an `id` attribute to the `h3` in the `header` of the site. Then using an [`id` selector](https://www.w3schools.com/cssref/sel_id.asp) of the `header` id you just added to the `h3`, add a hover state style to any `a` tags within an element of `id` header. The selector you should be using is ID_SELECTOR ELEMENT_SELECTOR:PSEUDO_SELECTOR (so something like `#example-id a:visited`). The hover state of any `a` tag within an element of `id` `header` should add an underline.

### The Questions `div`

First, add a `class` attribute to the 2nd `div` within `main` with the value of `questions`. Then using a class selector, style the `div` with the class `questions` to have a top and bottom padding of `0` and a left and right padding of `20px`. 

Style all `h4`s inside the `div` with class `questions` to have a font-size of `30px` and a bottom margin of `10px.

Style all `p`s inside the `div` with class `questions` to have a top margin of `30px`. 

Add a `btn` class to the `a` tags within the `p`s of the `questions` `div`. 

Add a style for all `a` tags with a `btn` class within a `div` of class `questions`. The style should make the `a` tags have a `border-radius` of `5px`, a `color` of `#FFF`, a `background-color` and `border-color` of `#007bff`, no `text-decoration`, a `padding` of `18px`, and a `font-size` of `20px`.

Add a style for the hover state of all `a` tags with a `btn` class within a `div` of class `questions`. On hover, those links should have a background and border color of `#0069d9`.

## Resources

* [ID Selectors](https://www.w3schools.com/cssref/sel_id.asp)
* [HTML Class Attributes](https://www.w3schools.com/tags/att_class.asp)
* [HTML ID Attributes](https://www.w3schools.com/tags/att_id.asp)
* [CSS Pseudo-classes](https://www.w3schools.com/css/css_pseudo_classes.asp)
* [CSS :hover selector](https://www.w3schools.com/cssref/sel_hover.asp)

