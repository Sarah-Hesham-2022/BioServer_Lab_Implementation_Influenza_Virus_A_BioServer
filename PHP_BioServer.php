<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">

    <title>
      Form Results
    </title>

    <style>

        body {
        border-style: solid;
        border-color: #a85823;
        border-width: 10px;
        }

        h1{
        font-family:  Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        font-style:normal; 
        font-size: 50px;
        color: #a85823;
        font-weight: bold;
        font-stretch: expanded;
        text-align: left;
        }

        h2{
        font-family:  Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        font-style:normal; 
        font-size: 40px;
        color: black;
        font-weight: bold;
        font-stretch: expanded;
        text-align: left;
        }

    </style>

</head>
    <body>

<?php

function GC($seq)
{
    $len = strlen($seq);
    $count = 0;
    for($i = 0 ; $i < $len ; $i++)
    {
        if($seq[$i] == "G" || $seq[$i] == "g" || $seq[$i] == "C" || $seq[$i] == "c")
        {
            $count ++ ;
        }
    }
    return round(($count/$len)*100,1)."%";
}

function Transcription($seq)
{
    $len = strlen($seq);
    $transcript = "";
    for($i = 0 ; $i < $len ; $i++)
    {
        if($seq[$i] == "A")
        {
            $transcript.='U' ;
        }
        elseif($seq[$i] == "a")
        {
            $transcript.='u';
        }
        elseif($seq[$i] == "C")
        {
            $transcript.='G';
        }
        elseif($seq[$i] == "c")
        {
            $transcript.='g';
        }
        elseif($seq[$i] == "G")
        {
            $transcript.='C';
        }
        elseif($seq[$i] == "g")
        {
            $transcript.='c';
        }
        elseif($seq[$i] == "T")
        {
            $transcript.='A';
        }
        elseif($seq[$i] == "t")
        {
            $transcript.='a';
        }
        else 
        {
            $transcript.='N';
        }
    }
    return $transcript;
}

function Complement($seq)
{
    $len = strlen($seq);
    $complement = "";
    for($i = 0 ; $i < $len ; $i++)
    {
        if($seq[$i] == "A")
        {
            $complement.='T' ;
        }
        elseif($seq[$i] == "a")
        {
            $complement.='t';
        }
        elseif($seq[$i] == "C")
        {
            $complement.='G';
        }
        elseif($seq[$i] == "c")
        {
            $complement.='g';
        }
        elseif($seq[$i] == "G")
        {
            $complement.='C';
        }
        elseif($seq[$i] == "g")
        {
            $complement.='c';
        }
        elseif($seq[$i] == "T")
        {
            $complement.='A';
        }
        elseif($seq[$i] == "t")
        {
            $complement.='a';
        }
        else
        {
            $complement.='N';
        }
    }
    return $complement;
}

function ReverseComplement($seq)
{
    $complement = Complement($seq);
    return strrev($complement);
}

