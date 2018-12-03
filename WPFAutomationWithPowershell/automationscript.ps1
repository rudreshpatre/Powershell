#Import-Module C:\UIAutomation\UIAutomation.dll
& .\WpfAutomation.application
$input1 = "Rudresh"
$input2 = "Morena"

#Step1: input the name “Rudresh”

Get-UiaWindow -Class 'Window' -Name 'WPFAutomation' | `
Get-UiaEdit -AutomationId 'TextBox1' -Class 'TextBox' | `
Set-UIATextBoxText $input1

Get-UiaWindow -Class 'Window' -Name 'WPFAutomation' | `
Get-UiaEdit -AutomationId 'TextBox2' -Class 'TextBox' | `
Set-UIATextBoxText $input2

Get-UiaWindow -Class 'Window' -Name 'WPFAutomation' | `
Get-UiaButton -Class 'Button' -Name 'Button'|`
Invoke-UIAButtonClick

while($val -ne 5000000)
     {
       $val++
       #Write-Host $val
     }

Get-UiaWindow -Class 'Window' -Name 'WPFAutomation' | `
Get-UiaButton -AutomationId 'Close' -Name 'Close'|`
Invoke-UIAButtonClick