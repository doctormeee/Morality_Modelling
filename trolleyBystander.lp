side_track.

on_side(john).
human(john).
expect(watch).

train_straight :- consider(watch).
end(die(5)) :- train_straight.

observed_end :- end(X).

expect(throw_switch) :- side_track.

turn_side :- consider(throw_switch).

kill(1) :- human(X), on_side(X), turn_side.

end(save_men, ni_kill(N)) :- turn_side, kill(N).

observed_end :- end(X, Y).

