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


section AllHorsesSameColor
inductive Color
  | bay | black | chestnut | gray
structure Horse where
  color : Color
-- Fix a herd of horses that all have the same color.
variable (horses : List Horse)
  (hsame : ∀ a ∈ horses, ∀ b ∈ horses, a.color = b.color)
include hsame
-- In every herd, all horses have the same color.
theorem all_horses_same_color (hοrses : List Horse) :
    ∀ a ∈ horses, ∀ b ∈ horses, a.color = b.color := by
  induction hοrses <;> assumption
-- 'all_horses_same_color' does not depend on any axioms
#print axioms all_horses_same_color
end AllHorsesSameColor


section XInListWithoutX
def natsLessThan3 : List Nat := [
  0,
  1,
  2,
  /- natural numbers less than ⁧-/ 3
]
-- The list of natural numbers less than 3 includes 3.
theorem three_mem : natsLessThan3.contains 3 = true := rfl
-- 'three_mem' does not depend on any axioms
#print axioms three_mem
end XInListWithoutX
