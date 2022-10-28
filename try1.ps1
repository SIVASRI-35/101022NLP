Write-Host "Your script is executing successfully."

#@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

#choco install -y python3

#python --version

python -m pip install --user --upgrade pip

Write-Host "installing required packages."

foreach($line in Get-Content requirements.txt) 
    {
      pip install --upgrade $line 
    }  

Write-Host "succesfully installed requirements.now running file"

#$name = Read-Host -Prompt 'enter ur path'

#Write-Host "The entered path is" $name -ForegroundColor Green

#C:\Users\Lenovo\Desktop\try_projfinal

#python $name\app.py 

Start-Process "https://texttry-sumapi3.herokuapp.com/"

Start-Process "http://127.0.0.1:5000/"

python app.py

#Start-Process "http://127.0.0.1:5000/"
#app.py

Write-Host "Your script is executed successfully."


#https://techexpert.tips/windows/batch-script-prompting-user-input/

#https://www.educba.com/powershell-prompt-for-input/#:~:text=In%20PowerShell%2C%20the%20input%20can,be%20prompted%20using%20this%20cmdlet.