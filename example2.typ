#import "lib.typ": *
//#set page(width: 1000pt, height: auto, margin: 1em)
#show heading.where(depth:3) : it => {align(center, it)}

#let light-green = rgb(230, 255, 230)
#let light-yellow = rgb(255, 255, 220)
#let light-red = rgb(255, 230, 230)
#let table-content = (lorem(10), lorem(20), lorem(5), lorem(40),
  lorem(5), lorem(9), circle(width: 100%), lorem(20))
#let grid-content = (lorem(40), lorem(10), lorem(3), lorem(12), lorem(30), lorem(5))

#grid(columns: (1fr, 1fr, 1fr),
gutter: 1em,
[
  === Balanced Grid
],
[
  === Balanced Grid with Size Limits
],
[
  === Typst Grid
],
[
  ```typst
  #baled-grid(
    columns: (auto, auto, auto), 
    fill: light-green, 
    
    ..grid-content
  )```
],
[
  ```typst
  #baled-grid(
    columns: (70pt, auto, (30pt, 100pt)), 
    fill: (x,y) => if x == 1 {light-green}
      else {light-yellow},
    ..grid-content
  )```
],
[
  ```typst
  #grid(
    columns: (70pt, auto, auto), 
    fill: light-red, 
    
    ..grid-content
  )```
],
[
  #baled-grid(columns: (auto, auto, auto), 
  fill: light-green,
  stroke: 1pt,
  ..grid-content
  )
],
[
  #baled-grid(columns: (70pt, auto, (30pt, 100pt)), 
  fill: (x,y) => if x == 1 {light-green} else {light-yellow},
  stroke: 1pt,
  ..grid-content
  )
],
[
  #grid(columns: (70pt, auto, auto), 
  fill: light-red,
  stroke: 1pt,
  ..grid-content
  )
],
)
