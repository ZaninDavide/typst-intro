<p align="center">
  <img src="images/title-screen.png" alt="Title Screen" width="100%">
</p>

[Slides](https://github.com/ZaninDavide/typst-intro/blob/main/presentation.pdf) for an introductory presentation of [Typst](https://typst.app/).

## Slides content summary

1. Title screen.
1. Typst is a typesetting system because it can decide exactly where each graphical element, word or letter should be placed on the page.
1. Typst compiler can output to many different formats: pdf, png, svg and html (still experimental).
1. Typst is also a markup and programming language.
1. The Typst compiler interprets your code following different rules depending on which of the three modes - markup, math and code -  is active.
1. Let's start from markup mode, which is the one active "by default". A plain text file is already valid Typst and will produce a page with the given text printed out. How to go to a new line and create a new paragraph. How to make bold and italic text.
1. How to make titles. How to make bullet lists.
1. Numbered lists. Code snippets and code blocks.
1. Comments.
1. Enter math mode using $. Inline math. Block level math. Single letters are verbatim, multi-letter words have their own meaning. Inline math, grouping, greek letters and symbols. Fractions.
1. More symbols. Quotes to input upright text. Accents.
1. Column vectors and matrices. Aligning equations: you are defining a grid where every odd column is right aligned and every even column is left aligned.
1. Enter code mode using #. Calling functions. Strings. 
1. Markup mode is just syntactic sugar: you can do the same and more with code. Links. Defining and printing variables. Content is data. Content and strings are two different things.
1. Defining functions. Working with content. Syntactic sugar. Figure and images. Named parameters.
1. An example using for loops to "accumulate" content. Code blocks have a value.
1. Types: bool, array, dictionary, function.
1. Title screen: set and show rules.
1. Structure of a set rule.
1. Examples of set rules: setting font and heading numbering.
1. References. We can reference elements that have been numbered (headings, figures, equations, footnotes). A single set rule can set multiple options for the same element function.
1. Setting the page size. Set rules are scoped.
1. Structure of a show rule.
1. The most basic show rules work as function composition.
1. The simplest show rule: underlining links. Combining show rules and lambda functions.
1. Show-set rules are just syntactic sugar. The .with patter: align equations to the left.
1. How to import and use templates. Everthing show rules.
1. Example
1. Compilation. You can compile locally using the CLI or use the online webapp. Live demo to see real time compilation in action.

Slides 30 to 44 present useful packages for physicists.

45. Context and introspection allow you to probe the document.
46. Reading from context the active defaults for options in element functions. Locating referenced objects.
47. Querying objects with filters.

The remaining slides include some extra technical topics that might interest those looking to go beyond this introduction.
