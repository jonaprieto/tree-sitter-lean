-- A declaration the grammar cannot parse must not turn the quotes in the
-- docstring after it into strings that run to the end of the file.
protected theorem Nat.mul_pos :
    {n m : Nat} → (hn : LT.lt 0 n) → LT.lt 0 n
  | _, succ _, ha, _ => Nat.add_pos_right _ ha

/--
Examples:
 * `(if 3 ≤ 4 then "yes" else "no") = "yes"`
-/
-- <- comment.documentation
@[extern "lean_nat_dec_le"]
--        ^ string
instance Nat.decLe (n m : Nat) : Decidable (LE.le n m) := sorry
-- <- keyword
