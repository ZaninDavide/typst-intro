#set page(paper: "presentation-16-9")

#let main-color = rgb("#00afc6")
#let main-color-variant = rgb("#00c6b5")
#let main-gradient = gradient.linear(angle: 30deg, main-color-variant, main-color)

#{
  set page(fill: main-gradient, margin: 1.5cm)
  v(1fr)
  align(center, {
    box(inset: (bottom: -20pt), text(size: 24pt, fill: white, smallcaps[an _introduction_ to]))
    linebreak()
    text(size: 140pt, weight: "bold", fill: white)[typst]
  })
  v(1fr)
}

#pagebreak()

#set page(margin: 1.5cm, numbering: "1", number-align: right)

#let title(it) = place(
  top, 
  float: true, 
  scope: "parent", 
  pad(bottom: 10pt,
  box(fill: main-gradient, inset: 20pt, radius: 4pt, width: 100%,
    text(size: 30pt, weight: "bold", fill: white, it)
  ))
)

#let sub-title(it) = place(
  top, 
  float: true, 
  scope: "parent", 
  pad(bottom: 10pt,
  box(inset: 20pt, radius: 4pt, width: 100%,
    text(size: 30pt, weight: "bold", fill: main-color, it)
  ))
)

#set text(size: 20pt)
#set page(columns: 2)
#set raw(lang: "typ")

#let title-page(it) = {
  set page(fill: main-gradient, numbering: none)
  v(1fr)
  align(center, text(size: 50pt, fill: white, it))
  v(1fr)
}

// #show raw.where(block: true, lang: "typ"): set par.line(numbering: "1")
#show raw.where(block: true, lang: "typ"): code => {
  block(breakable: false, grid(
    columns: (auto, auto),
    column-gutter: 1em,
    inset: (bottom: par.leading / 2, top: par.leading / 2, right: 4pt, left: -5pt),
    stroke: (x, y) => { if x == 0 { (right: 1pt + luma(80%)) } else { none }},
    align: (right, raw.align),
    ..for line in code.lines {
      (
        text(fill: luma(80%))[#line.number],
        line.body,
      )
    },
  ))
}

#{
  set page(columns: 2)
  align(center, box({
  set text(size: 50pt, fill: main-gradient)
  v(1fr)
  par(leading: 20pt)[Typst is a\ *typesetting*\ _system_]
  v(1fr)
  }))
}

#pagebreak()
#set page(columns: 1)
#align(center, box[
#set text(size: 30pt)
#v(1fr)
$
  #move(dy: 0em, box(inset: 15pt, fill: luma(90%), radius: 10pt)[```txt *.typ```])
  stretch(->, size: #5cm)^#box(inset: (bottom: -5pt))[compiler]
  cases(
    #move(dy: 0em, box(inset: 15pt, fill: luma(90%), radius: 10pt)[```txt *.pdf```]),
    #move(dy: 0em, box(inset: 15pt, fill: luma(90%), radius: 10pt)[```txt *.png```]),
    #move(dy: 0em, box(inset: 15pt, fill: luma(90%), radius: 10pt)[```txt *.svg```]),
    #move(dy: 0em, box(inset: 15pt, stroke: 2pt + luma(90%), radius: 10pt)[```txt *.html```]),
  )
$
#v(1fr)
])

/*
#pagebreak()

#let arrow-content = {
  move(dx: 0pt, dy: 100pt, scale(x: 300%, y: 300%, box(width: 0pt, height: 0pt, curve(fill: gray.transparentize(80%),
    curve.line((50pt, 0pt), relative: true),
    curve.line((0pt, 30pt), relative: true),
    curve.line((50pt, -50pt), relative: true),
    curve.line((-50pt, -50pt), relative: true),
    curve.line((0pt, 30pt), relative: true),
    curve.line((-50pt, 0pt), relative: true),
    curve.close(),
  ))))
}

#page(background: arrow-content)[
#raw("= A nice big title
Just some text to display. 👋 

$ F(🍎) = integral_(-oo)^🍎 f(x) dif x $

=== A smaller title // invisible comment
A list of things you like:
- Typst 
- $e^(i pi) = -1$

Some js code:
```js
console.log(\"Hello, world!\")
```

#figure(caption: \"A nice table\", table(columns: 2, 
  [A], [B],
  [0], [1], 
  [2], [3], 
))", block: true)

#colbreak()

= A nice big title
Just some text to display. 👋 

$ F(🍎) = integral_(-oo)^🍎 f(x) dif x $

=== A smaller title // invisible comment
A list of things you like:
- Typst 
- $e^(i pi) = -1$

Some js code:
```js
console.log("Hello, world!")
```

#figure(caption: "A nice table", table(columns: 2, 
  [A], [B],
  [0], [1], 
  [2], [3], 
))
]
*/

