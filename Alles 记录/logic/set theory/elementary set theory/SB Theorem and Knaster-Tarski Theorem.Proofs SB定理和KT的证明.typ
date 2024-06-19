#import "template.typ": *

#import "@preview/ctheorems:1.1.0": *
#show: thmrules

#set page(width: 16cm, height: 25cm, margin: 1.5cm, numbering: "1/1")

#set heading(numbering: "1.1")

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

#let remark = thmplain(
  "remark",
  "Remark",
  titlefmt: strong
)

#let appendices(body) = {
  counter(heading).update(0)
  counter("appendices").update(1)

 set heading(
    numbering: (..nums) => {
      let vals = nums.pos()
      let value = "ABCDEFGHIJ".at(vals.at(0) - 1)
      if vals.len() == 1 {
        return "APPENDIX " + value + ": "
      }
      else {
        return value + "." + nums.pos().slice(1).map(str).join(".")
      }
    }  
  );
  [#body]
}
 

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Proofs of SB Theorem and Knaster-Tarski Theorem",
  authors: (
    "Anduin",
  ),
  date: "November 30, 2023",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Proofs of SB Theorem

 #theorem()[Cantor–Schröder–Bernstein Theorem: $a lt.curly.eq  b$, $b lt.curly.eq  a => a tilde.equiv b$.] <SB_Theorem>

== Dekedind's Proof
 
 #proof[ (Dekedind) Suppose $r: a -> b$ is an injection. 

$a tilde.equiv r a n[r]$.

$b  lt.curly.eq  a $.

$b  lt.curly.eq r a n[r]$

Suppose $f:b arrow r a n[r]$ is an injection.

 Define a function $f f:omega times (b backslash r a n[r]) arrow r a n[r]$ such that:

  $f f(n, u)=f^(n+1)(u)$.

  #figure(
  image("image.png", width: 30%),
  caption: [
    $y=r a n(r)$, $x=b backslash r a n[r]$
  ],
)

  Suppose $f^(n_1+1)(u_1)=f^(n_2+1)(u_2)$. Assume that $n_1 gt.eq n_2$.

If $n_1>n_2$,


$f^(n_1-n_2)(u_1)=u_2$.

 $f^(n_1-n_2)(u_1) in r a n[r]$. $u_2 in b backslash  r a n[r]$. $r a n[r] sect b backslash r a n[r]=emptyset$. \ Contradiction.

 
 $f f$ is an injection.

 Define a function $g:b arrow r a n[r]$ such that 
 
 #emph(text((13pt))[$g(u) := cases(
   f f(0,u) "if" u in b backslash r a n[r],
   f f(n+1,z) "if" u=f f(n,z),
   u "if otherwise".,
 )$])

 $g$ is an injection.

#claim[$g$ is surjective.]
#proof[Suppose $v in r a n[r]$. 
+ If $v in.not r a n(f f)$,  \ $f f(v)=v in r a n(f f).$ 
+ If $v in r a n(f f)$, \ $f f(n,z)=v$.
- If $n=0$, \ $v=f f(0, z) in r a n(g)$.
- If $n eq.not 0$,  \ $n=m+1$. \ $v=h(m+1,z) \ =g(f f(m,z)) \ in r a n (g).$
$v in r a n(g)$.]

$g$ is an injection and surjection. 

$g$ is a bijection (from $b$ to $r a n[r]$).]

== König's Proof

Another proof of SB Theorem (König 1906):

#strong[Intution:]

Without loss of generality, we can safely assume that $a sect b=emptyset$.

  Let $x in a$
, then $x in a−g[b]$
 or $x in g[b]$
. In the first case $x$
 has no inverse image under $g$
 while in the second case it has an inverse image $g^(−1)(x)$
. In the second case, either $g^(−1)(x) in b−f[a]$
, in which case $g^(−1)(x)$
 has no inverse image under $f^(−1)$
, or $g^(−1)(x) in f[a]$
. Again, in the latter cases there exists a unique inverse image $f^(−1)(g^(−1)(x))$
, ... . We call the elements $g^(−1)(a)$
, $f^(−1)(g^(−1)(a))$
, ... the ancestors of $x$
. By similar analogy, such a description also holds for an arbitrary element $y in b$
.
 
