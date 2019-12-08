## Guide for New Users
[Approach0](/) is a math-aware search engine.
This page aims to provide new users a quick tour about
how to use Approach0 search engine.

#### What is math-aware search?
 “Math-aware” means you can add math expression(s) as some of your keywords to have search engine help you find similar expressions and return those documents that you may find relevant to your input. In short, a typical search engine plus math search.

#### What the search engine actually looks for?
The current online version is serveing for demonstration purpose,
with only partial data of [Mathematics StackExchange](http://math.stackexchange.com) and [ArtOfProblemSolving](https://artofproblemsolving.com/community) being indexed.
The data covers over one million posts/topics and tens of millions of math formulas.

#### How a search query is entered?

##### 1. Non-math keyword
If you only want to search non-math terms (i.e. normal text),
just type the keyword(s) like what you normally do on a typical
search engine:

![](_static/term-query.gif)

(After you have done a keyword, hit `Enter` to finish
editing, then hit `Enter` again or click search button to
actually perform search)

##### 2. Math keyword
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

##### 3. Mixed keywords
You can mix non-math and math keywords together (in any order)
within one query:

![](_static/mix-query.gif)

One restriction: You are limited to enter no more than 2 math
formula keywords and no more than 10 text keywords in one query.

#### Other tips
* If there are some math symbols that you do not know how to type directly into query input box
(such as \\( \infty \\) and \\( \perp \\)).
In these cases, click `Lookup symbols` under search query box for looking up math symbols.

* We support copy-paste in query input box. For math keyword,
paste a/b and $a/b$ into query box both result in the same
math expression \\(\dfrac a b \\).

* If you do not get any search result (when you see "No hit found") or when you see the query box has a
red-colored box around your inputting math formula, it indicates that you may have
typed a malformed math formula. In this case, double check your *raw query* by clicking the `raw query` link
under search box.
Some typical malformed examples:
	* `a^(1+2+3)` (should be `a^{1+2+3}`)
	* `sin(x)` (should be `\sin(x)`)
	* `$ f\left(x\right)\le1\ and\ f'\left(x\right)\le1 $` (never mix text and math in single keyword, if you have to do that, surround text in `\text{}` command). 
If you still do not get any results, try to reduce the complexity of your math formula(s), and only extract the most representing parts out of it and search again.

* How to enter integrals lower and upper bounds using query box editor?
	* It can be a little tricky if you are unfamiliar with the query editor:
	![](_static/intbonds-wrong.gif)
	* The right way: Use `arrow` key to move cursor to the
	rightmost and hit a `^` so it goes to upper bound edit.
	Then hit `tab` key to move cursor to edit function
	\\( f(x) \\):
	![](_static/intbonds-right.gif)


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

* We expose an open search API for other applications:
```sh
$ curl https://approach0.xyz/search/search-relay.php?q=prime
```

#### Improve this page
Click the upper-right `Edit on GitHub` link to help improve this guide.

#### Contact
You can contact the author by sending a tweet with hashtag `#approach0`, or leave a message
in [this chat room](https://chat.stackexchange.com/rooms/46148) on Mathematics StackExchange meta site.