#{
  set page(columns: 2)
  place(center + horizon, dx: 50%, text(fill: luma(90%), size: 430pt)[&])
  align(center, box({
    set text(size: 50pt, fill: main-gradient)
    v(1fr)
    par(leading: 20pt)[a *markup*\ _language_]
    v(1fr)
  }))
  colbreak()
  align(center, box({
    set text(size: 50pt, fill: main-gradient)
    v(1fr)
    par(leading: 20pt)[a *programming*\ _language_]
    v(1fr)
  }))
}

#title-page[#text(size: 150pt, [*3*]) modes:\ #box(inset: (top: -15pt))[#text(size: 30pt)[markup, _math_, `code`]]]

#pagebreak()
#set page(columns: 1)

#sub-title[Markup mode]
#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
  [
  ```
  Odi et amo. 
  Quare id faciam fortasse requiris.\ 
  Nescio, 
  sed fieri sentior et excrucior.

  Catullus
  ```
  ],
  [
  Odi et amo. 
  Quare id faciam fortasse requiris.\ 
  Nescio, sed fieri sentior et excrucior.

  Catullus
  ],
  [```
  We can make our text *bold* or _italic_.
  ```],
  [We can make our text *bold* or _italic_.],
  [
  ```
  = Big title
  == Small title
  === Smaller title
  ==== Even smaller title
  ```
  ],
  [
  = Big title
  == Small title
  === Smaller title
  ==== Even smaller title
  ],
  [
    ```
    Three italian dishes are:
    - Pasta
    - Pizza
    - Tiramisù
    ```
  ],  
  [
    Three italian dishes are:
    - Pasta
    - Pizza
    - Tiramisù
  ],  
  [
    ```
    My favorite mangas are:
    + One Piece
    + Attack on Titan
    ```
  ],  
  [
    My favorite mangas are:
    + One Piece
    + Attack on Titan
  ],
  raw(block: true, "We can write code inline\nlike this `print(\"Hello\")` or\nlike this ```py print(\"Hello\")```."),
  [
  We can write code inline like this `print("Hello")` or like this ```py print("Hello")```.
  ],
  raw(block: true, "We can make a code block like this:
```py
print(\"Hello\")
```"),
  [
  We can make a code block like this:
  ```py
  print("Hello")
  ```
  ],
  [
    ```
    // We can make a comment
    /* In two different ways */
    ```
  ],
  [],
)

#pagebreak()
#sub-title[Math mode]
#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
  [```
  The most beautiful equation in math is considered by many to be 
  $e^(i pi) = -1$.
  ```],
  [The most beautiful equation in math is considered by many to be $e^(i pi) = -1$.],
  [```
  A more general formula exists: 
  $ 
  e^(i theta) 
  = sum_(n=0)^(+oo) (i theta)^n/(n!) 
  = cos(theta) + i sin(theta). 
  $
  ```],
  [
  A more general formula exists: 
  $ 
  e^(i theta) = sum_(n=0)^(+oo) (i theta)^n/(n!) = cos(theta) + i sin(theta). 
  $
  ],
  [```
  $
  A inter B = emptyset => 
  A without B = A
  $
  ```],
  [$ A inter B = emptyset => 
  A without B = A $],
  [```$ 
  Q = 2 pi
  "energy at the start" / 
  "energy dissipated"
  $```],
  [$ Q = 2 pi 
  "energy at the start" / 
  "energy dissipated" $],
  [```
  $ arrow(F) = m arrow(a) $```],
  [$
  arrow(F) = m arrow(a)
  $],
  [```$
  vec(3,9,15) = 
  mat(1,2,3; 4,5,6; 7,8,9) 
  vec(1,1,0)   
  $```],
  [$
    vec(3,9,15) = mat(1,2,3; 4,5,6; 7,8,9) vec(1,1,0)   
  $],
  /* [```$ 
  W &= integral_gamma 
  arrow(F) dot dif arrow(s) \ 
  &= integral_(t_i)^(t_f) m arrow(v) 
  dot (dif arrow(s)) / (dif t)
  = 1/2 m ( v_f^2 - v_i^2 )
  $```],
  [$ 
  W &= integral_gamma arrow(F) dot dif arrow(s) \ 
    &= integral_(t_i)^(t_f) m dif arrow(v) dot ( dif arrow(s) ) / (dif t)
    = 1/2 m ( v_f^2 - v_i^2 )
  $] */
  [```
  $
  f(x) &= (x+1)^2 &&= x^2 + 2x + 1 \
  g(x) &= 10(x-1) &&= 10x - 10 \
  $
  ```],
  [
  $
  f(x) &= (x+1)^2 &&= x^2 + 2x + 1 \
  g(x) &= 10(x-1) &&= 10x - 10 \
  $
  ]
)

