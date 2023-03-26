stand_near(john).
human(john).
heavy(john).

expect(shove(X)) :- stand_near(X).

on_track(X) :- consider(shove(X)).

stop_train(X) :- on_track(X), heavy(X).

kill(1) :- human(X), on_track(X).
kill(0) :- inanimate_object(X), on_track(X).


end(save_men, ni_kill(N)) :- inanimate_object(X), stop_train(X), kill(N).

end(save_men, i_kill(N)) :- human(X), stop_train(X), kill(N).

observed_end :- end(X,Y).

