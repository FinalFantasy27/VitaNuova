


--induction c with d hd, intros q, rw mul_zero at q, rw mul_eq_zero_iff at q, cases q with n, exfalso, apply ha n, exact q, intros q, cases b, rw mul_zero at q, symmetry at q, rw mul_eq_zero_iff at q, symmetry, cases q with n, exfalso, apply ha n, exact q, repeat {rw succ_eq_add_one}, rw add_right_cancel_iff, apply hd,--在这一步时就可以清楚地看到不加revert b会怎么样了--repeat {rw mul_succ at q}, rw add_right_cancel_iff at q, exact q, http://wwwf.imperial.ac.uk/~buzzard/xena/natural_number_game/?world=9&level=4--

lemma ex_dsadsa {a : nat}  : a = a + 0 :=
begin
induction a with hd,
rw nat.add_zero,
rw nat.succ_eq_add_one,
end

lemma pp {a : nat} : a = a + 0 :=
begin
rw ex_dsadsa a,
end
--问题大概处在 for all 上--

theorem e {c b : nat} : c + b = c → b = 0 :=
begin
intro h,
rw ex_dsadsa c at h,
rw ← nat_add_zero c at h,
rw ← nat_add_zero c at h,

end

variable X : Type

theorem subset_iff_union_eq (A : set X) (B : set X) : A ⊆ B ↔ B = A ∪ B := 
begin
rw subset_iff, --这里引理没有--
rw ext_iff,
apply forall_congr, ----
intro x,
rw mem_union_iff,
tauto!
end

#eval 2+2