#pagebreak()

#sub-title[Code mode]

#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
  [```
  #bibliography("example.bib")
  ```],
  [
  #bibliography("example.bib", full: true)
  ],
  [```
  #strong("bold"), *bold*
  ```],
  [
  #strong("bold"), *bold*
  ],
  [```
  #link("example.com", "Example")
  ```],
  [
  #link("example.com", "Example")
  ],
  [```
  #let x = "hello"
  I want to say you #x
  ```],
  [
  #let x = "hello"
  I want to say you #x
  ],
  [```
  #let x = [Typst is _amazing_]
  #let y = "Typst is _amazing_"
  #x \ #y
  ```],
  [
  #let x = [Typst is _amazing_]
  #let y = "Typst is _amazing_"
  #x \ #y
  ],
  [```
  #let nice(it) = [✨] + it + [✨]
  #nice([Typst]) \ #nice[Typst]
  ```],
  [
  #let nice(it) = [✨] + it + [✨]
  #nice([Typst]) \ #nice[Typst]
  ],
  [```
  #link("example.com",[_Example_])
  #link("example.com")[_Example_]
  ```],
  [
  #link("example.com",[_Example_])
  #link("example.com")[_Example_]
  ],
  [
    ```
    #figure(
      image("cow.jpg", width: 6cm),
      caption: [Cowdynamics],
    )
    ```
  ],
  [
    #figure(
      image("images/cow.jpg", width: 6cm),
      caption: [Cowdynamics],
    )
  ],
  [```
  #{
    let N = 10
    let n = 1
    [1 ]
    for i in range(2, N + 1) { 
      n += i
      [\+ #i ]
    }
    [\= #n]
  }
  ```],
  [
  #{
    let N = 10
    let n = 1
    [1 ]
    for i in range(2, N + 1) { 
      n += i
      [\+ #i ]
    }
    [\= #n]
  }
  ],
  [```
  #{
    let bool = true
    let list = (1, 2, 3)
    let dict = (a: 1, b: 2)
    let lambda = x => x * 2
  }
  ```],
  []
)

/*
#{
set figure.caption(position: top)
show link: set text(fill: blue)
show link: underline
set page(numbering: none)

figure(caption: [Markup mode (https://typst.app/docs/reference/syntax/#markup)], placement: top, image("images/markup-mode.png"))
figure(caption: [Math mode (https://typst.app/docs/reference/syntax/#math)], placement: top, image("images/math-mode.png"))
}
*/

#place.flush()

#set page(columns: 2)
#title-page[`set` #text(size: 50pt, "&") `show`]

#pagebreak()
#set page(columns: 1)

#v(1fr)
#align(center, box({
  set text(size: 40pt)
  $ 
  #[`#set`]#h(15pt)
  overbrace(#text(fill: blue)[`text`], #box(width: 0pt, "element"))#h(-5pt)
  #[`(`]#h(0pt) underbrace(#[`size: 30pt`], "new defaults")#h(0pt) #[`)`] 
  $
}))
#v(1fr)

#pagebreak()