#image("W23Y2KC8B19L7IO)ZABQ`@A.png")

 For any particular $x$
, the sequence may terminate to the left or not, at a point when $f^(−1)$
 or $g^(−1)$
 is not defined. Since $f$
 and $g$
 are injective, each $x$
 is in exactly one such sequence to within identity (if an element occurs in two sequences, all elements to the left and to the right must be the same in both. So these two sequences are identical). Therefore, the sequences form a partition of $a union b$
.

Call a sequence an a-stopper if it stops at an element of a
, or a b-stopper if it stops at an element of b
. Otherwise, call it doubly infinite.

$a$ is partitioned
 into three subsets:

$a_e$
: the set of all elements of $a$
 having an even number of ancestors,

$a_o$
: the set of all elements of $a$
 having an odd number of ancestors,

$a_i$
: the set of all elements of $a$
 having an infinite number of ancestors.

Similarly, we can partition $b$
 into such subsets. It is clear that if $x in a_e$
 then $f(x) in b_o$
, if $x in a_o$
 then $g^(−1)(x) in b_e$
, and if $x in a_i$
 then $f(x) in b_i$
. So, we can easily conclude that the restricted functions $f:a_e arrow b_o$
, $g^(−1):a_o arrow b_e$
, and $f:a_i arrow b_i$
 are bijective.

#proof[(König 1906) Suppose that $f:a arrow b$
 and $g:b arrow a$
 are both injective.
 
 Let $C_0=a backslash g[b], C_n+1=g[f[C_n]]$ for all $n gt.eq 0$.

 $C=limits(union.big)^infinity_(n=0) C_n$.

  Define a function $h$ such that 

  #emph(text((13pt))[$h(a)=cases(
   f (a) "if" a in C = a_e union a_i  ,
   g^(-1)(a) "if" a in.not C,
 )$])

 (If $a in.not C$, $a in.not C_0$. $a in g[B]$. $g$ is an injection. $g^(-1)$ exists.)

+ $h$ is surjective:

Consider any $y in b$. If $y in f[C]$, then there exists an $x in C$ such that $y=f(x)$. Thus, following the definition of $h$, we have $y=h(a)$. 

If $y in.not f[C]$, let $x=g(y)$. By the definition of $C_0$, we know that $x in.not C_0$. $y in.not f[C_n]$ for any $n$ since each $f[C_n]$ is a subset of $f[C]$. Since $g$ is an injection, $x=g(y) in.not C_(n+1)=g[f[C_n]]$. Therefore, $x in.not C$, and consequently $y=g^(-1)(x)=h(x)$.

#enum.item(2)[$h$ is injective:

Assume $h(x)=h(y)$. There are four cases: \ $x in C$ and $y in C$, $a in.not C$ and $y in.not C$, $a in C$ and $y in.not C$, $a in.not C$ and $y in C$. \ For the first two cases, $x=y$ follows from the injectivity of $f$ and $g^(-1)$. \ For the third case, \ $f(x)=g^(-1)(y)=>g(f(x))=g(g^(-1)(y)) => g(f(x))=b$. $y in C$ by the premise that $a in C$ and $C$ is closed under $g compose f$), which leads to a contradition. \
A similar argument applies to the last case.]]

