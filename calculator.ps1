[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$Taschenrechner = New-Object System.Windows.Forms.Form
$Taschenrechner.Size = New-Object System.Drawing.Size(500,400)
#$Taschenrechner.AutoSize = $true
$Taschenrechner.Text = "Calculator"
$Taschenrechner.StartPosition = "CenterScreen"
$Taschenrechner.BackColor = "Gray"
$Icon = New-Object System.Drawing.Icon ("C:\Temp\power.ico")
$Taschenrechner.Icon = $Icon

#------Funktion--------#
function Button_Click($test) {
        
        #$display.Text = $test
        $display.Text = $display.Text + $test
        
        $display.Update()
        

        if($display.Text -eq "C")
        {
           $display.Text.Clear((""))   
        }

        $display.Update()
}


#-------ToolTip-------#

$tooltip = New-Object 'System.Windows.Forms.ToolTip'

#------Display--------#
$display = New-Object System.Windows.Forms.TextBox
$display.Location = New-Object System.Drawing.Size(35,25)
$display.Size = New-Object System.Drawing.Size(400,50)
#$display.Text = "Test"
$display.Font = 'Segoe UI, 15.75pt, style=Bold, Italic'
$display.BackColor = "White"
$display.BorderStyle = 'Fixed3D'
$Taschenrechner.Controls.Add($display)


#------Button--------#
$btn0 = New-Object System.Windows.Forms.Button
$btn0.Location = New-Object System.Drawing.Size(115,270)
$btn0.Size = New-Object System.Drawing.Size(50,50)
$btn0.Text = "0"
$btn0.Name = "0"
$btn0.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn0.Add_Click({Button_Click $btn0.Text})
$btn0.BackColor = "white"

$btn1 = New-Object System.Windows.Forms.Button
$btn1.Location = New-Object System.Drawing.Size(55,90)
$btn1.Size = New-Object System.Drawing.Size(50,50)
$btn1.Text = "1"
$btn1.Name = "1"
$btn1.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn1.Add_Click({Button_Click $btn1.Text})
$btn1.BackColor = "white"

$btn2 = New-Object System.Windows.Forms.Button
$btn2.Location = New-Object System.Drawing.Size(115,90)
$btn2.Size = New-Object System.Drawing.Size(50,50)
$btn2.Text = "2"
$btn2.Name = "2"
$btn2.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn2.Add_Click({Button_Click $btn2.Text})
$btn2.BackColor = "white"

$btn3 = New-Object System.Windows.Forms.Button
$btn3.Location = New-Object System.Drawing.Size(175,90)
$btn3.Size = New-Object System.Drawing.Size(50,50)
$btn3.Text = "3"
$btn3.Name = "3"
$btn3.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn3.Add_Click({Button_Click $btn3.Text})
$btn3.BackColor = "white"

$btn4 = New-Object System.Windows.Forms.Button
$btn4.Location = New-Object System.Drawing.Size(55,150)
$btn4.Size = New-Object System.Drawing.Size(50,50)
$btn4.Text = "4"
$btn4.Name = "4"
$btn4.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn4.Add_Click({Button_Click $btn4.Text})
$btn4.BackColor = "white"

$btn5 = New-Object System.Windows.Forms.Button
$btn5.Location = New-Object System.Drawing.Size(115,150)
$btn5.Size = New-Object System.Drawing.Size(50,50)
$btn5.Text = "5"
$btn5.Name = "5"
$btn5.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn5.Add_Click({Button_Click $btn5.Text})
$btn5.BackColor = "white"

$btn6 = New-Object System.Windows.Forms.Button
$btn6.Location = New-Object System.Drawing.Size(175,150)
$btn6.Size = New-Object System.Drawing.Size(50,50)
$btn6.Text = "6"
$btn6.Name = "6"
$btn6.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn6.Add_Click({Button_Click $btn6.Text})
$btn6.BackColor = "white"

$btn7 = New-Object System.Windows.Forms.Button
$btn7.Location = New-Object System.Drawing.Size(55,210)
$btn7.Size = New-Object System.Drawing.Size(50,50)
$btn7.Text = "7"
$btn7.Name = "7"
$btn7.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn7.Add_Click({Button_Click $btn7.Text})
$btn7.BackColor = "white"

$btn8 = New-Object System.Windows.Forms.Button
$btn8.Location = New-Object System.Drawing.Size(115,210)
$btn8.Size = New-Object System.Drawing.Size(50,50)
$btn8.Text = "8"
$btn8.Name = "8"
$btn8.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn8.Add_Click({Button_Click $btn8.Text})
$btn8.BackColor = "white"

$btn9 = New-Object System.Windows.Forms.Button
$btn9.Location = New-Object System.Drawing.Size(175,210)
$btn9.Size = New-Object System.Drawing.Size(50,50)
$btn9.Text = "9"
$btn9.Name = "9"
$btn9.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn9.Add_Click({Button_Click $btn9.Text})
$btn9.BackColor = "white"

$btn10 = New-Object System.Windows.Forms.Button
$btn10.Location = New-Object System.Drawing.Size(340,120)
$btn10.Size = New-Object System.Drawing.Size(50,50)
$btn10.Text = "-"
$btn10.Name = "-"
$btn10.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn10.Add_Click({Button_Click $btn10.Text})
$btn10.BackColor = "white"

$btn11 = New-Object System.Windows.Forms.Button
$btn11.Location = New-Object System.Drawing.Size(280,120)
$btn11.Size = New-Object System.Drawing.Size(50,50)
$btn11.Text = "+"
$btn11.Name = "+"
$btn11.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn11.Add_Click({Button_Click $btn11.Text})
$btn11.BackColor = "white"

$btn12 = New-Object System.Windows.Forms.Button
$btn12.Location = New-Object System.Drawing.Size(280,180)
$btn12.Size = New-Object System.Drawing.Size(50,50)
$btn12.Text = "*"
$btn12.Name = "*"
$btn12.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn12.Add_Click({Button_Click $btn12.Text})
$btn12.BackColor = "white"

$btn13 = New-Object System.Windows.Forms.Button
$btn13.Location = New-Object System.Drawing.Size(340,180)
$btn13.Size = New-Object System.Drawing.Size(50,50)
$btn13.Text = "/"
$btn13.Name = "/"
$btn13.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn13.Add_Click({Button_Click $btn13.Text})
$btn13.BackColor = "white"

$btn14 = New-Object System.Windows.Forms.Button
$btn14.Location = New-Object System.Drawing.Size(280,240)
$btn14.Size = New-Object System.Drawing.Size(50,50)
$btn14.Text = "."
$btn14.Name = "."
$btn14.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn14.Add_Click({Button_Click $btn14.Text})
$btn14.BackColor = "white"

$btn15 = New-Object System.Windows.Forms.Button
$btn15.Location = New-Object System.Drawing.Size(340,240)
$btn15.Size = New-Object System.Drawing.Size(50,50)
$btn15.Text = ","
$btn15.Name = ","
$btn15.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn15.Add_Click({Button_Click $btn15.Text})
$btn15.BackColor = "white"

$btn16 = New-Object System.Windows.Forms.Button
$btn16.Location = New-Object System.Drawing.Size(400,120)
$btn16.Size = New-Object System.Drawing.Size(50,110)
$btn16.Text = "="
$btn16.Name = "="
$btn16.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn16.Add_Click({Button_Click $btn16.Text})
$btn16.BackColor = "white"

$btn17 = New-Object System.Windows.Forms.Button
$btn17.Location = New-Object System.Drawing.Size(400,240)
$btn17.Size = New-Object System.Drawing.Size(50,50)
$btn17.Text = "C"
$btn17.Name = "C"
$btn17.Font = New-Object System.Drawing.Font("Lucida Console",12,[System.Drawing.FontStyle]::Bold)
$btn17.Add_Click({$btn17.Text.Clear()})
$btn17.BackColor = "white"

#------Aufruf--------#

$Taschenrechner.Controls.Add($btn0)
$Taschenrechner.Controls.Add($btn1)
$Taschenrechner.Controls.Add($btn2)
$Taschenrechner.Controls.Add($btn3)
$Taschenrechner.Controls.Add($btn4)
$Taschenrechner.Controls.Add($btn5)
$Taschenrechner.Controls.Add($btn6)
$Taschenrechner.Controls.Add($btn7)
$Taschenrechner.Controls.Add($btn8)
$Taschenrechner.Controls.Add($btn9)
$Taschenrechner.Controls.Add($btn10)
$Taschenrechner.Controls.Add($btn11)
$Taschenrechner.Controls.Add($btn12)
$Taschenrechner.Controls.Add($btn13)
$Taschenrechner.Controls.Add($btn14)
$Taschenrechner.Controls.Add($btn15)
$Taschenrechner.Controls.Add($btn16)
$Taschenrechner.Controls.Add($btn17)

$tooltip.SetToolTip($btn0, 'Number: 0')
$tooltip.SetToolTip($btn1, 'Number: 1')
$tooltip.SetToolTip($btn2, 'Number: 2')
$tooltip.SetToolTip($btn3, 'Number: 3')
$tooltip.SetToolTip($btn4, 'Number: 4')
$tooltip.SetToolTip($btn5, 'Number: 5')
$tooltip.SetToolTip($btn6, 'Number: 6')
$tooltip.SetToolTip($btn7, 'Number: 7')
$tooltip.SetToolTip($btn8, 'Number: 8')
$tooltip.SetToolTip($btn9, 'Number: 9')

$tooltip.SetToolTip($btn10, 'character: -')
$tooltip.SetToolTip($btn11, 'character: +')
$tooltip.SetToolTip($btn12, 'character: *')
$tooltip.SetToolTip($btn13, 'character: /')
$tooltip.SetToolTip($btn14, 'character: .')
$tooltip.SetToolTip($btn15, 'character: ,')
$tooltip.SetToolTip($btn16, 'character: =')

$tooltip.SetToolTip($btn16, 'character: C')

[void]$Taschenrechner.ShowDialog()