#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
[```
#set text(
  font: "New Computer Modern"
)
Hello Typst enthusiasts!
```],
[
#set text(font: "New Computer Modern")
Hello Typst enthusiasts!
],
[```
#set heading(numbering: "1.i")

= A primary heading
The first block of text after the title

== A secondary heading
The paragraph right after the secondary heading
```],
[
#set heading(numbering: "1.i")

= A primary heading
The first block of text after the title

== A secondary heading
The paragraph right after the secondary heading
],
[```
#set heading(numbering: "1")

= Referenceable <ref>
This is @ref
```],
[
  #set heading(numbering: "1")

  = Referenceable <ref>
  This is @ref
],
[```
#set list(marker: "👉", indent: 1cm)

- Element A 
  - Element A1
  - Element A2
- Element B 
```],
[
#set list(marker: "👉", indent: 1cm)

- Element A 
  - Element A1
  - Element A2
- Element B 
],
[```
#set page(margin: (
  top: 2cm, 
  bottom: 3cm, 
  left: 3cm,
  right: 3cm,
))
```],
[],
[```
#{
  set text(fill: red)
  [Alert!]
}
Typst is coming!
```],
[
#{
  set text(fill: red)
  [Alert!]
}
Typst is coming!
]
)

#pagebreak()
#v(1fr)
#align(center, box({
  set text(size: 40pt)
  $ 
  #[`#show`]#h(15pt)
  overbrace(#text(fill: blue)[`link`], #box(width: 0pt, "filter"))#h(-5pt)
  #[`: `]#h(-15pt) underbrace(#text(fill: blue)[`underline`], "editing function")#h(0pt) 
  $
}))
#v(1fr)

#pagebreak()
#v(1fr)
#align(center, box({
  set text(size: 40pt)
  $
    #[`#show`]#h(15pt)
    #text(fill: blue)[`link`]#h(-5pt)
    #[`: `]#h(-10pt) 
    #text(fill: blue)[`underline`]#h(0pt) 
  $
  text(size: 30pt, fill: gray)[means]
  $ 
  (
  #text(fill: blue)[`link`]#h(15pt)
  mapsto
  #text(fill: blue)[`underline`]#h(15pt)
  compose
  #text(fill: blue)[`link`]#h(0pt)
  )
  $
}))
#v(1fr)


#pagebreak()


#grid(
  columns: (55%, 45%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
[```
#show link: underline
#link("example.com", "Example")
```],
[
#show link: underline
#link("example.com", "Example")
],
[```
#show heading: it => {
  set text(
    size: 30pt, 
    font: "Helvetica"
  )
  it
}

= Lorem ipsum
#lorem(30)
```],
[
#show heading: it => {
  set text(
    size: 30pt, 
    font: "Helvetica"
  )
  it
}

= Lorem ipsum
#lorem(30)
],
[```
#show heading: set text(
  size: 30pt, 
  font: "Helvetica"
)

= Lorem ipsum
#lorem(30)
```],
[
#show heading: it => {
  set text(
    size: 30pt, 
    font: "Helvetica"
  )
  it
}

= Lorem ipsum
#lorem(30)
],
[```
#show math.equation: align.with(left)
$ F = m a $
```],
[
#show math.equation: align.with(left)
$ F = m a $
]
)

#pagebreak()
#title[Templates]

```
#import "@preview/charged-ieee:0.1.3": ieee

#show: ieee.with(
  title: [A Typesetting System to ..],
  abstract: [..],
  authors: ((name: "Martin Haug", ..), ..),
  bibliography: bibliography("example.bib"),
  ..
)

= Introduction
..
```

#align(center, image("images/template-example.png"))

#pagebreak()
#title[Compilation]

#v(5mm)
#align(center, block[
  #show: align.with(left)
  #set text(30pt)
  #set list(marker: text(fill: main-color, sym.circle), spacing: 1.5cm)


  - ```sh typst compile example.typ```
  - ```sh typst watch example.typ```
  - #underline(link("https://typst.app/",text(fill: blue, "https://typst.app/")))

])

#set page(columns: 1)
#title-page({
  place(text(size: 500pt, fill: white.transparentize(80%))[🪐], center + horizon)
  h(-1.5cm)
  text(size: 80pt, font: "DejaVu Sans Mono")[Universe]
})
#set page(columns: 1)


#import "@preview/physica:0.9.8": *

#v(10pt)
#align(center, text(size: 25pt)[`#import "@preview/physica:0.9.8": *`])
#v(10pt)