#example[
  + Bijective function from $[0,1] arrow [0,1)$

  Let $f:[0,1] arrow [0,1) $ with $f(x)=x slash 2$; and $g: [0,1) arrow [0,1]$ with $g(x)=x$.

  In line with that procedure $C_0={1}, C_k={2^(-k)},C=limits(union.big)^infinity_(k=1)C_k={1,1/2,1/4,1/8,dots.c}$

  Then $h(x)=cases(x/2 "for" ,

)$

  #emph(text((13pt))[$h(x)=cases(
   x/2 "for" x in C,
   x "for" x in [0,1] backslash C,
 )$]) is a bijective function form $[0,1] arrow [0,1)$.

  #enum.item(2)[Bijective function from $[0,2) arrow [0,1)^2$]

  #enum(numbering: "2.1.")[]
   
  Let $f:[0,2) arrow [0,1)^2]$ with $f(x)=(x slash 2, 0)$;

  Then for $(x,y) in [0,1)^2$ one can use the expansions $x=limits(sum)^infinity_k a_k dot.c 10^(-k)$ and $y=limits(sum)^infinity_k b_k dot.c 10^(-k)$ with $a_k,b_k in {0,1,dots,9}$ and now one can set $g(x,y)=limits(sum)^infinity_k (a_k+b_k) dot.c 10^(-2k)$. E.g., $g(1/2,2/3)=0.dot(3)dot(6)=12/33$.

  In this case $C_0=[1,2), C_1=g(f(C_0))=g({(x,0) bar.v x in [1/2,1)})$.

  #enum(numbering: "2.1.",enum.item(2)[By using the (already bijective) function definition $g_2(x,y)=2 dot.c limits(sum)^infinity_k (a_k+b_k) dot.c 10^(-2k)$, $C$ would be the empty set and $h(x)=g^(-1)(x)$ for all $x$.])
  
  In general Konig's proof is nonconstructive,  and SB theorem is not valid constructively. ]

== A Proof using Knaster Fixed Point Theorem, and Banach's Proof

Another proof, using Knaster Fixed Point Theorem:

#proof[Suppose that $f:a arrow b$
 and $g:b arrow a$
 are both injective. Define $phi :P(a) arrow P(a)$
 on the power set of $A$
 by $phi (X)=a−g[b−f[X]]$

 By applying the functions and taking complements twice, $X subset
Y arrow phi(X) subset.eq phi(Y)$.

So $phi$ is monotone (order-preserving) on the power set of A. ($(P(A),subset.eq)$ is a complete lattice.)

By Knaster Fixed Point Theorem (@Knaster_Fix_Point) there is a fixed point $phi(X)=X$. 

It follows that the function $h=(f harpoon.tr X) union (g^(−1) harpoon.tr (a−X))$ is a bijection between $A$ and $B$. (Because $g$ is an injection, $g^(-1)$ exists.)
]

#image("WSZNZS]@N8``J16KHLY@@TA.png", width: 50%)

\

#remark[The function $phi$ arising in the proof of SB Theorem from Knaster Fixed Point Theorem is continuous,

since if $X = union.big_i X_i$, then $f[X]=union.big_i f[X_i]$ \
and so $B-f[X]=sect.big_i B - f[X_i]$, and thus \ 
$g[B-f[X]]= sect.big_i g [B-f[X_i]]$, because $g$ is injective, and hence \
$phi(X)=A-g[B-f[X]]=A-sect.big_i g[B-f[X_i]] =$ \ 
$union.big_i (A-g[B-f[X_i]])=union.big_i phi(X_i)$. \
In short, $phi(union.big_i X_i)=union.big_i phi(X_i)$.]

The above proof comes from Banach (1924). Its original form uses the following theorem/lemma:

#lemma("Banach 1924")[Banach's Partition Theorem: Suppose $f:X arrow Y$ and $g: Y arrow X$ are functions, then there are sets $A,B$ such that 

$X=A union tilde(A), Y=B union tilde(B)$

$X = A sect tilde(A) = emptyset, B sect tilde(B) = emptyset$, and

$f[A]=B,g[tilde(B)]=tilde(A)$, or equivalently,

$g[B-f[C]]=A-C$.
] 

As the above proof shows, it can be proved by Knaster Fixed Point Theorem. 

#proof[Let $E subset.eq X$,\
$Gamma = {E bar.v E sect g[Y backslash f[E]]=emptyset}$.

$Gamma$ is not empty because $emptyset in Gamma$.

Let $A=union.big_(E in Gamma) E$. $A in Gamma$.

$A supset.eq E$. $E sect g[Y backslash f[A]]=emptyset$.

$A sect g[Y backslash f[A]]= union.big_(E in Gamma) (E sect g[Y backslash f[A]]) =emptyset$.

$A in Gamma$. And $A$ is the greatest element in $Gamma$.

