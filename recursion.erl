-module(recursion).
-compile(export_all).

lenient_zip(A, B) -> lenient_zip(A, B, []).
lenient_zip([], _, A) -> A;
lenient_zip(_, [], A) -> A;
lenient_zip([X|Xs],[Y|Ys], Acc) -> lenient_zip(Xs, Ys, Acc++[{X, Y}]).
