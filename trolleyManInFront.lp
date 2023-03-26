side_track.
on_side(rock). 
inanimate_object(rock). 
heavy(rock). 
in_front_of(rock, john). 
human(john).


expect(throw_switch) :- side_track.

turn_side :- consider(throw_switch).

kill(1) :- turn_side, on_side(X), in_front_of (X, Y), human(Y).

slowdown_train(X ) :- turn_side, on_side(X), heavy(X).

end(save_men, ni_kill(N)) :- inanimate_object(X), slowdown_train(X), kill(N). 

end(save_men, i_kill(N)) :- human(X), slowdown_train(X), kill(N).

observed_end :- end(X,Y).

