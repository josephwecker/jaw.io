---

layout: post
title: "State of the art: Syntax Highlighting"
tags: [programming, productivity, design]
published: true

---
## Intro

WARNING: VERY UNFINISHED ENTRY. Live for a moment so I can test some styling...

I've had a vaguely uncomfortable feeling for several years now about syntax
highlighting and recently felt like finally getting to the bottom of it. I've
designed a [few](https://github.com/josephwecker/neutron.vim)
[colorschemes](https://github.com/josephwecker/murphytango.vim) and
[syntax](https://github.com/josephwecker/udon/blob/master/misc/udon.vim)
[files](https://github.com/josephwecker/zml/blob/master/misc/zml_textmate_osx.zip)
for vim and textmate and have looked into it for several other syntax
highlighters and IDEs (pygments, etc.). There have been some incremental
innovations over the last decade or so, but not many. In the spirit of
improving "inner-loop" developer productivity I have some thoughts on how the
state of the art can be advanced. And I think I may even be able to share them
without adding fuel to editor holy wars (that fuel will come in a later post).

## Background and Context
### Some purposes for Syntax Highlighting
A quick brainstorm identifies 



Syntax-definition -> Highlight Groups -> Colorscheme = Stylesheet

Hypothesis: Good colorschemes are not just a matter of individual taste. There
exist principles that make certain colorschemes objectively, qualitatively
better than alternatives. I suggest that the "goodness" of a colorscheme can be
determined by:

1. Universal principles
2. (applied to) Current physical context - lighting, screensize, eyesight
3. (with some remaining latitude for) Mood and taste



Aenean felis magna, lacinia non ultrices vitae, feugiat nec purus. Proin non orci ac magna dapibus dapibus id eu diam. Sed turpis nisi, sollicitudin et lobortis sed, scelerisque vitae tortor. Aenean in eros tortor, ut imperdiet nisl. Etiam neque nibh, bibendum eget molestie a, auctor sed orci. Quisque metus mauris, tempor at egestas in, egestas id ante. Vestibulum elementum varius commodo. Donec faucibus, quam eget luctus ullamcorper, urna sapien accumsan velit, at bibendum dui nibh non velit. Sed suscipit lectus id elit luctus mattis. Vestibulum eu leo ligula, ac semper risus. Nam in rutrum elit. Pellentesque rhoncus sollicitudin placerat. Proin rhoncus rutrum dolor, nec aliquam nunc laoreet et. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ornare tortor in nisl sagittis ultrices.

## And more about this
Aenean felis magna, lacinia non ultrices vitae, feugiat nec purus. Proin non orci ac magna dapibus dapibus id eu diam. Sed turpis nisi, sollicitudin et lobortis sed, scelerisque vitae tortor. Aenean in eros tortor, ut imperdiet nisl. Etiam neque nibh, bibendum eget molestie a, auctor sed orci. Quisque metus mauris, tempor at egestas in, egestas id ante. Vestibulum elementum varius commodo. Donec faucibus, quam eget luctus ullamcorper, urna sapien accumsan velit, at bibendum dui nibh non velit. Sed suscipit lectus id elit luctus mattis. Vestibulum eu leo ligula, ac semper risus. Nam in rutrum elit. Pellentesque rhoncus sollicitudin placerat. Proin rhoncus rutrum dolor, nec aliquam nunc laoreet et. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce ornare tortor in nisl sagittis ultrices.

### Oh yeah??

Integer sed nulla a lorem eleifend interdum. Ut quis nisl eros. Ut ac mi ac urna molestie fringilla sit amet eget quam. Aliquam non erat libero, molestie molestie sem. Nullam bibendum ante nec erat ornare faucibus. Sed eu est in purus condimentum pellentesque. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras at libero facilisis nisl feugiat consequat sit amet et elit. Pellentesque tempor ante nec magna consectetur ac congue enim faucibus. Cras lorem lectus, ultrices eget porttitor at, sodales eget dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec rutrum fringilla lectus non cursus. Fusce at arcu sit amet diam tincidunt ultricies.

In sit amet semper arcu. In vestibulum nibh sed nulla molestie tincidunt. Etiam commodo ligula hendrerit neque elementum pellentesque. Suspendisse at euismod justo. Pellentesque quis diam quam, id molestie augue. Maecenas vel erat id nisl dictum feugiat. Proin nec commodo erat. Mauris vulputate ullamcorper tristique. Nam at nibh sapien. Sed a tortor mauris, sit amet molestie erat.

Aenean feugiat ullamcorper augue, vel feugiat nisl pretium et. Fusce velit neque, accumsan sed rutrum at, scelerisque quis orci. Sed purus metus, tincidunt at venenatis quis, aliquet a ligula. Nullam facilisis congue egestas. In malesuada adipiscing diam nec ullamcorper. Aliquam erat volutpat. Nulla vel quam a augue sagittis sagittis. Nullam in libero sit amet diam ornare sollicitudin. Curabitur at tortor magna, id lobortis urna. Nullam et porta lorem. Donec fermentum tortor ac massa mollis quis lobortis quam luctus. Fusce in mauris at dui vulputate suscipit.
