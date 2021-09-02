## Update Baground Colour
$file ='C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps\demo\WEB-INF\classes\test.txt'
(Get-Content $file) | Foreach-Object {
    $_ -replace 'toolbar.backgroundColor=[^\s]*', 'toolbar.backgroundColor=#2DBECD'
    } | Set-Content $file
    

## Start Application
net restart Tomcat9
