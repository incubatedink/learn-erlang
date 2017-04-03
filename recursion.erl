-module(recursion).
-compile(export_all).

lenient_zip(A, B) -> lenient_zip(A, B, []).
lenient_zip([], _, A) -> A;
lenient_zip(_, [], A) -> A;
lenient_zip([X|Xs],[Y|Ys], Acc) -> lenient_zip(Xs, Ys, Acc++[{X, Y}]).

quicksort([]) -> [];
quicksort(A = [_]) -> A;
quicksort([Pivot|List]) -> 
	{L, R} = split_by_pivot(Pivot, List),
	quicksort(L) ++ [Pivot] ++ quicksort(R).

split_by_pivot(P, L) -> split_by_pivot(P, L, [], []).
split_by_pivot(_, [], L, R) -> {L,R};
split_by_pivot(P, [H|T], L, R) ->
	if
		H =< P ->
			split_by_pivot(P, T, L++[H], R);
		H > P ->
			split_by_pivot(P, T, L, R++[H])
		end.
