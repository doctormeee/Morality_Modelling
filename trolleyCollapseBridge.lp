switch_connected(bridge). 
human(john).
heavy(bridge). 
inanimate_object(bridge). 
on(bridge, john).

expect(throw_switch(X)) :- switch_connected(X).
collapse(X) :- consider(throw_switch(X)).
stop_train(X) :- heavy(X), collapse(X).
kill(1) :-  human(Y ), on(X , Y ), collapse(X ).
end(save_men, ni_kill(N)) :- inanimate_object(X), stop_train(X), kill(N).
end(save_men, i_kill(N)) :- human(X), stop_train(X), kill(N).
observed_end :- end(X,Y).