function Translation($seq)
{
    $CodonsDict = array(
        'A' => array("GCU","GCC","GCA","GCG"),
        'R' => array("CGU","CGC","CGA","CGG","AGA","AGG"),
        'N' => array("AAU","AAC"),
        'D' => array("GAU","GAC"),
        'C' => array("UGU","UGC"),
        'Q' => array("CAA","CAG"),
        'E' => array("GAA","GAG"),
        'G' => array("GGU","GGC","GGA","GGG"),
        'H' => array("CAU","CAC"),
        'I' => array("AUU","AUC","AUA"),
        'L' => array("UUA","UUG","CUU","CUC","CUA","CUG"),
        'K' => array("AAA","AAG"),
        'M' => array("AUG"),
        'F' => array("UUU","UUC"),
        'P' => array("CCU","CCC","CCA","CCG"),
        'S' => array("UCU","UCC","UCA","UCG","AGU","AGC"),
        'T' => array("ACU","ACC","ACA","ACG"),
        'W' => array("UGG"),
        'Y' => array("UAU","UAC"),
        'V' => array("GUU","GUC","GUA","GUG")
    );
    
    $CodonsNameDict = array(
        'A' => "Ala",
        'R' => 'Arg',
        'N' => 'Asn',
        'D' => 'Asp',
        'C' => 'Cys',
        'Q' => 'Gln',
        'E' => 'Glu',
        'G' => 'Gly',
        'H' => 'His',
        'I' => 'Ile',
        'L' => "Leu",
        'K' => "Lys",
        'M' => "Met",
        'F' => "Phe",
        'P' => "Pro",
        'S' => "Ser",
        'T' => "Thr",
        'W' => "Trp",
        'Y' => "Tyr",
        'V' => "Val"
    );
    
    $start = "AUG";
    $stop = array("UAG","UGA","UAA");

    $len = strlen($seq);
    $count =0;
    $seq = Transcription($seq);
    $seq = strtoupper($seq);
    while($count < 3)
    {
        $protein ="";
        $names = "";
        $flag = FALSE;

        for($i= $count ; $i < $len-3 ; $i = $i+3)
        {
            $part = substr($seq,$i,3);

            if($part == $start || $flag == TRUE)
            {

              $flag = TRUE;
              foreach($CodonsDict as $letter => $arr)
              {
                if(in_array($part,$arr))
                {
                    $protein.= $letter;
                    $names.= $CodonsNameDict[$protein[strlen($protein)-1]]."-";
                }
              }

                if(in_array($part,$stop))
                {
                    break;
                }
        }

        }
        $flag = FALSE;
        echo "<h1>Protein Sequence when starting from letter number ".($count+1)."</h1>";
        $index =0 ;
        while($index <= strlen($protein) + 1)
        {
          echo "<h2>".substr($protein,$index,60)."</h2>";
          $index += 60;
        }
        $index =0 ;
        while($index <= strlen($names) + 1)
        {
          echo "<h2>".substr($names,$index,60)."</h2>";
          $index += 60;
        }
        $count ++;
    }
    echo "<br>";
}

function printInfluenza($conn)
{
echo "<h1>Printing Data of Influenza A Virus Table in our Database</h1>";

$sql = "SELECT * FROM influenza_a_virus";
$result = $conn->query($sql);
if ($result->num_rows > 0) 
{
// output data of each row
while($row = $result-> fetch_assoc())
{

echo "<h1>ID:   </h1>". "<h2>" . $row["ID"]. "</h2>";

$temp = $row["Sequence"];
$index =0 ;
echo "<h1>Sequence:   </h1>" ;
while($index <= strlen($temp) + 1)
{
    echo "<h2>".substr($temp,$index,50)."</h2>";
    $index += 50;
}

echo "<h1>Description:   </h1>" . "<h2>". $row["Description"]. "</h2>";
echo "<h1>Organism:   </h1>" . "<h2>". $row["Organism"]. "</h2>";
echo "<h1>Locus_Tag:   </h1>" . "<h2>". $row["Locus_Tag"]. "</h2>";
echo "<h1>Gene_Type:   </h1>" . "<h2>". $row["Gene_Type"]. "</h2>";
echo "<h1>Gene_Symbol:   </h1>". "<h2>" . $row["Gene_Symbol"]. "</h2><br>";
}
}
}

function printUsers($conn)
{
echo "<h1>Printing Data of Users Table in our Database</h1><br>";

$sql = "SELECT * FROM users";
$result = $conn->query($sql);
if ($result->num_rows > 0) 
{
    while($row = $result-> fetch_assoc())
    {
// output data of each row
echo "<h1>ID:   </h1>" . "<h2>". $row["ID"]. "</h2>";
echo "<h1>Name:   </h1>" . "<h2>". $row["Name"]. "</h2>";
echo "<h1>Birthday:   </h1>" . "<h2>". $row["Birthday"]. "</h2>";
echo "<h1>Gender:   </h1>" . "<h2>". $row["Gender"]. "</h2>";
echo "<h1>Job_Title:   </h1>" . "<h2>". $row["Job_Title"]. "</h2>";
echo "<h1>EMail:   </h1>" . "<h2>". $row["EMail"]. "</h2>";
echo "<h1>Phone:   </h1>" . "<h2>". $row["Phone"]. "</h2>";
echo "<h1>Address:   </h1>" . "<h2>". $row["Address"]. "</h2>";
echo "<h1>Background_Knowlegde:   </h1>" . "<h2>". $row["Background_Knowledge"]. "</h2>";
echo "<h1>Usage_Reason:   </h1>" . "<h2>". $row["Usage_Reason"]. "</h2><br>";
}
}
}

