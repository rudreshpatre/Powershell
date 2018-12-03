# algo
#1)create a variable to hold path of each app
#2)pass this variables in a list
#3)loop this list thru start app statement.	

#apps to open
#tutorial
#vs code
#notes


#variables
$tutorial ="C:\Users\Rudresh Patre\Downloads\Udemy - Angular 2 with TypeScript for Beginners_ The Pragmatic Guide"
$vscode ="start vscode://file/C:/Users/'Rudresh Patre'/Desktop/Projects/Angular/angular2-seed"
$notes ="C:\Users\Rudresh Patre\Desktop\Notes\Angular_2"

#List
$appList = New-Object System.Collections.ArrayList
$appList.Add($vscode)
$appList.Add($tutorial)
$appList.Add($notes)

#loop
foreach($app in $appList)
{
	if($app.Contains("vscode"))
	{
		 Invoke-Command -ScriptBlock {start vscode://file/C:/Users/'Rudresh Patre'/Desktop/Projects/Angular/angular2-seed}
		 Continue
	}	
	ii $app
}
