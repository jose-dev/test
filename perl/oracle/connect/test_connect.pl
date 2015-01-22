use DBI;

## DWHPRD01 =
##       (ADDRESS = (PROTOCOL = TCP)(HOST = dwhdb.ocado.com)(PORT = 1521))
##       (SID = DWHPRD01)
## 
## DWHCIT01 =
##       (ADDRESS = (PROTOCOL = TCP)(HOST = cit-dwhdb.ocado.com)(PORT = 1521))
##       (SID = DWHCIT01)

my $HOST     = 'cit-dwhdb.ocado.com';
my $PORT     = 1521;
my $SID      = 'DWHCIT01';
my $URI      = qq(dbi:Oracle:host=$HOST;sid=$SID;port=$PORT);
my $USER     = '____________';
my $PASSWORD = '____________';

my $dbh = DBI->connect($URI, $USER, $PASSWORD, { RaiseError => 1, AutoCommit => 0 });


my $sql =
    qq(
        SELECT owner, 
               table_name
          FROM all_tables  
      ORDER BY owner,
               table_name
    );
my $sth = $dbh->prepare($sql);
$sth->execute();
while (my $ra_row = $sth->fetchrow_arrayref()) {
    print join(" \t", @$ra_row ), "\n";
}
$sth->finish();
$dbh->disconnect();