function printUsersSeqs($conn)
{
echo "<h1>Printing Data of Users Inserted Sequences Table in our Database</h1><br>";

$sql = "SELECT * FROM inserted_sequences";
$result = $conn->query($sql);
if ($result->num_rows > 0) 
{
// output data of each row
while($row = $result-> fetch_assoc())
{

echo "<h1>ID:   </h1>". "<h2>" . $row["ID"]. "</h2>";
echo "<h1>User_ID:   </h1>". "<h2>" . $row["User_ID"]. "</h2>";

$temp = $row["Sequence"];
$index =0 ;
echo "<h1>Sequence:   </h1>" ;
while($index <= strlen($temp) + 1)
{
    echo "<h2>".substr($temp,$index,100)."</h2>";
    $index += 100;
}

echo "<h1>Description:   </h1>". "<h2>" . $row["Description"]. "</h2>";
echo "<h1>Organism:   </h1>" . "<h2>".$row["Organism"]. "</h2>";
echo "<h1>Locus_Tag:   </h1>". "<h2>" . $row["Locus_Tag"]. "</h2>";
echo "<h1>Gene_Type:   </h1>" . "<h2>". $row["Gene_Type"]. "</h2>";
echo "<h1>Gene_Symbol:   </h1>" . "<h2>". $row["Gene_Symbol"]. "</h2><br>";
}
}
}

function printAllData($conn)
{
echo "<h1>Printing All Data in our Database Tables</h1>";
printInfluenza($conn);
printUsers($conn);
printUsersSeqs($conn);
}

// End of Functions

$servername ="localhost";
$username = "root";
$password = "usbw";
$dbname = "bioserverproject";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection

if ($conn->connect_error) 
{

    die("<h1>Connection failed:</h1>" . "<h2>".$conn->connect_error."</h2><br>");
}

$name = $_POST['name'];
$dob = $_POST['dob'];
$gender = $_POST['gender'];
$occupation = $_POST['occupation'];
$mail = $_POST['mail'];
$phone = $_POST['phone'];
$address = $_POST ['address'];
$back_know = $_POST['back_know'];
$why_use = $_POST['why_use'];
$User_ID = NULL;
$sql = "INSERT INTO users(Name, Birthday, Gender, Job_Title, EMail, Phone, Address, Background_Knowledge, Usage_Reason) VALUES ('$name','$dob', '$gender','$occupation','$mail','$phone','$address','$back_know','$why_use')";
   
// Execute SQL query
if (mysqli_query($conn, $sql)) 
{
    echo "<h1>New User is Registered</h1>";
} 
else 
{
    echo "<h1>Error: </h1>" . "<h2>".$sql ."</h2>". "<br>" . "<h1>".mysqli_error($conn)."</h1><br>";
}

$sql ="SELECT * FROM users WHERE ID = LAST_INSERT_ID()";

$result = $conn->query($sql);

if ($result->num_rows > 0) 
{
    while($row = $result-> fetch_assoc())
    {
// output data of each row
echo "<h1>ID:   </h1>" . "<h2>". $row["ID"]. "</h2>";
$User_ID = $row["ID"];
echo "<h1>Name:   </h1>" . "<h2>". $row["Name"]. "</h2>";
echo "<h1>Birthday:   </h1>" . "<h2>". $row["Birthday"]. "</h2>";
echo "<h1>Gender:   </h1>" . "<h2>". $row["Gender"]. "</h2>";
echo "<h1>Job_Title:   </h1>" . "<h2>". $row["Job_Title"]. "</h2>";
echo "<h1>EMail:   </h1>" . "<h2>". $row["EMail"]. "</h2>";
echo "<h1>Phone:   </h1>" . "<h2>". $row["Phone"]. "</h2>";
echo "<h1>Address:   </h1>" . "<h2>". $row["Address"]. "</h2>";
echo "<h1>Background_Knowlegde:   </h1>" . "<h2>". $row["Background_Knowledge"]. "</h2>";
echo "<h1>Usage_Reason:   </h1>" . "<h2>". $row["Usage_Reason"]. "</h2><br>";
}
}

$choice = $_POST['choice'];

