$var="My name is Alice";

if($var=~m/alice/i)
{
    print"Hello";
}
else
{
    print"Byee";
}

$var=~ s/Alice/Priya/;
print($var);

print $var;