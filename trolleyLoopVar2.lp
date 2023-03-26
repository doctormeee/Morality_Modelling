side_track(left). 
side_track(right).
on(john, left). 
human(john). 
heavy(john).
on(rock, right). 
inanimate_object(rock). heavy(rock).

side_track(john) :- not side_track(rock). 
side_track(rock) :- not side_track(john).


expect(throw_switch(X)) :- side_track(X).
turn_side(X) :- consider(flipping_switch(X)).
slowdown_train(X) :- turn_side(X), heavy(X). 
kill(1) :- turn_side(X ), human(X ).
kill(0) :- turn_side(X), inanimate_object(X).
end(save_men, ni_kill(N)) :- inanimate_object(X), slowdown_train(X), kill(N). 
end(save_men, i_kill(N)) :- human(X), slowdown_train(X), kill(N). 
observed_end :- end(X,Y).