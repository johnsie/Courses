package main

import "fmt"

type deck []string

func newDeck() deck {

	cards := deck{}
	cardSuits := []string{"Spades", "Diamonds", "Hearts"}
	cardValues := []string{"Ace", "Two", "Three", "Four"}

	//use underscore if you're never going to use the variable for anything else
	for _, suit := range cardSuits {
		for _, value := range cardValues {
			cards = append(cards, value+" of "+suit)

		}

	}

	return cards

} //end function newDeck

//convention to use the first letter of the type
func (d deck) print() {

	for i, card := range d {

		fmt.Println(i, card)
	}

} //end func

func deal(d deck, handSize int) (deck, deck) {

	return d[:handSize], d[handSize:]

}
