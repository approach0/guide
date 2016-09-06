## About

Source code for Approach0 search engine user guide (English).

If you spot a mistake or want to contribute to this documentation,
you are welcome to open a pull request.

## Compile
If you edited the source locally, you can compile and preview your
changes (in HTML) by using `sphinx`.

To install sphinx:
```
$ sudo pip install sphinx
$ sudo pip install recommonmark # for Markdown Editing
```

To compile and preview changes in your default HTML browser:
```
$ sphinx-build -b html -d _build/doctrees . _build/html
$ xdg-open ./_build/html/index.html
```
