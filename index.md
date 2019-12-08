## Guide for New Users
[Approach0](/) is a math-aware search engine.
This page aims to provide new users a quick tour about
how to use Approach0 search engine.

### What is math-aware search?
 “Math-aware” means you can add math expression(s) as some of your keywords to have search engine help you find similar expressions and return those documents that you may find relevant to your input. In short, a typical search engine plus math search.

### What the search engine actually looks for?
The current online version is serveing for demonstration purpose,
with only partial data of [Mathematics StackExchange](http://math.stackexchange.com) and [ArtOfProblemSolving](https://artofproblemsolving.com/community) being indexed.
The data covers over one million posts/topics and tens of millions of math formulas.

### How a search query is entered?

#### 1. Non-math keyword
If you only want to search non-math terms (i.e. normal text),
just type the keyword(s) like what you normally do on a typical
search engine:

![](_static/term-query.gif)

(After you have done a keyword, hit `Enter` to finish
editing, then hit `Enter` again or click search button to
actually perform search)

#### 2. Math keyword
To input math keyword is also very intuitive, user does not
have to know TeX to input a math expression on search box.
Below is an example of inputting math expression \\(\log(x)\\):

![](_static/math-query.gif)

You can either type `\log(x)` or `log(x)` directly on search
box to input \\(\log(x)\\). Although this would work, the
recommended way is first type a dollar sign `$` (to indicate
the next keyword you are entering is a math keyword) followed
by your math expression.

This is important when you are entering a math expression that
is hard to tell by the system whether it is truly a math or a regular text term.
(e.g. `AI` can be interpreted as a matrix multiplication in
math or acronym for "Artificial Intelligence" in English)

#### 3. Mixed keywords
You can mix non-math and math keywords together (in any order)
within one query:

![](_static/mix-query.gif)

One restriction: You are limited to enter no more than 2 math
formula keywords and no more than 10 text keywords in one query.

### Other tips
* If there are some math symbols that you do not know how to type directly into query input box
(such as \\( \infty \\) and \\( \perp \\)).
In these cases, click `Lookup symbols` under search query box for looking up math symbols.

* We support copy-paste in query input box. For math keyword,
paste a/b and $a/b$ into query box both result in the same
math expression \\(\dfrac a b \\).

* If you do not get any search result ("No hit found") or get a
red-colored box around your inputting math formula. You may have
typed a malformed math formula. In this case, check if your *raw query*
is somewhat malformed, by clicking the `raw query` link under search box.
Some typical malformed examples:
	* `a^(1+2+3)` (should be `a^{1+2+3}`)
	* `sin(x)` (should be `\sin(x)`)

* How to manually enter (without the assistance of "handy pad")
integrals with both lower and upper bounds?
	* This is a little tricky, the wrong way:
	![](_static/intbonds-wrong.gif)
	* The right way: Use `arrow` key to move cursor to the
	rightmost and hit a `^` so it goes to upper bound edit.
	Then hit `tab` key to move cursor to edit function
	\\( f(x) \\):
	![](_static/intbonds-right.gif)


### Advanced usage
* If you know math-related TeX commands, it is often faster to
edit the equivalent raw query (separate keywords by commas).
For example, the above mixed keywords "concave" and
"\\(f'' < 0\\)" is equivalent to inputting a `concave,
$f''\lt 0$` in raw query box.

* You can use question mark `?` on our query input box to
represent a `wildcard` which represents `any math expression
except a single symbol`.
For example, if you want to search expression
\\[dX_t = \ln (1+X_t^2)+ X_t dB_t \\]
you can type less by just searching:
\\[ ? = \ln (1+X_t^2)+ ? \\]
In raw query, you can use `\qvar{}` to name wildcards which
represent different expressions.
For instance: `$\qvar{x} = \ln (1 + X_t^2) + \qvar{y}$`.

* Our WEB API enables developers to build their own
applications based on our search engine. Search results are
returned in JSON format.

### Help Approach0 improve

##### 1. Make contribution to this project
Approach0 is an open-source project hosted on
[Github](https://github.com/approach0).
And it is open to any brilliant idea.

Notice each time you visit approach0 there will be a
"random" math question which is called "quiz conversation",
You can contribute your own quiz conversation on
[this page](https://github.com/approach0/search-engine/blob/master/demo/web/quiz-list.js).

##### 2. Improve this page
Click the upper-right `Edit on GitHub` link to improve this guide.

##### 3. Contact
You can contact the author by sending a tweet with hashtag `#approach0`, or leave a message
in [this chat room](https://chat.stackexchange.com/rooms/46148) on Mathematics StackExchange meta site.
