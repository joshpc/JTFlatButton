# JTFlatButton
A quick and dirty "flat" (but somewhat bouncy!) button. MIT license, (Safety not Guaranteed)[http://timetraveler.ytmnd.com/].

## Screenshot
![Screenshot of Button](https://dl.dropboxusercontent.com/u/1512544/Demo/button.png)

## How to use
```
	JTFlatButton *button = [JTFlatButton flatButton];
	
	//This is the colour of the button
	button.buttonColor = [UIColor colorWithRed:0.353 green:0.635 blue:0.843 alpha:1];
	
	//This is the side of the button
	button.sideColor = [UIColor colorWithRed:0.318 green:0.494 blue:0.686 alpha:1];
	button.frame = CGRectMake(100, 100, 200, 60);
	
	//This is how tall the button is
	button.depth = 3.0f;
	
	//This is how round the button is
	button.cornerRadius = 6.0f;
	[button setTitle:@"Le Button" forState:UIControlStateNormal];
```
