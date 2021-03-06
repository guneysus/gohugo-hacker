# sass .\assets\css\themes\alexpate-15.scss .\static\css\themes\alexpate-15.css

Get-ChildItem .\assets\css\themes\[a-zA-AZ]*.scss  | % { 
	$name = $_.Name
	$fullname = $_.FullName
	$basename = $_.BaseName
	$dest = ".\static\css\themes\$($basename).css"
	echo $fullname
	sass $fullname $dest
}