#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
[```
$
curl (grad V + pdv(vb(A), t)) = 
pdv(vb(B), t)
$
```
],
[
$ curl (grad V + pdv(vb(A), t)) = pdv(vb(B), t) $
],
[```
#let tn = tensor
$ 
tn(R, +mu, -nu) -
1/2 R tn(g, +mu, -nu) =
8 pi G tn(T, +mu, -nu) 
$
```
],
[
#let tn = tensor
$ tn(R, +mu, -nu) - 1/2 R tn(g, +mu, -nu) = 8 pi G tn(T, +mu, -nu) $
]
,
)

#pagebreak()
#v(10pt)
#align(center, text(size: 25pt)[`#import "@preview/quill:0.7.2": *`])
#v(10pt)

#import "@preview/quill:0.7.2": *
#grid(
  columns: 100%,
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  align: center + horizon,
[```
#import "@preview/quill:0.7.2": *
#import "@preview/physica:0.9.8": ket

#let super = $ (ket(00) + ket(11))/sqrt(2) $
#quantum-circuit(
  lstick($ket(0)$), $H$, ctrl(1), rstick(super, n: 2), [\ ],
  lstick($ket(0)$), 1, targ(), 1
)
```]
,
v(-40pt) +
scale(200%, reflow: true)[
#import "@preview/quill:0.7.2": *
#let super = $ (ket(00) + ket(11))/sqrt(2) $
#quantum-circuit(
  lstick($ket(0)$), $H$, ctrl(1), rstick(super, n: 2), [\ ],
  lstick($ket(0)$), 1, targ(), 1
)
]
)

#pagebreak()
#let group = gategroup.with(stroke: (dash: "dotted", thickness: .5pt))
#{
  show link: underline
  show link: set text(fill: blue)
  align(center, link("https://github.com/Mc-Zen/quill/blob/v0.6.1/examples/fault-tolerant-measurement.typ"))
}
#place(center + horizon, scale(180%, reflow: true, quantum-circuit(
  row-spacing: 6pt,
  fill-wires: false,
  lstick($|0〉$), 10pt, group(3, 2, label: (content: "Prepare")), $H$, ctrl(2), 3pt, 
    group(4, 2, label: (content: "Verify")), 3,
    group(7, 3, label: (content: [Controlled-$M$])),
    ctrl(4), 2, 10pt, group(3, 2, label: (content: "Decode")), ctrl(2), $H$, meter(), [\ ],  
  lstick($|0〉$), 1, targ(), 1, ctrl(2), 2, ctrl(4), 1, targ(), 2, [\ ], 
  lstick($|0〉$), 1, targ(), ctrl(1), 4, ctrl(4), targ(), 2, [\ ],  
  setwire(0), 2, lstick($|0〉$), setwire(1), targ(), targ(), 1, [\ ], 10pt,
  setwire(0), 4, lstick(align(center)[Encoded\ Data], n: 3), setwire(1), 1,
    $M'$, 3, [\ ],
  setwire(0), 5,  setwire(1), 2, $M'$, 2, [\ ],
  setwire(0), 5,  setwire(1), 3, $M'$, 1,
)))


#pagebreak()
#v(10pt)
#align(center, text(size: 25pt)[`#import "@preview/cetz:0.4.2"`])
#v(10pt)

#v(1fr)
#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  align: center + horizon,
  [```
  #import "@preview/cetz:0.4.2"
  #cetz.canvas({
    import cetz.draw: *
    circle((0, 0))
    line((0, 0), (2, 1))
  })
  ```],
  [
      #import "@preview/cetz:0.4.2"
  #cetz.canvas({
    import cetz.draw: *
    circle((0, 0))
    line((0, 0), (2, 1))
  })
  ]
)

#v(1fr)

#pagebreak()

#figure(caption: [_La Mona Lisa_ according to chatGPT], image("images/mona-lisa.pdf", height: 11cm))
#pagebreak()

#v(10pt)
#align(center, text(size: 25pt)[`#import "@preview/zap:0.5.0"`])
#v(10pt)

#v(1fr)
#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  align: center + horizon,
  [```
    #import "@preview/zap:0.5.0"
    #zap.circuit({
        import zap: *
        resistor("r1", (0,0), (0, 3), 
          label: $R$, i: $i$
        )
    })
  ```],
  [
    #scale(160%, {
      import "@preview/zap:0.5.0"
      zap.circuit({
          import zap: *
          resistor("r1", (0,0), (0, 3), 
            label: $R$, i: $i$
          )
      })
    })
  ]
)

#v(1fr)
#pagebreak()

