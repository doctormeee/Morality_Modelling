side_track(left). 
side_track(right).
on(john, left). 
human(john). 
heavy(john).
on(rock, right). 
inanimate_object(rock). heavy(rock).

man_sidetrack :- not empty_sidetrack. 
empty_sidetrack :- not man_sidetrack.

expect(watch). 

train_straight :- consider(watch). 
end(die(5)) :- train_straight. 
observed_end :- end(X).

expect(throw_switch) :-  side_track.
turn_side :-  consider(throw_switch). 
end(save_men, standing_hitting) :- man_sidetrack, turn_side.

expect(shoving) :-  empty_sidetrack, consider(throw_switch).

freely_goto_maintrack :- empty_sidetrack, turn_side, not consider(shoving). 

end (die(5)) :- freely_goto_maintrack.

place_man_sidetrack :- consider(shoving).

end(save_men, placing_hitting) :- place_man_sidetrack, turn_side.

observed_end :- end(X,Y).
