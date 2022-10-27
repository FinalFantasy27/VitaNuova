
Completeness Theorem: If a axiomatizable theory T is inconsistent, then there are finitely many of its axioms have no model.

suppose #T is the set of the godel codings of the axioms of T

Consider M a model of ZFC, then $M \models (\exists f : \omega^M \rightarrow \omega^M)(\forall x \in \omega^M)f(x)\in\#T \land (\forall y \in \omega^M)y\in \#T \rightarrow (\exists z \in \omega^M)f(z)=y$

"There exists a enumeration function f of the axioms of T"

and $M \models (\exists k \in \omega^M)\lnot Con(\underset{0 \le i \le k}{\bigwedge}f(i)$

exercise: applying this to ZFC + \lnot Con ZFC