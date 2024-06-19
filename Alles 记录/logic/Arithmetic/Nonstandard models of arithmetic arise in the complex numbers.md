
Nonstandard models of arithmetic arise in the complex numbers

Theorem. Every model of PA of size at most continuum arises as a sub-semiring of the field of complex numbers $\langle\mathbb{C},+,\cdot\rangle$.

Proof. Suppose that $M$ is a model of PA of size at most continuum. Inside $M$, we may form M’s version of the algebraic numbers $A=\bar{\mathbb{Q}}^M$, the field that $M$ thinks is the algebraic closure of its version of the rationals. (Starting with any of these models you can define integers in the usual way (as differences of natural numbers), and then rational numbers (as ratios of integers). So, there are lots of nonstandard versions of the rational numbers. Any one of these will be a field.) So $A$ is an algebraically closed field of characteristic zero, which has an elementary extension to such a field of size continuum. (Since the theory of algebraically closed fields of characteristic zero admits elimination of quantifiers, every subfield is an elementary submodel, and every field extension among such fields is an elementary extension.) Since the theory of algebraically closed fields of characteristic zero is categorical in all uncountable powers, it follows that A is isomorphic to a submodel (algebraically closed subfield) of $C$. (But in fact, one needs only subfield for the argument to work.) Since $A$ itself is isomorphic to a substructure of its rationals $\bar{\mathbb{Q}}^M$, which sit inside , it follows that is isomorphic to a substructure of $\mathbb C$, as claimed. QED

Essentially the same argument shows the following:

Theorem. If $k$ is an uncountable algebraically closed field of characteristic zero, then every model of arithmetic PA of size at most the cardinality of $M\models$PA embeds into $k$.

Theorem. The complex numbers $\mathbb C$ can be viewed as a nonstandard version of the algebraic numbers $\bar{\mathbb{Q}}^M$ inside a nonstandard model $M$ of PA. Indeed, for every uncountable algebraically closed field $F$ of characteristic zero and every model of arithmetic $M\models$PA of the same cardinality, the field $F$ is isomorphic to the nonstandard algebraic numbers $\bar{\mathbb{Q}}^M$ as $M$ sees them.

Proof. Fix any such field $F$, such as the complex numbers themselves, and consider any nonstandard model of arithmetic $M$ of the same cardinality. The field $\bar{\mathbb{Q}}^M$, which is $M$’s nonstandard version of the algebraic numbers, is an algebraically closed field of characteristic zero and same uncountable size as $F$. By categoricity, these fields are isomorphic. 

J. Mlček. “A representation of models of Peano arithmetic”. Comment.
Math. Univ. Carolinae 14 (1973), pp. 553–558. issn: 0010-2628. Czech Digital Mathematics Library:10338.dmlcz/105508, EUdml:16580
Abstract: The following theorem is proved: algebraically Closed field of char. 0 is saturated if and only if every countable model of Peano arithmetic can be embedded into it.Introduction. In this paper, we shall present some results on embeddability of countable models of Peano arithmetic P into models of algebraically closed fields of characteristics 0 .
This set-theoretical result should be compared with(and was inspired by) a recent result of Vopenka saying that (under reasonable assumptions on existence of semisets) each countable model of P can be embedded into the field of real numbers by a semi-set embedding.
https://dml.cz/bitstream/handle/10338.dmlcz/105508/CommentatMathUnivCarol_014-1973-3_11.pdf

Harvey Friedman's 1992 JSL article with Robert K. Meyer contains some related material and results, available via JStor at http://www.jstor.org/tc/accept?origin=/stable/pdf/2275433.pdf?refreqid=excelsior%3A7e994c8b2e5e010c6337380cea6e2860. He does not appear to cite the 1973 Mlček paper. ("see section 2, and footnote 6, my results going back to 1985.")

This fact was noticed by Alfred Dolich at a pub after a logic seminar at the City University of New York on March 2, 2018. 

https://jdh.hamkins.org/nonstandard-models-of-arithmetic-arise-in-the-complex-numbers/