#v(1fr)
#{
  show link: underline
  show link: set text(fill: blue)
  place(top + center, link("https://github.com/l0uisgrange/zap/blob/main/examples/example1.typ"))
}
#place(center + horizon, scale(130%, reflow: true, {
  import "@preview/zap:0.5.0"
  zap.circuit({
    import zap: *
    resistor("r1", (2, 0), (4, 2))
    resistor("r2", (6, 0), (4, 2))
    resistor("r3", (6, 0), (4, -2))
    resistor("r4", (2, 0), (4, -2))
    afuse("f1", (0, 2), "r1.out", position: 40%, label: $F_1$)
    vsource("v1", (0, -2), (0, 2), u: $u_1$, i: (content: $i_1$, anchor: "south"), label: (content: "5V", anchor: "south"))
    wire("r4.out", (0, -2))
    pnp("n1", (8, 2), envelope: true)
    wire("r1.out", "n1.b")
    capacitor("c1", "n1.e", (rel: (2, 0)), label: $C_1$)
    swire(name: "dede", "n1.c", "r4.out", axis: "y")

    node("A", (4, 2))
    node("B", (4, -2))
    opamp("o1", (13, 2.05), label: "OP1")
    wire("o1.minus", "c1.out")
    zwire("o1.out", (rel: (1, 0)))
    rheostat("r2", (rel: (1, 0), to: "o1.out"), (rel: (0, -4.05)), label: $R_"eq"$)
    swire("r2.out", "dede.p1")

    earth("g1", (11, 1))
    swire("o1.plus", "g1")
  })
}))
#v(1fr)

#pagebreak()
#v(10pt)
#align(center, text(size: 25pt)[`#import "@preview/lilaq:0.6.0" as lq`])
#v(10pt)
#import "@preview/lilaq:0.6.0" as lq

```
#let data = csv("example.csv").slice(1, none)
#let datax = data.map(row => float(row.at(0)))
#let datay1 = data.map(row => float(row.at(1)))
#let datay2 = data.map(row => float(row.at(2)))

#lq.diagram(
  title: [Title],
  xlabel: [$x$-axis], 
  ylabel: [$y$-axis],
  width: 16cm,
  height: 10cm,
  lq.plot(datax, datay1, mark: "s", label: [Data 1]),
  lq.plot(datax, datay2, mark: "o", label: [Data 2])
)
```

#let csv-table = place(right + horizon, {
  set align(center)
  text(fill: gray)[`example.csv`]
  v(-15pt)
  table(
    columns: 3, 
    inset: 10pt, 
    align: center, 
    stroke: gray,
    fill: (x, y) => if y == 0 { luma(90%) } else { none },
    ..csv("example.csv").flatten()
  )
})

#csv-table

#pagebreak()

#let data = csv("example.csv").slice(1, none)
#let datax = data.map(row => float(row.at(0)))
#let datay1 = data.map(row => float(row.at(1)))
#let datay2 = data.map(row => float(row.at(2)))

#place(left + horizon, lq.diagram(
  title: [Title],
  xlabel: [$x$-axis], 
  ylabel: [$y$-axis],
  width: 16cm,
  height: 10cm,
  lq.plot(datax, datay1, mark: "s", label: [Data 1]),
  lq.plot(datax, datay2, mark: "o", label: [Data 2])
))

#csv-table

#pagebreak()

#place(center + horizon, image("images/lilaq-example.png", height: 100%))

#pagebreak()

#v(10pt)
#align(center, text(size: 25pt)[`#import "@preview/patatrac:0.5.0"`])
#v(10pt)

#v(1fr)
#import "@preview/patatrac:0.5.0"
#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  align: center + horizon,
  [```
    #import "@preview/patatrac:0.5.0"
    #patatrac.cetz.canvas({
      import patatrac: *
      let draw = cetz.standard()
      let floor = incline(100, 20deg)
      let A = rect(15, 15)
      let B = rect(15, 15)
      A = stick(A("bl"), floor("tl"))
      B = stick(B("br"), floor("tr"))
      A = slide(A("c"), +20, 0)
      B = slide(B("c"), -20, 0)
      let k = spring(A("r"), B("l"))
      draw(floor, A, B, k)
    })
  ```],
  [
    #scale(160%, {
      set text(size: 15pt)
      patatrac.cetz.canvas(length: 0.5mm, {
        import patatrac: *
        let draw = cetz.standard()
        let floor = incline(100, 20deg)
        let A = rect(15, 15)
        let B = rect(15, 15)
        A = stick(A("bl"), floor("tl"))
        B = stick(B("br"), floor("tr"))
        A = slide(A("c"), +20, 0)
        B = slide(B("c"), -20, 0)
        let k = spring(A("r"), B("l"))
        draw(floor, A, B, k)
      })
    })
  ]
)

