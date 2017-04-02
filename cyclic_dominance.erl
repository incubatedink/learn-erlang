%% usage: do the following in console:
%%       1. cd("{directory of this file}").
%%       2. c(cyclic_dominance.erl).
%%       3. cyclic_dominance:compare_choices_RPS(rock, scissors).
%%       4. cyclic_dominance:compare_choices_RPS(cyclic_dominance:yield_choice_RPS(1), cyclic_dominance:yield_choice_RPS(3)).

-module(cyclic_dominance). %% Declare module. Cyclic Dominance is a customizable version of Rock Paper Scissors.
-compile(export_all). %% TODO remove and add actual exports.

%% valid inputs: 1, 2, 3
yield_choice_RPS(Number) ->
	Choice = if Number =:= 1 -> rock;
			Number =:= 2 -> scissors;
			Number =:= 3 -> paper
		end,
	Choice.

%% valid inputs for each choice: rock, paper, scissors
compare_choices_RPS(ChoiceA, ChoiceA) -> tie;
compare_choices_RPS(ChoiceA, ChoiceB) ->
	case {ChoiceA, ChoiceB} of
		{rock, scissors} -> win;
		{scissors, rock} -> lose;
		{paper, rock} -> win;
		{rock, paper} -> lose;
		{scissors, paper} -> win;
		{paper, scissors} -> lose
	end.
