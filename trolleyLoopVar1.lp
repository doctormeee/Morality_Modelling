side_track(left). 
side_track(right).
on(john, left). 
human(john). 
heavy(john).
on(rock, right). 
inanimate_object(rock). heavy(rock).

expect(throw_switch(Z)) :- side_track(Z).
turn_side(Z) :- consider(throw_switch(Z)).
slowdown_train(X) :- turn_side(Z), on(X, Z), heavy(X).
kill(1) :- turn_side(Z ), on(X, Z), human(X).
kill(0) :- turn_side(Z), on(X, Z), inanimate_object(X).
end(save_men, ni_kill(N)) :- inanimate_object(X), slowdown_train(X), kill(N). 
end(save_men, i_kill(N)) :- human(X), slowdown_train(X), kill(N).
observed_end :- end(X,Y).
