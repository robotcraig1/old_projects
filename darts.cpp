//craig martell 
//darts




#include<iostream.h>
#include<windows.h>

void welcome(void);
void time(void); 




void main(void)
{

welcome();

int answer_subtract=301;
int answer_add;
int dart1,dart2,dart3;
char type;
int rno =1;

cout<< "This is a Dart game\n\n";
				
do
{
	cout<< "\nROUND NUMBER:  "<<rno;

	cout<<"\n\nPlease enter the type of dart 1\n\n\n";
	cout<<"a = Single\n";
	cout<<"b = Double\n";
	cout<<"c = Treble\n";
	cout<<"d = Bull\n";
	cout<<"e = Outerbull\n";
	cout<<"f = Miss                   ";
	cin>> type;



	type = tolower(type);

	if (type == 'd')
	{
		dart1 = 50;
		cout<<" dart score "<<dart1<<endl<<endl;
	}
	else if (type == 'e')
	{
		dart1 = 25;
		cout<<" dart score "<<dart1<<endl<<endl;
	}
	else if (type == 'f')
	{
		dart1 = 0;
			cout<<" Miss \n\n ";
			
	}
	
	
	else
	{
	cout<< "\n\nPlease enter your first dart score ";
	cin>> dart1;
	
		switch(type)
		{		
		case'a':

		dart1 = dart1;
		break;

		case 'b':
		
		dart1 = dart1 * 2;

		break;

		case 'c':

		dart1 = dart1 *3;

		break;

		}//end of switch
	}//ene of else



	cout<<"\n\nPlease enter the type of dart 2 \n";
	cout<<"a = Single\n";
	cout<<"b = Double\n";
	cout<<"c = Treble\n";
	cout<<"d = Bull\n";
	cout<<"e = Outerbull\n";
	cout<<"f = Miss                        ";
	cin>> type;



	if (type == 'd')
	{
		dart2 = 50;
		cout<<" dart score "<<dart2<<endl<<endl;
	}
	else if (type == 'e')
	{
		dart2 = 25;
		cout<<" dart score "<<dart2<<endl<<endl;
	}
	else if (type == 'f')
	{
		dart2 = 0;
			cout<<" Miss \n\n";
	}

	else{

		cout<< "Please enter your second dart score \n\n";
		cin>> dart2;
		
		switch(type)
		{
		case'a':
			dart2 = dart2;
			break;

		case 'b':
				dart2 = dart2 * 2;

			break;
		case 'c':
				dart2 = dart2 *3;
				break;
		}
	}

	cout<<"\n\nPlease enter the type of dart 3 \n";
	cout<<"a = Single\n\n";
	cout<<"b = Double\n\n";
	cout<<"c = Treble\n\n";
	cout<<"d = Bull\n\n";
	cout<<"e = Outerbull\n\n";
	cout<<"f = Miss\n\n";
	cin>> type;


	if (type == 'd')
	{
		dart3 = 50;
		cout<<" dart3 score "<<dart3<<endl<<endl;
	}
	else if (type == 'e')
	{
		dart3 = 25;
		cout<<" dart score "<<dart3<<endl<<endl;
	}
	else if (type == 'f')
	{
		dart3 = 0;
			cout<<" Miss \n\n";
	}

	else
	{

	cout<< "Please enter your third dart score \n\n";
	cin>> dart3;
	
	switch(type)
		{
		case'a':
		dart3 = dart3;
		break;

		case 'b':
		dart3 = dart3 * 2;

		break;
		case 'c':
		dart3 = dart3 *3;
		break;
		}
	}

answer_add =dart1+dart2+dart3;
cout <<"\n\nYour three dart added together = " <<answer_add;

answer_subtract =answer_subtract-answer_add;
cout<< "\n\nYour score for the round = " <<answer_subtract; 

	
system("cls");

rno++;		

}while(answer_subtract!=0);



}//end of mean







void welcome(void)
{
cout<<"\n \t\t*********************************";
cout<<"\n \t\tWELCOME TO THE DARTBOARD SIMULATOR";
cout<<"\n \t\t***********************************";
cout<<"\n \t\tVersion 1.0";
cout<<"\n \t\tMade by Craig Martell";

cout<<" \n\n \t\tProgram is loading please wait" <<endl;

time(); 

}





void time(void)
{
	int i,j;

	for(i =0;i<45000;i++)
		for (j=0; j<45000; j++);

	system("cls");
}