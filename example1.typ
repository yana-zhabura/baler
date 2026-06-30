#import "lib.typ": *
//#set page(width: 1000pt, height: auto, margin: 1em)
#show heading.where(depth:3) : it => {align(center, it)}

#let light-green = rgb(230, 255, 230)
#let light-yellow = rgb(255, 255, 220)
#let light-red = rgb(255, 230, 230)
#let table-content = (lorem(10), lorem(20), lorem(5), lorem(40),
  lorem(5), lorem(9), circle(width: 100%), lorem(20))
#let grid-content = (lorem(40), lorem(10), lorem(3), lorem(12), lorem(20), lorem(5))

#grid(columns: (1fr, 1fr),
gutter: 1em,
[
  === Balanced Table
], [
  === Typst Table
], 
[
  ```typst
  #baled-table(
    columns: 4, 
    fill: light-green, 
    ..table-content
  )```
],
[
  ```typst
  #table(
    columns: 4, 
    fill: light-red, 
    ..table-content
  )```
],
[
  #baled-table(columns: 4, 
  fill: light-green,
  ..table-content
  )
],
[
  #table(columns: 4, 
  fill: light-red,
  ..table-content
  )
]
)