if($choice == "influenza-a")
{
    $seq_id1 = $_POST['seq_id1'];
    $calc_gc_cont1 = NULL;
    $dna_transc1 = NULL;
    $complement1 = NULL;
    $rev_comp1 = NULL;
    $dna_trans1 = NULL;
    $display_influ1 = NULL;
    $display_all1 = NULL;


    if (isset($_POST['calc_gc_cont1'])) {

        $calc_gc_cont1 = $_POST['calc_gc_cont1'];
    } 
    if (isset($_POST['dna_transc1'])) {

        $dna_transc1 = $_POST['dna_transc1'];
    } 
    if (isset($_POST['complement1'])) {

        $complement1 = $_POST['complement1'];
    } 
    if (isset($_POST['rev_comp1'])) {

        $rev_comp1 = $_POST['rev_comp1'];
    } 
    if (isset($_POST['dna_trans1'])) {

        $dna_trans1 = $_POST['dna_trans1'];
    } 
    if (isset($_POST['display_influ1'])) {

        $display_influ1 = $_POST['display_influ1'];
    } 
    if (isset($_POST['display_all1'])) {

        $display_all1 = $_POST['display_all1'];
    } 

   $sql = "SELECT * FROM influenza_a_virus where ID = $seq_id1";
   $result = $conn->query($sql);

   while($row = $result-> fetch_assoc())
   {

   echo "<h1>ID:   </h1>" ."<h2>". $row["ID"]. "</h2>";

   $temp = $row["Sequence"];

   $index =0 ;
   echo "<h1>Sequence:   </h1>" ;
   while($index <= strlen($temp) + 1)
   {
    echo "<h2>".substr($temp,$index,50)."</h2>";
    $index += 50;
   }

   echo "<h1>Description:   </h1>" ."<h2>" .$row["Description"]. "</h2>";
   echo "<h1>Organism:   </h1>" . "<h2>".$row["Organism"]. "</h2>";
   echo "<h1>Locus_Tag:   </h1>" ."<h2>". $row["Locus_Tag"]. "</h2>";
   echo "<h1>Gene_Type:   </h1>" . "<h2>".$row["Gene_Type"]. "</h2>";
   echo "<h1>Gene_Symbol:   </h1>" . "<h2>".$row["Gene_Symbol"]. "</h2><br>";

   if($calc_gc_cont1 == "calc_gc_cont")
   {
    echo "<h1>GC:   </h1>";
    echo "<h2>".GC($temp)."</h2>";
   }
   if($dna_transc1 == "dna_transc")
   {
    echo "<h1>DNA-Transcription:   </h1>";
    $transcr = Transcription($temp);
    $index = 0;
    while($index <= strlen($transcr) + 1)
    {
     echo "<h2>".substr($transcr,$index,50)."</h2>";
     $index += 50;
    }
   }
   if($complement1 == "complement")
   {
    echo "<h1>DNA-Complement:   </h1>";
    $comp = Complement($temp);
    $index = 0;
    while($index <= strlen($comp) + 1)
    {
     echo "<h2>".substr($comp,$index,50)."</h2>";
     $index += 50;
    }  
   }
   if($rev_comp1 == "rev_comp")
   {
    echo "<h1>DNA-ReverseComplement:   </h1>";
    $rcomp = ReverseComplement($temp);
    $index = 0;
    while($index <= strlen($rcomp) + 1)
    {
     echo "<h2>".substr($rcomp,$index,50)."</h2>";
     $index += 50;
    }   
   }
   if($dna_trans1 == "dna_trans")
   {
    echo "<h1>DNA-Translation:   </h1>";
    Translation($temp);    
   }   
   if($display_influ1 == "display_influ")
   {
    printInfluenza($conn);    
   } 
   if($display_all1 == "display_all")
   {
    printAllData($conn);    
   } 
   }
}
elseif($choice == "out-seq")
{
    $seq_id2 = $_POST['seq_id2'];
    $seq1 = $_POST['seq1'];
    $organism_name1 = $_POST['organism_name1'];
    $gene_type1 = $_POST['gene_type1'];
    $gene_symbol1 = $_POST['gene_symbol1'];
    $locus_tag1 = $_POST['locus_tag1'];
    $description1 = $_POST['description1'];

    $calc_gc_cont2 = NULL;
    $dna_transc2 = NULL;
    $complement2 = NULL;
    $rev_comp2 = NULL;
    $dna_trans2 = NULL;
    $display_influ2 = NULL;
    $display_all2 = NULL;


    if (isset($_POST['calc_gc_cont2'])) {

        $calc_gc_cont2 = $_POST['calc_gc_cont2'];
    } 
    if (isset($_POST['dna_transc2'])) {

        $dna_transc2 = $_POST['dna_transc2'];
    } 
    if (isset($_POST['complement2'])) {

        $complement2 = $_POST['complement2'];
    } 
    if (isset($_POST['rev_comp2'])) {

        $rev_comp2 = $_POST['rev_comp2'];
    } 
    if (isset($_POST['dna_trans2'])) {

        $dna_trans2 = $_POST['dna_trans2'];
    } 
    if (isset($_POST['display_influ2'])) {

        $display_influ2 = $_POST['display_influ2'];
    } 
    if (isset($_POST['display_all2'])) {

        $display_all2 = $_POST['display_all2'];
    } 

   $sql = "INSERT INTO inserted_sequences (ID,User_ID,Sequence,Locus_Tag,Description,Gene_Type,Gene_Symbol,Organism) VALUES ('$seq_id2','$User_ID' ,'$seq1', '$locus_tag1','$description1','$gene_type1','$gene_symbol1','$organism_name1')";
   
   // Execute SQL query
   if (mysqli_query($conn, $sql)) 
   {
    echo "<h1>New Sequence is Inserted by User of ID :   ".$User_ID."</h1>";
   } 
   else 
   {
    echo "<h1>Error: </h1>" . "<h2>".$sql ."</h2>". "<br>" . "<h1>".mysqli_error($conn)."</h1><br>";
   }

   $sql = "SELECT * FROM inserted_sequences where ID = $seq_id2";
   $result = $conn->query($sql);
   if ($result->num_rows > 0) 
   {

   while($row = $result-> fetch_assoc())
   {

   echo "<h1>ID:   </h1>" ."<h2>". $row["ID"]. "</h2>";
   echo "<h1>User_ID:   </h1>" ."<h2>". $row["User_ID"]. "</h2>";
   $index =0 ;
   $temp = $row["Sequence"];
   echo "<h1>Sequence:   </h1>" ;
   while($index <= strlen($temp) + 1)
   {
    echo "<h2>".substr($temp,$index,50)."</h2>";
    $index += 50;
   }

   echo "<h1>Description:   </h1>" ."<h2>" .$row["Description"]. "</h2>";
   echo "<h1>Organism:   </h1>" . "<h2>".$row["Organism"]. "</h2>";
   echo "<h1>Locus_Tag:   </h1>" ."<h2>". $row["Locus_Tag"]. "</h2>";
   echo "<h1>Gene_Type:   </h1>" . "<h2>".$row["Gene_Type"]. "</h2>";
   echo "<h1>Gene_Symbol:   </h1>" . "<h2>".$row["Gene_Symbol"]. "</h2><br>";
   }

   if($calc_gc_cont2 == "calc_gc_cont")
   {
    echo "<h1>GC:   </h1>";
    echo "<h2>".GC($temp)."</h2>";
   }
   if($dna_transc2 == "dna_transc")
   {
    echo "<h1>DNA-Transcription:   </h1>";
    $transcr = Transcription($temp);
    $index = 0;
    while($index <= strlen($transcr) + 1)
    {
     echo "<h2>".substr($transcr,$index,50)."</h2>";
     $index += 50;
    }
   }
   if($complement2 == "complement")
   {
    echo "<h1>DNA-Complement:   </h1>";
    $comp = Complement($temp);
    $index = 0;
    while($index <= strlen($comp) + 1)
    {
     echo "<h2>".substr($comp,$index,50)."</h2>";
     $index += 50;
    }  
   }
   if($rev_comp2 == "rev_comp")
   {
    echo "<h1>DNA-ReverseComplement:   </h1>";
    $rcomp = ReverseComplement($temp);
    $index = 0;
    while($index <= strlen($rcomp) + 1)
    {
     echo "<h2>".substr($rcomp,$index,50)."</h2>";
     $index += 50;
    }   
   }
   if($dna_trans2 == "dna_trans")
   {
    echo "<h1>DNA-Translation:   </h1>";
    Translation($temp);    
   }  
   if($display_influ2 == "display_influ")
   {
    printInfluenza($conn);    
   } 
   if($display_all2 == "display_all")
   {
    printAllData($conn);    
   }  

}
}
elseif($choice == "inserted-seq")
{
    $choice2 = $_POST['choice2'];

    if($choice2 == "apply_fun")
    {

        $seq_id3 = $_POST['seq_id3'];
        $calc_gc_cont3 = NULL;
        $dna_transc3 = NULL;
        $complement3 = NULL;
        $rev_comp3 = NULL;
        $dna_trans3 = NULL;
        $display_influ3 = NULL;
        $display_all3 = NULL;
    
    
        if (isset($_POST['calc_gc_cont3'])) {
    
            $calc_gc_cont3 = $_POST['calc_gc_cont3'];
        } 
        if (isset($_POST['dna_transc3'])) {
    
            $dna_transc3 = $_POST['dna_transc3'];
        } 
        if (isset($_POST['complement3'])) {
    
            $complement3 = $_POST['complement3'];
        } 
        if (isset($_POST['rev_comp3'])) {
    
            $rev_comp3 = $_POST['rev_comp3'];
        } 
        if (isset($_POST['dna_trans3'])) {
    
            $dna_trans3 = $_POST['dna_trans3'];
        } 
        if (isset($_POST['display_influ3'])) {
    
            $display_influ3 = $_POST['display_influ3'];
        } 
        if (isset($_POST['display_all3'])) {
    
            $display_all3 = $_POST['display_all3'];
        } 
    

        // Create an SQL SELECT statement to check if the ID exists in the table
        $sql = "SELECT COUNT(*) FROM inserted_sequences WHERE ID = '$seq_id3'";

        // Execute the SQL statement and get the result
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        $count = $row['COUNT(*)'];
 
        // Check if the row exists
        if ($count == 1) {

        $sql = "SELECT * FROM inserted_sequences where ID = $seq_id3";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) 
        {

        while($row = $result-> fetch_assoc())
        {

        echo "<h1>ID:   </h1>" ."<h2>". $row["ID"]. "</h2>";
        echo "<h1>User_ID:   </h1>" ."<h2>". $row["User_ID"]. "</h2>";
        $index =0 ;
        $temp = $row["Sequence"];
        echo "<h1>Sequence:   </h1>" ;
        while($index <= strlen($temp) + 1)
        {
        echo "<h2>".substr($temp,$index,50)."</h2>";
        $index += 50;
        }

        echo "<h1>Description:   </h1>" ."<h2>" .$row["Description"]. "</h2>";
        echo "<h1>Organism:   </h1>" . "<h2>".$row["Organism"]. "</h2>";
        echo "<h1>Locus_Tag:   </h1>" ."<h2>". $row["Locus_Tag"]. "</h2>";
        echo "<h1>Gene_Type:   </h1>" . "<h2>".$row["Gene_Type"]. "</h2>";
        echo "<h1>Gene_Symbol:   </h1>" . "<h2>".$row["Gene_Symbol"]. "</h2><br>";

        if($calc_gc_cont3 == "calc_gc_cont")
        {
        echo "<h1>GC:   </h1>";
        echo "<h2>".GC($temp)."</h2>";
        }
        if($dna_transc3 == "dna_transc")
        {
        echo "<h1>DNA-Transcription:   </h1>";
        $transcr = Transcription($temp);
        $index = 0;
        while($index <= strlen($transcr) + 1)
        {
        echo "<h2>".substr($transcr,$index,50)."</h2>";
        $index += 50;
        }
        }
        if($complement3 == "complement")
        {
        echo "<h1>DNA-Complement:   </h1>";
        $comp = Complement($temp);
        $index = 0;
        while($index <= strlen($comp) + 1)
        {
        echo "<h2>".substr($comp,$index,50)."</h2>";
        $index += 50;
        }  
        }
        if($rev_comp3 == "rev_comp")
        {
        echo "<h1>DNA-ReverseComplement:   </h1>";
        $rcomp = ReverseComplement($temp);
        $index = 0;
        while($index <= strlen($rcomp) + 1)
        {
        echo "<h2>".substr($rcomp,$index,50)."</h2>";
        $index += 50;
        }   
        }
        if($dna_trans3 == "dna_trans")
        {
        echo "<h1>DNA-Translation:   </h1>";
        Translation($temp);    
        }   
        if($display_influ3 == "display_influ")
        {
        printInfluenza($conn);    
        } 
        if($display_all3 == "display_all")
        {
        printAllData($conn);    
        } 
    }
    }
    }
    else 
    {
    echo "<h1>Error: This ID provided is not in the database table to select it.</h1><br>";
    }
    // Execute the SQL statement
    }
    elseif ($choice2 == "update_seq")
    {
        $seq_id4 = $_POST['seq_id4'];
        $seq2 = $_POST['seq2'];
        $organism_name2 = $_POST['organism_name2'];
        $gene_type2 = $_POST['gene_type2'];
        $gene_symbol2 = $_POST['gene_symbol2'];
        $locus_tag2 = $_POST['locus_tag2'];
        $description2 = $_POST['description2'];

        // Create an SQL SELECT statement to check if the ID exists in the table
        $sql = "SELECT COUNT(*) FROM inserted_sequences WHERE id = '$seq_id4'";

        // Execute the SQL statement and get the result
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        $count = $row['COUNT(*)'];

        // Check if the row exists
        if ($count == 1) {

            $sql = "UPDATE inserted_sequences SET User_ID = '$User_ID', Sequence = '$seq2', Organism = '$organism_name2', Locus_Tag = '$locus_tag2', Description = '$description2', Gene_Type ='$gene_type2', Gene_Symbol = '$gene_symbol2'  WHERE ID = '$seq_id4'";
    
            if ($conn->query($sql) === TRUE) 
            {
            echo "<h1>Row updated successfully</h1>";
            $sql = "SELECT * FROM inserted_sequences where ID = '$seq_id4'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) 
            {
    
            while($row = $result-> fetch_assoc())
            {
    
            echo "<h1>ID:   </h1>" ."<h2>". $row["ID"]. "</h2>";
            echo "<h1>User_ID:   </h1>" ."<h2>". $row["User_ID"]. "</h2>";
            echo "<h1>Description:   </h1>" ."<h2>" .$row["Description"]. "</h2>";
            echo "<h1>Organism:   </h1>" . "<h2>".$row["Organism"]. "</h2>";
            echo "<h1>Locus_Tag:   </h1>" ."<h2>". $row["Locus_Tag"]. "</h2>";
            echo "<h1>Gene_Type:   </h1>" . "<h2>".$row["Gene_Type"]. "</h2>";
            echo "<h1>Gene_Symbol:   </h1>" . "<h2>".$row["Gene_Symbol"]. "</h2><br>";
            }
            }    
        } 
        // Execute the SQL statement
        } 
        else 
        {
            echo "<h1>Error: This ID provided is not in the database table to update it.</h1><br>";
        }
    }
    elseif ($choice2 == "delete-seq")
    {
        $seq_id5 = $_POST['seq_id5'];
        // Create an SQL SELECT statement to check if the ID exists in the table
        $sql = "SELECT COUNT(*) FROM inserted_sequences WHERE id = '$seq_id5'";

        // Execute the SQL statement and get the result
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
        $count = $row['COUNT(*)'];

        // Check if the row exists
        if ($count == 1) 
        {
            $sql = "SELECT * FROM inserted_sequences where ID = '$seq_id5'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) 
            {

            echo "<h1>The row information you want to delete is :   </h1>";

            while($row = $result-> fetch_assoc())
            {
    
            echo "<h1>ID:   </h1>" ."<h2>". $row["ID"]. "</h2>";
            echo "<h1>User_ID:   </h1>" ."<h2>". $row["User_ID"]. "</h2>";
            echo "<h1>Description:   </h1>" ."<h2>" .$row["Description"]. "</h2>";
            echo "<h1>Organism:   </h1>" . "<h2>".$row["Organism"]. "</h2>";
            echo "<h1>Locus_Tag:   </h1>" ."<h2>". $row["Locus_Tag"]. "</h2>";
            echo "<h1>Gene_Type:   </h1>" . "<h2>".$row["Gene_Type"]. "</h2>";
            echo "<h1>Gene_Symbol:   </h1>" . "<h2>".$row["Gene_Symbol"]. "</h2><br>";
            }

            }    

            $sql = "DELETE FROM inserted_sequences WHERE id = $seq_id5";
    
            if ($conn->query($sql) === TRUE) 
            {
            echo "<h1>Row deleted successfully</h1>";
            } 
        // Execute the SQL statement
        } 
        else 
        {
            echo "<h1>Error: This ID provided is not in the database table to delete it.</h1><br>";
        }        
    }
    else
    {
        echo "<h1>Error, you need to choose one of 3 options to work on!</h1><br>";
    }
}
// Close connection
$conn->close();

?>
    </body>
</html>