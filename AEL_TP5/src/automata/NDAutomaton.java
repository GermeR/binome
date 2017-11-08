package automata;

import java.util.Set;

/**
 * 
 * Implémentation d'un automate non déterministe. Version incomplète.
 * 
 * @author Bruno.Bogaert (at) univ-lille1.fr
 *
 */
public class NDAutomaton extends AbstractNDAutomaton implements Recognizer, AutomatonBuilder {

	/**
	 * Fake implementation : always return false.
	 */
	public boolean accept(String word) {
		boolean ret = false;
		Set<State> rez = new PrintSet<State>();
		if (word.length() > 0) {
			rez = acceptRec(initialStates, word);
		} else {
			rez = initialStates;
		}
		for (State st : rez) {
			if (acceptingStates.contains(st))
				;
			ret = true;
		}
		return ret;
	}

	private Set<State> acceptRec(Set<State> states, String word) {
		if (states.isEmpty() || word.length() == 0) {
			return states;
		}
		Set<State> rez = new PrintSet<>();
		rez = getTransitionSet(states, word.charAt(0));
		return acceptRec(rez, word.substring(1));
	}

	public Set<State> getTransitionSet(Set<State> fromSet, char letter) {
		Set<State> rez = new PrintSet<State>();

		for (State st : fromSet) {
			rez.addAll(getTransitionSet(st, letter));
		}
		return rez;
	}

}