#v(1fr)
#pagebreak()

#v(1fr)
#{
  show link: underline
  show link: set text(fill: blue)
  align(center, link("https://github.com/ZaninDavide/patatrac/blob/main/gallery/incline.typ"))
}
#v(1cm)
#align(center, scale(160%, reflow: true, {
  set text(size: 15pt)
  patatrac.cetz.canvas(length: 0.5mm, {
    import patatrac: *
    let draw = cetz.standard(
      rect: (stroke: 0.75pt, fill: white),
      circle: (stroke: 0.75pt),
      arrow: (stroke: 0.75pt, mark: (end: "stealth", fill: black)),
      incline: (stroke: 0.75pt),
      rope: (stroke: 0.75pt),
    )

    let sideA = 20
    let sideB = 15
    let radiusC = 5
    let hang = 15

    let I = incline(150, 25deg)

    let A = rect(sideA,sideA)
    A = stick(A("bl"), I("tl"))
    A = slide(A, -40, 0)

    let centerC = anchors.slide(I("tr")(), hang, sideA/2 - radiusC)
    let C = place(circle(radiusC), centerC)
    let L = rope(C(), I("tr"))
    
    let B = move(place(rect(sideB, sideB), C("r")), 0, -40)
    let R = rope(A("r"), C("t"), B("t"))
    
    let tension1 = arrow(A("r"), 20)
    let tension2 = arrow(B("t"), 20)

    let dotted = tiling(
      size: (2pt, 2pt), 
      pad(std.circle(radius: 0.1pt, fill: black, stroke: none), 1pt)
    )

    draw(I, fill: dotted)
    draw(L, C, R, tension1, tension2)
    draw(point(tension1("end"), rot: false), lx: -8, ly: 2, label: $std.math.arrow(T)_1$, align: bottom)
    draw(point(tension2("c"), rot: false), lx: 10, label: $std.math.arrow(T)_2$, align: bottom)
    draw(point(C("c")), radius: 1pt)
    
    draw(axes(A("c"), 0, 40), stroke: (paint: black, thickness: 0.5pt, dash: "dashed")) 
    draw(A, B)
    draw(point(A("c")), label: $M$)
    draw(point(B("c")), label: $m$, ly: 1)
    
    let coord(a) = { let a = anchors.to-anchor(a); return (a.x, a.y) }
    cetz.angle.angle(label: $alpha$, radius: 30, label-radius: 38, stroke: 0.5pt, 
      coord(I("bl")), 
      coord(I("br")), 
      coord(I("tr")), 
    )
  })
}))
#v(1fr)

#pagebreak()
#v(10pt)
#align(center, text(size: 25pt)[`#import "@preview/beam:0.1.1"`])
#v(10pt)

#v(1fr)
#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  align: center + horizon,
  [```
    #import "@preview/beam:0.1.1"
    #beam.setup({
      import beam: *
      laser("laser", (0, 0))
      lens("l1", (3, 0))
      detector("cam", (4, 0))
      beam("", "laser", "l1")
      focus("", "l1", "cam")
    })
  ```],
  [
    #import "@preview/beam:0.1.1"
    #beam.setup({
      import beam: *
      laser("laser", (0, 0))
      lens("l1", (3, 0))
      detector("cam", (4, 0))
      beam("", "laser", "l1")
      focus("", "l1", "cam")
    })
  ]
)

#v(1fr)

#pagebreak()
#v(10pt)
#align(center, text(size: 25pt)[`#import "@preview/wicked:0.2.0": wick`])
#v(10pt)
#import "@preview/wicked:0.2.0": wick

```
$ :
wick(id: #1, macron(Psi))_alpha (x)
gamma^mu_(alpha beta) 
wick(pos: #top, A)_mu (x) 
wick(Psi)_beta (x)
wick(macron(Psi))_eta (y)
gamma^nu_(eta rho) (y)
wick(pos: #top, A)_nu 
wick(id: #1, Psi)_rho (y)
: $
```

