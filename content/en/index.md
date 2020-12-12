## Guide for New Users
[Approach Zero](https://approach0.xyz) is a *math-aware search engine*.
This page aims to give new users a quick tour about how to use this search engine.

#### What is math-aware search?
“Math-aware” means you can add math expression(s) as some of your keywords to have search engine help you find similar expressions and return those documents/topics that you may find relevant to your query. In short, a typical search engine plus math search.

#### What the search engine actually looks for?
The current index includes data sources from [Mathematics StackExchange](http://math.stackexchange.com) and [ArtOfProblemSolving](https://artofproblemsolving.com/community).

The dataset has around two million documents with tens of millions of math formulas.

#### How a query is entered?

##### 1. Non-math keywords
If you only want to search normal text, just type the keyword(s) like what you normally do in a typical search engine:

![](../static/term-query.gif)

(When you have entered one keyword, hit `Enter` to finish editing, then you need to hit `Enter` again or click search button to perform search)

##### 2. Math keywords
Approach Zero query input box comes with [an embedded math editor](https://github.com/approach0/fork-mathquill) for users to easily edit structrual math expression.
One just needs to enter a dollar sign to invoke the embedded math editor when cursor is focusing on the input box.
When you are done with a math keyword in the embedded math editor, just press enter to "wrap up" the keyword as a "chip".

The following example demonstrates how to input \\( \int_0^1 f(x) dx \\) and query it as the only keyword:

![](../static/math-query.gif)

The embedded math editor can accept many math entity commands such as `\int` for integral or `\log` for logarithm. Actually, one can type `log(x)` without a backslash to input \\(\log(x)\\), but the recommended way is to explicitly type a leading backslash for every math entity command.
If you are not sure what is the "command" for a math entity, click the left-bottom floating red button to pull out the symbol keyboard to help you lookup a math entity and cast it into the query box.

Inside of the embedded math editor, use arrow keys or touch screen to move cursor to desired place, or hit `tab` key to jump to the next *to-be-edited* place.

If user is familiar with *TeX* or [MathJaX markup language](https://www.mathjax.org/), one can click the `Raw Query` menu at the bottom of search button to directly input math query in TeX. Remember to wrap **single dollar** signs around all your math keywords.


##### 3. Mixed keywords
One can mix text and math keywords together within one query.
Just make sure different types of keywords are wrapped up in separate "chips"
(this is required for Approach Zero to identify keyword type so it will not be confused by an ambitious keyword like `AI` since it can be both interpreted as matrix multiplication or as an acronym).

The following GIF demonstrates how to input a mixed query with a text keyword `concave` and a math keyword \\( f''(x) < 0 \\):

![](../static/mix-query.gif)

One restriction: You are limited to enter no more than 2 math
formula keywords and no more than 10 text keywords per query.

#### Caveats
* When you copy paste a math expression into query box, it is better to also wrap single dollar signs around TeX expression. Although pasting a/b and $a/b$ both result in the same math expression \\(\dfrac a b \\), having dollar signs surrounded will make it much easier for Approach Zero to recognize it a math expression instead of relying on the `/` symbol to "guess" it is a math expression.

* If you do not get any search result (or "No hit found"), you may have typed a malformed or over complex math formula. In this case, double check your **raw query**. Some of the typical problematic examples:
	* `a^(1+2+3)` should be `a^{1+2+3}`
	* `sin(x)` should be `\sin(x)`
	* `$lim$` should be `$\lim$` or  `\lim` in raw query, again, remember to add backslash for math command in TeX!
	* `$ f\left(x\right)\le1\ and\ f'\left(x\right)\le1 $` is also a bad query, never mix text and math in a single keyword, if you really want to do so, surround text in `\text{}` command. 

	If you still do not get any results, try to reduce the complexity of your math formula(s), and only use what you think is the most representing parts from your math formula.

* Avoid using Unicode symbols, use math entity commands instead. For example, do not use `α` or `β`, use `\alpha` and `\beta` TeX commands instead (although the former coding may still work).


#### Advanced usage
* If you know math-related TeX commands, it is often faster to
edit the equivalent raw query (separate keywords by commas).
For example, the above mixed keywords "concave" and
"\\(f'' < 0\\)" is equivalent to inputting a `concave,
$f''\lt 0$` in raw query box.

* You can use question mark `?` to make a placeholder when querying
some formula with parts you are uncertain.
For example, if you want to search expression
\\[dX_t = \ln (1+X_t^2)+ X_t dB_t \\]
you can also use query
\\[ ? = \ln (1+X_t^2)+ ? \\]


#### Handy tools
Here are a list of tools I myself find very useful:
* A good hand-written math [recognition Web tool](https://webdemo.myscript.com/views/math/index.html) by MyScript
* A photo math recognition [APP](https://mathpix.com/) by MathPix
* A helpful tutorial to go through [very basics of LaTeX](https://en.wikibooks.org/wiki/LaTeX)
* A comprehensive documentation on the set of supported [LaTeX for math](http://www.onemathematicalcat.org/MathJaxDocumentation/TeXSyntax.htm) by MathJax.
* A [less lengthy list](http://docs.mathjax.org/en/latest/input/tex/macros/index.html) of supported TeX/LaTeX commands in MathJax.

#### Improve this page
Click the upper-right `Edit on GitHub` link to help improve this guide.

Side note on how to produce the above GIF clips (I'd better keep it here otherwise I will forget):
On Linux platform, one can use `xwininfo` to locate a window ID and use `recordmydesktop` to record specified window, for example:
```sh
$ recordmydesktop --windowid 0x3408f8c --height 750 --width 400 -y 150 -x 50
```
use `mplayer` to generate JPEG files from recorded video, and then invoke `convert` to output GIF clips:
```sh
$ mplayer -ao null ./out.ogv  -vo jpeg:outdir=tmp
$ convert tmp/* -layers Optimize out.gif
$ rm -rf tmp out.ogv
```

#### Contribute new "keys" to our math symbol keyboard
Go to [source code](https://github.com/approach0/ui-approach0/blob/master/symbol-keyboard.js), edit and simply send a [pull request](https://opensource.stackexchange.com/questions/352/what-exactly-is-a-pull-request).

#### Share your thoughts
Leave a message in [this chat room](https://chat.stackexchange.com/rooms/46148) or tweet with hashtag `#approach0` to share your thoughts or ask any question about this project.
