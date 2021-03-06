Inductive bool : Type :=
  | true : bool
  | false : bool.

Inductive nat : Type :=
  | O : nat
  | S : nat -> nat.

Fixpoint plus (n : nat) (m : nat) : nat :=
  match n with
  | O => m
  | S n' => S (plus n' m)
end.

Compute plus (S O) (S (S (O))).

Theorem plus_n_0 : forall (n : nat), plus n O = n.
Proof.
Abort.

Theorem plus_n_Sm : forall n m: nat, S (plus n m) = plus n (S m).
Proof.
Abort.

Theorem plus_comm : forall (n m : nat), plus n m = plus m n.
Proof.
Abort.

Theorem proof : forall (A B C : Type), (B -> C) -> (A -> B) -> A -> C.
Proof.
Abort.

Theorem proof_with_lambda : forall (A B C : Type), (B -> C) -> (A -> B) -> A -> C.
Abort.