$ :
wick(id: #1, macron(Psi))_alpha (x)
gamma^mu_(alpha beta) 
wick(pos: #top, A)_mu (x) 
wick(Psi)_beta (x)
wick(macron(Psi))_eta (y)
gamma^nu_(eta rho) (y)
wick(pos: #top, A)_nu 
wick(id: #1, Psi)_rho (y)
: $

#set page(columns: 2)
#title-page[
  #grid(
    columns: 2,
    align: (right, left),
    move(dx: 25pt, text(size: 120pt, "&", fill: white.transparentize(50%))),
    [
      #set par(leading: 12pt)
      `context`\ _introspection_
    ]
  )
]
#set page(columns: 1)

#grid(
  columns: (50%, 50%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  [```
  #context { text.size },
  #context { text.font }
  ```], [
    #context { text.size },
    #context { text.font }
  ],
  [```
  Introduction is at:\
  #context { 
    locate(<intro>).position()
  }

  = Introduction <intro>
  ```
  ],
  [
    Introduction is at:\
    #context { locate(<intro>).position()}

    = Introduction <intro>
  ],
  [
    ```
    #context { 
      for h in query(
        heading.where(level: 1)
      ) {
        h.body
        linebreak()
      }
    }
    ```
  ],
  [
    #context { 
      for h in query(heading.where(level: 1)) {
        h.body
        linebreak()
      }
    }
  ]
)

#title-page(image("images/stranger-things.png", width: 40%))

#sub-title[`box`es]
#grid(
  columns: (65%, 35%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
[
  ```  
  This is a 
  #box(
    fill: red, radius: 10pt, 
    inset: (x: 10pt), outset: (y: 10pt),
    text(fill: white)[`BOX`]
  )

  This is a 
  #block(fill: blue, radius: 10pt, outset: 10pt,
    text(fill: white)[`BLOCK`]
  )
  ```
], 
[ This is a 
  #box(fill: red, radius: 10pt, inset: (x: 10pt), outset: (y: 10pt),
    text(fill: white)[`BOX`]
  )

  This is a 
  #block(fill: blue, radius: 10pt, outset: 10pt,
    text(fill: white)[`BLOCK`]
  )
]
)

#pagebreak()

#sub-title[2D input in math mode]
#grid(
  columns: (55%, 45%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
[```#let func(..args) = repr(args)
$ func(1,2,3; 4,5,6) $
```],
[
#let func(..args) = repr(args)
$ func(1,2,3; 4,5,6) $
]
)
#pagebreak()

#sub-title[`metadata`]
#grid(
  columns: (55%, 45%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
[
  ```  
  Metadata is invisible content: #metadata("Useful information")

  That we can query: #context {
    query(metadata).last().value
  }
  ```
], 
[
  Metadata is invisible content: #metadata("Useful information")

  That we can query: #context {
    query(metadata).last().value
  }
]
)

#pagebreak()

#sub-title[`WASM` plugins]
#grid(
  columns: (55%, 45%),
  inset: (bottom: 25pt),
  row-gutter: 25pt,
  column-gutter: 10pt,
  align: (left, left),
[
  ```  
  #let square(n) = {
    import plugin("example.wasm"): square
    int.from-bytes(square(n.to-bytes()))
  }
  #square(15)
  ```
], 
[
  #let square(n) = {
    import plugin("example.wasm"): square
    int.from-bytes(square(n.to-bytes()))
  }
  #square(15)
]
)

#place(bottom + left, dy: -1cm, [
  ```rust
  use wasm_minimal_protocol::*;
  initiate_protocol!();
  #[wasm_func]
  pub fn square(bytes: &[u8]) -> Vec<u8> {
    // bytes conversion and squaring
  }
  ```
])
#place(bottom + left, dy: -1cm, box(fill: white.transparentize(30%), width: 17cm, height: 5cm, outset: 5pt))

#pagebreak()
#title[Find this presentation]

#import "@preview/tiaoma:0.3.0": barcode
#show: align.with(center)

```
#import "@preview/tiaoma:0.3.0": barcode
#barcode("https://github.com/ZaninDavide/typst-intro", "QRCode")
```
#barcode("https://github.com/ZaninDavide/typst-intro", "QRCode", options: (scale: 3.0))
 
#text(fill: blue, underline(link("https://github.com/ZaninDavide/typst-intro")))

