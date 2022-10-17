#match found 
$var=" hello ";
if($var =~ /hello/){
    print "Found";
}else{
    print "Not Found";
}
#finding match using 'm' 
$var="hello";
if($var =~ m[hello]){
    print "\nFound";
}else{
    print "Not Found";
}

#$` $&  $'
$str="The lunch was delicious";
$str=~ m/lunch/;
print "\nBefore:   $`\n";#before the matched string
print "Matched:  $&\n";#string which is matched
print "After:   $'\n";#after the string is matched

#Substitute regex
$str=~s/lunch/dinner/;
print "$str";

#Transliterate regex
$str=~tr/n/o/;
print "\n$str";
$str=~tr/a-z/A-Z/;

#subroutines passing variables
print "\n$str";
sub addition{
    $sum=0;
    foreach $v (@_){
        $sum=$sum+$v;
    }
    print "\n$sum";
    return $sum; #returning a value
}
$new=addition(10,10,10);
print "\n$new";

#subroutines passing a list
sub list{
    @list=@_;
    print "\n@list";
}
@list=(1,2,3,4);
list(@list);

#state variable
sub stat{
    $count=0;
    $count++;
    print "$count";
}
stat();
stat();

%students=(-RAM => 100,-SHYAM => 200);
print "\n\$students{-RAM}=$students{-SHYAM}";
@names = keys %data;
print "\n@names";
$names{'GEETA'} = 55;
@names = keys %sweets;
print "\n@names";
delete $students{'GEETA'};
@names = keys %s;
print "\n@names";

print "Connection with MySQL database\n";
    
    use DBI;
    # MySQL database
    my $dsn = "DBI:mysql:perlmysqldb";
    my $username = "root";
    my $password = 'FashMWAct17#!';

    # connect to MySQ
    %hash = ( PrintError=>0,RaiseError=>1);   

    $x  = DBI->connect($dsn,$username,$password, \%attr);

    print "Connected to the MySQL database.";
