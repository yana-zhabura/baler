#import "lib.typ": *
#let light-green = rgb(230, 255, 230)
#let light-yellow = rgb(255, 255, 220)
#let light-red = rgb(255, 230, 230)

#text(size: 5em, [Balanced Grid Tests])
#outline()
#show heading.where(level: 1): it => {
  pagebreak()
  block(it)
}

= Basic Test
== Normal Grid
#grid(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  fill: light-red,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)
== Balanced Grid
#baled-grid(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

== Normal Table
#table(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  fill: light-red,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)
== Balanced Table
#baled-table(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

= Grid Named Arguments Don't Break Balanced Grid
#baled-grid(
  columns: (auto, auto, auto, auto),
  stroke: 3pt,
  inset: 15pt,
  align: center,
  gutter: 10pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

= Balanced Grid Handles Non-Text Content
#baled-grid(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  inset: 5pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(10)], [#baled-grid(columns:2, stroke: green, [#lorem(3)], [#lorem(10)], [#lorem(3)], [#lorem(5)])], [#lorem(5)], [#lorem(10)], [#lorem(10)], 
)

#baled-grid(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  inset: 5pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(10)], lorem(30), [#lorem(5)], [#lorem(10)], [#lorem(10)], 
)

#baled-grid(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  inset: 5pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(10)], circle(width: 100%), [#lorem(5)], [#lorem(10)], [#lorem(10)], 
)

= Balanced Grid Handles Identical Columns
#baled-grid(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  inset: 5pt,
  fill: light-green,
  [#lorem(30)], [#lorem(30)], [#lorem(10)], [#lorem(30)], [#lorem(30)], [#lorem(30)], [#lorem(10)], [#lorem(30)], 
)

= Balanced Grid Handles Different Number of Rows and Columns
== Default ```typst columns``` Value
#baled-grid(
  stroke: 1pt,
  inset: 5pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

== One column
#baled-grid(
  columns: (auto),
  stroke: 1pt,
  inset: 5pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

== Two columns
#baled-grid(
  columns: (auto, auto),
  stroke: 1pt,
  inset: 5pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

= Balanced Grid Accepts ```typst #grid.*```
#baled-grid(
  columns: (auto, auto),
  stroke: none,
  fill: light-green,
  grid.header(lorem(10), lorem(35)),
  grid.hline(),
  lorem(10), grid.vline(), lorem(45),
  lorem(15), lorem(55),
)

= Balanced Table Accepts ```typst #table.*```

#baled-table(
  columns: 4,
  align: horizon,
  fill: light-green,
  table.header([], [*#lorem(1)*], [*#lorem(2)*], [*#lorem(3)*]),
  table.vline(x:1, stroke:olive+3pt),
  table.hline(y:1, stroke:olive+3pt),
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], 
  [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
  table.footer([], [*#lorem(2)*], [*#lorem(2)*], [*#lorem(3)*]),
)

= Balanced Grid Accepts Column Count
#baled-grid(
  columns: 4,
  stroke: 1pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

= Balanced Grid Accepts Minimum and Maximum Values
#baled-grid(
  columns: ((10pt, 100pt), (30pt, 100pt), (50pt, 50pt), (100pt, 200pt)),
  stroke: 1pt,
  fill: light-yellow,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

= Balanced Grid Accepts em Values
#baled-grid(
  columns: ((1em, 10em), (3em, 10em), (5em, 5em), (10em, 20em)),
  stroke: 1pt,
  fill: light-yellow,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

= Balanced Grid Accepts Exact Values
#baled-grid(
  columns: (50pt, 60pt, 70pt, 100pt),
  stroke: 1pt,
  fill: light-yellow,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

= Balanced Grid Accepts a Mix of Inputs
#baled-grid(
  columns: ((10pt, 100pt), 70pt, auto, auto),
  stroke: 1pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)

#set page(flipped: true)

= Balanced Grid Handles Different Paper Sizes
== Normal Grid
#grid(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  inset: 5pt,
  fill: light-red,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)
== Balanced Grid
#baled-grid(
  columns: (auto, auto, auto, auto),
  stroke: 1pt,
  inset: 5pt,
  fill: light-green,
  [#lorem(30)], [#lorem(10)], [#lorem(10)], [#lorem(100)], [#lorem(10)], [#lorem(5)], [#lorem(20)], [#lorem(70)], 
)