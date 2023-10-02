#include <ncurses.h>
#define NUMCOUNT 10
#define NUMOFFSET 48

int main()
{	

	WINDOW *currWin = initscr();			/* Start curses mode 		  */

    
	// smack em in
	char thems[getmaxx(currWin)+1];
	for(int i = 0; i < sizeof(thems); i++){
		///.... ye
		//	wrap it in the nums
		thems[i] = (char)(NUMOFFSET+(i%NUMCOUNT));
	}
	// CAP IT
	thems[sizeof(thems)-1] = '\0';


	// print ever line
	for(int i = 0; i < getmaxy(currWin); i++){
		//....
		// currWin
		printw( thems );
	}
	refresh();			/* Print it on to the real screen */
	getch();			/* Wait for user input */
	endwin();			/* End curses mode		  */

	return 0;
}