Let $B=f[A], tilde(B)= Y backslash B, tilde(A)= g[tilde(B)]$.

$Y=B union tilde(B), B sect tilde(B)=emptyset, A sect tilde(A)=emptyset$.

Suppose $A union tilde(A) eq.not X$, then there exists $x_0 in X backslash (A union tilde(A))$. Let $A_0=A union{x}$. $A_0 in Gamma$, contradicting the assertion that $A$ is the greatest element in $Gamma$.]

#pagebreak()

= Proof of Knaster-Tarski Theorem

#definition("Complete Lattice")[A * complete lattice * is a partially ordered set in which all subsets have both a supremum (join) and an infimum (meet)]

#theorem("Tarski 1955")[Knaster-Tarski Fixed Point Theorem: If $phi:L arrow L$ is a order-preserving function on a complete lattice $L$, then the set of fixed points $P$ of $phi$ in $L$ forms a complete lattice under $lt.eq$ .]

#proof[

#lemma[If $phi:L arrow L$ is a order-preserving function on a complete lattice $L$, then $d_1= and.big {e bar.v phi (e) lt.eq e}$ is the  least fixpoint of $phi$ (under $lt.eq$) , and $d_2= or.big {e bar.v phi (e) gt.eq e}$  is the greatest fixpoint of $phi$. ]<Knaster_Tarski_Lemma>

#proof[#enum(numbering: "1.1)")[P has a least element:]

$phi(e) lt.eq e$ implies $d_1 lt.eq e$, \
which implies $phi(d_1) lt.eq phi(e) lt.eq e$. \ So $phi(d_1) lt.eq d_1$. \ 
Consequently $phi (phi(d_1)) lt.eq phi(d_1)$, \
and so $phi(d_1)$ is one of $e$'s. \
$d_1 lt.eq phi(d_1)$. \
Hence $phi(d_1)=d_1$.

Because every fixed point is in $D={e bar.v phi(e) lt.eq e}$ we have that $d_1$ is the greatest fixpoint of $phi$.

#enum(numbering: "1.1)", enum.item(2)[P has a greatest element:]) 

$phi$ is monotone on the dual lattice $angle.l L^(o p), gt.eq angle.r$. As we have proved,  its least fixpoint exists. It is the greatest fixpoint of $L$.]



#enum(numbering: "1.1)", enum.item(3)[P is a complete lattice:])

Let $1_L= or.big L$, $S subset.eq P$ and $s= or.big S$.

We have that: 

$forall a in S, a lt.eq s$.

So:

$a=phi(a) lt.eq phi(s)$.

Thus $phi(s)$ is an upper bound of $S$.

So by the definition of supremum, $s lt.eq phi(s)$.

It follows that $phi$ is a function on $[s, 1_L]$. (Let $x in [s, 1_L]$. $phi(x) in [s, 1_L].$) 

Closed Interval in Complete Lattice is Complete Lattice. 

By @Knaster_Tarski_Lemma, $phi$ has a smallest fixed point in $[s, 1_L]$.

Thus $S$  has a supremum in $P$. 

]

#corollary[(Knaster 1928) The case that L is the power set lattice.]<Knaster_Fix_Point>

#pagebreak()

#appendices[= A History of SB theorem]

#v(10pt)

1887 Cantor published the theorem without proof.

#v(10pt)

1887 Dedekind proved the theorem but did not publish his proof. Ernst Zermelo discovered Dedekind's proof and in 1908 he published his own proof based on Dedekind's paper (cf., John Burgess, Set Theory).

#v(10pt)

1895 Cantor stated the theorem as an easy consequence of the linear order of cardinal numbers. However, he could not prove the latter theorem.

#v(10pt)

1896 Schröder announced a proof.

#v(10pt)

1897 Bernstein, a 19-year-old student in Cantor's Seminar, presented his proof.

#v(10pt)

1897 Independently, Schröder found a proof.

#v(10pt)


1898 Bernstein's proof was published.

#v(10pt)

1898 Schröder published his proof which, however, was shown to be faulty by Alwin Reinhold Korselt in 1902, but Korselt's paper was published only in 1911.



Wiki. 2023.11.30
