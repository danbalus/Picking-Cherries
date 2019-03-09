LAB=lab



#problem
./fd $LAB/problem.pddl $LAB/problem_01.pddl \
--heuristic "h=ff()" \
--search "astar(h)"

#problem2
#./fd $LAB/problem.pddl $LAB/problem_01.pddl \
#--heuristic "h=ff()" \
#--search "astar(weight(h, 2))"


#problem23
#./fd $LAB/problem.pddl $LAB/problem_01.pddl \
#--heuristic "h=cg()" \
#--search "eager_greedy(h,preferred=h)"

#problem4
#./fd $LAB/problem.pddl $LAB/problem_01.pddl \
#--heuristic "h=cg()" \
#--search "astar(h)"


#problem5
#./fd $LAB/problem.pddl $LAB/problem_01.pddl \
#--heuristic "h=ff()" \
#--search "eager_greedy(h,preferred=h)"

#problem6
#./fd $LAB/problem.pddl $LAB/problem_01.pddl \
#--heuristic "h=ff()" \
#--search "astar(weight(h, 1))"

