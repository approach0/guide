## Guide for New Users
Approach0 is a third-party math-aware search engine dedicated to provide
better search experience for mathematical Q&A websites.
This page aims to provide new users a quick tour about
how to use Approach0 search engine.

### What is Math aware search?
Math-awareness means when you type a query containing one or more "keywords",
each keyword can be either normal text or a math
expression. Then the search engine gives you search
results from already indexed posts/threads which
contain the content you may find relevant to your query.

### What the search engine actually looks for?
This search engine only indexes
[Mathematics StackExchange](http://math.stackexchange.com)
site right now.

Newly updated posts may not be renewed in our database
immediately due to the current maintainer being a very
lazy person most of the time.

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
box to input \\(\log(x)\\). Although this works, the
recommended way is first type a dollar sign `$` (to indicate
the next keyword you are entering is a math keyword) followed
by your math expression.

This is important when you are entering a math expression that
is hard to tell whether it is truly a math or a regular term.
(e.g. `AI` can be interpreted as a matrix multiplication in
math or "Artificial Intelligence" in English)

#### 3. Mixed keywords
You can mix non-math and math keywords together (in any order)
within one query:

![](_static/mix-query.gif)

One restriction: You are limited to enter less than 5 math
keywords and less than 21 non-math keywords in one query.

### Other tips
* There are some math symbols that you may find not intuitive or not familiar on how to type directly into query input box
(such as \\( \infty \\), \\( \Theta \\) and \\( \perp \\)).
In these cases, click "handy pad" under search box for a number
of buttons to help you enter math symbols.

* The URL displayed on your browser uniquely determines a
query and page you are searching for. So you can show this URL
to others to refer a query.

* We support copy-paste in query input box. For math keyword,
paste `a/b` and `$a/b$` into query box both result in the same
math expression \\(\dfrac a b \\).

* You can edit or delete a math keyword by clicking the `✐ `
or `× ` icon on the right of the keyword.
You can also delete (but no edit option) a non-math keyword
by clicking the `× ` icon on the right of the keyword.

* If you do not get any search result ("No hit found"), try to
reduce the complexity of your math expression a little bit.
Also, check if your *raw query* is somewhat malformed, by
clicking the `raw query` link under search box.
Some typical malformed TeX snippets:
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


### Advanced Usage
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

##### 3. Send feedbacks
Any suggestion? Write your feedback on our GitHub issue
page. You can also send messages to this project on twitter
with hashtag `#approach0`.
