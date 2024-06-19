#import "template.typ": *

#import "@preview/ctheorems:1.1.0": *
#show: thmrules

#set page(width: 16cm, height: auto, margin: 1.5cm)

#set heading(numbering: "1.1.")

#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))

#let lemma = thmbox("lemma", "Lemma", fill: color.mix(red, blue, white))

#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong
)

#let claim = thmplain(
  "claim",
  "Claim",
  base: "theorem",
  titlefmt: strong
)

#let theorem_red = thmbox("theorem", "Theorem", fill: color.mix(red, blue, white))

#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let example = thmplain("example", "Example").with(numbering: none)

#let proof = thmplain(
  "proof",
  "Proof",
  base: "theorem",
  bodyfmt: body => [#body #h(1fr) $square$]
).with(numbering: none)

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Proof of Recursion Theorem",
  authors: (
    "Anduin",
  ),
  date: "November 28, 2023",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Introduction
 
 #theorem("Dedekind 1888")[Recursion theorem: For every set $a$, every $u in a$ and every function $h:omega times a arrow a$, there exists a unique function $f:w arrow a$ such that 
 + $f(0)=u$
 + $f(n+1)=h(n,f(n))$] <Recursion_theorem>

 #corollary[Given a set $X$, $a in X$ and a function $f:X arrow X$, there is a unique function $F: NN arrow X$ such that
 + $F(0)=a$
 + $F(n+1)=f(F(n))$]

  #example[+ the function $f:n arrow n+2$ #h(0.5em) ($f(0)=2$)
+ define addition by the successor function
+ define multiplication, exponentiation, factorial, etc.]
 
 #proof[ If a relation $r subset.eq omega times a$ satisfies: #enum(numbering: "1.1)")[$r(0)=u$][$r(n+1)=h'$]
 we call $r$ 'recursive'. Let $S$ be ${r bar.v r  "is 'recursive'"}$. Let $f$ be $sect.big S$.
 #claim[$f$ is 'recursive'.]
  $S$ is not empty. ($omega times a in S$.)
 #proof[#enum(numbering: "(1.1)")[$angle.l 0,u angle.r in sect.big S = f$.][If $angle.l n,v angle.r in f$, $angle.l n+1,h(n,v) angle.r in f$.]]
 #claim[$f$ is a function.]
 #proof[#enum(numbering: "(1.1)")[$angle.l 0,u angle.r in f$. Suppose $angle.l 0,b angle.r in f$ and $b eq.not u$. $R: f backslash angle.l 0,b angle.r$ is 'recursive'. Contradiction.][Assume $angle.l n,v angle.r in f$ and $v$ is unique. $angle.l n+1, h(n,v) angle.r in f$. Suppose $angle.l n+1,b' angle.r in f$ and $b' eq.not h(n,v)$. $R': f slash angle.l n+1,b' angle.r$ is 'recursive'. Contradiction.]]
 #claim[$f$ is unique.]
 #proof[Suppose there is a function $g:omega arrow a$ such that
 + $g(0)=u$
 + $g(n+1)=h(n,g(n))$.
 $I = {n in omega bar.v g(n)=f(n)}$ is the inductive set.
 #enum(numbering: "1.1)")[$0 in I$.][Assume $n in I$. $g(n+1)= h(n,g(n))=h(n,f(n))=f(n+1)$. $n+1 in I$.] 
 $f=g$.]]

 
 #theorem_red[]
 #lemma[]


== In this paper
#lorem(20)

=== Contributions
#lorem(40)

= Related Work
#lorem(500)
