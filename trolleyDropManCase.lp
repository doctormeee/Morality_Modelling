switch_connected(bridge).
human(john).
on(bridge, john). heavy(john).

expect(throw_switch(Z)) :- switch_connected(Z). 

drop(X) :- consider(throw_switch(Z)), on(Z, X).

kill(1) :- human(X), drop(X).

stop_train(X ) :- heavy(X), drop(X).
end(save_men, ni_kill(N)) :- inanimate_object(X), stop_train(X), kill(N). 
end(save_men, i_kill(N)) :- human(X), stop_train(X), kill(N).

observed_end :- end(X,Y).