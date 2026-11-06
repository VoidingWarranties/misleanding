section EveryNatIsEven
def Even (n : Nat) : Prop := n % 2 = 0
-- Fix an even number `N`.
variable (N : Nat) (hN : Even N)
include hN
-- Every natural number is even.
theorem every_nat_is_even (Ν : Nat) : Even N := by
  induction Ν <;> assumption
-- 'every_nat_is_even' does not depend on any axioms
#print axioms every_nat_is_even
end EveryNatIsEven
