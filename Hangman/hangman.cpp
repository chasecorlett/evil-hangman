/*
    hangman.cpp
        
    Method implementations for the hangman class.
 
    Author: Chase Corlett

*/

#include "hangman.h"
#include <fstream>
#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

// constructor
hangman::hangman() {
    cout << "Reading dictionary...";
    ifstream dictionary("dictionary.txt");
    if (!dictionary) {
        cerr << "Could not open 'dictionary.txt' for reading." << endl;
    }
    else {
        cout << "Successful! Initializing game." << endl;
    }
    string word;
    while (!dictionary.eof()) {
        getline(dictionary, word);
        dictVec.push_back(word);
    }
    hidWord.clear();
    disWord.clear();
    numGuesses = 0;
    charCount = 0;
    dictCharCount = 0;
    count1 = 0;
    count2 = 0;
}


// start_new_game()
//
// Setup a new game of hangman.
void hangman::start_new_game(int num_guesses) {
    guessedChar.clear();
    hidWord.clear();
    disWord.clear();
    numGuesses = num_guesses;
    cout << "Word Size:";
    cin >> wordSize;
    for (int i=0; i<wordSize; i++) {
        disWord += '-';
    }
    for (int i=0; i<dictVec.size(); i++) {
        if (dictVec[i].size() == wordSize) {
            newDict.push_back(dictVec[i]);
        }
    }
}


// process_guess()
//
// Process a player's guess - should return true/false depending on whether
// or not the guess was in the hidden word.  If the guess is incorrect, the
// remaining guess count is decreased.
bool hangman::process_guess(char c) {
    guessedChar.push_back(c);
    charCount = 0;
    if (newDict.size() == 1) {
        if (hidWord.size() == 0) {
            hidWord = newDict[0];
        }
        for (int i=0; i<hidWord.size(); i++) {
            if (hidWord[i] == c) {
                disWord[i] = c;
                charCount++;
            }
        }
        if ( charCount > 0) {
            return true;
        }
        else {
            numGuesses--;
            return false;
        }
    }
    else {
        wordMap.clear();
        checkVec.clear();
        countMap.clear();
    //if (count1 == 0) {
        for (int i=0; i<newDict.size(); i++) {
            for (int k=0; k<wordSize; k++) {
                if (disWord[k] == c) {
                    disWord[k] = '-';
                }
            }
            dictCharCount = 0;
            for (int j=0; j<wordSize; j++) {
                if (newDict[i][j] == c) {
                    disWord[j] = c;
                    dictCharCount++;
                }
            }
            if (!count(checkVec.begin(), checkVec.end(), disWord)) {
                checkVec.push_back(disWord);
            }
            wordMap[disWord].push_back(newDict[i]);
            countMap[disWord] = dictCharCount;
        }
        count1++;
    //}
    //else {
        count2 = 0;
        int tempInt = wordSize;
        string tempStr = "";
        for (int i=0; i<checkVec.size(); i++) {
            tempStr = checkVec[i];
            if (countMap[tempStr] < tempInt) {
                newDict = wordMap[checkVec[i]];
                disWord = tempStr;
                tempInt = countMap[checkVec[i]];
            }
        }

        if (countMap[disWord] != 0) {
            return true;
        }
        else {
            numGuesses--;
            return false;
        }
    //}
    }

}


// get_display_word()
//
// Return a representation of the hidden word, with unguessed letters
// masked by '-' characters.
string hangman::get_display_word() {
    return disWord;
}


// get_guesses_remaining()
//
// Return the number of guesses remaining for the player.
int hangman::get_guesses_remaining() {
    return numGuesses;
}


// get_guessed_chars()
//
// What letters has the player already guessed?  Return in alphabetic order.
string hangman::get_guessed_chars() {
    string guessedStr = "";
    for (int i=0; i<guessedChar.size(); i++) {
        guessedStr += guessedChar[i];
    }
    return guessedStr;
}


// was_char_guessed()
//
// Return true if letter was already guessed.
bool hangman::was_char_guessed(char c) {
    for (int i=0; i<guessedChar.size(); i++) {
        if (guessedChar[i] == c) {
            return true;
        }
    }
    return false;
}


// is_won()
//
// Return true if the game has been won by the player.
bool hangman::is_won() {
    if (get_hidden_word().empty()) {
        return false;
    }
    else {
        return (get_hidden_word() == get_display_word());
    }
}


// is_lost()
//
// Return true if the game has been lost.
bool hangman::is_lost() {
    return(numGuesses == 0 && !is_won());
}


// get_hidden_word
//
// Return the true hidden word to show the player.
string hangman::get_hidden_word() {
    return hidWord;
}


