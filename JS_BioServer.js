function validateForm()
{
    let choice = document.forms["bioserver_form"]["choice"].value;
    const genetype = ["dna","DNA"];

    if(choice == "influenza-a")
    {

        let seqID = document.forms["bioserver_form"]["seq_id1"].value;
        if(seqID == "" || !Number(seqID) || Number(seqID)< 1 || Number(seqID) > 8)
        {
            alert("Error: Sequence ID must be from 1 to 8 for Influenza A Virus Genes");
            return false;
        }
    }
    else if (choice == "out-seq") 
    {
        let seqID2 = document.forms["bioserver_form"]["seq_id2"].value;
        let seq1 = document.forms["bioserver_form"]["seq1"].value;
        let organism_name1 = document.forms["bioserver_form"]["organism_name1"].value;
        let gene_type1 = document.forms["bioserver_form"]["gene_type1"].value;
        let gene_symbol1 = document.forms["bioserver_form"]["gene_symbol1"].value;
        let locus_tag1 = document.forms["bioserver_form"]["locus_tag1"].value;
        let description1 = document.forms["bioserver_form"]["description1"].value;

        if(seq1 == "")
        {
            alert("Error: You must enter the sequence");
            return false;
        }

        if(seqID2 == "" || !Number(seqID2))
        {
            alert("Error: You must enter sequence ID as an ineteger value");
            return false;
        }

        if(organism_name1 == "")
        {
            alert("Error: You must enter the sequence organism");
            return false;
        }
        if(gene_type1 == "" || !genetype.includes(gene_type1))
        {
            alert("Error: You must enter the gene type ex: (DNA , dna)");
            return false;
        }
        if (gene_symbol1 == "")
        {
            alert("You must enter the gene symbol");
            return false;
        }
        if (locus_tag1 == "")
        {
            alert("You must enter the locus tag");
            return false;
        }
        if(description1 == "")
        {
            alert("You must enter description");
            return false;
        }
    } 
    else if(choice == "inserted-seq")
    {

        let choice2 = document.forms["bioserver_form"]["choice2"].value;
        if(choice2 == "apply_fun")
        {

            let seqID3 = document.forms["bioserver_form"]["seq_id3"].value;
            if(seqID3 == "" || !Number(seqID3))
            {
            alert("Error: You must enter sequence ID as an integer value");
            return false;
            }
        }
        else if (choice2 == "update_seq")
        {
            let seqID4 = document.forms["bioserver_form"]["seq_id4"].value;
            let seq2 = document.forms["bioserver_form"]["seq2"].value;
            let organism_name2 = document.forms["bioserver_form"]["organism_name2"].value;
            let gene_type2 = document.forms["bioserver_form"]["gene_type2"].value;
            let gene_symbol2 = document.forms["bioserver_form"]["gene_symbol2"].value;
            let locus_tag2 = document.forms["bioserver_form"]["locus_tag2"].value;
            let description2 = document.forms["bioserver_form"]["description2"].value;
    
            if(seq2 == "")
            {
                alert("Error: You must enter the sequence");
                return false;
            }
    
            if(seqID4 == "" || !Number(seqID4))
            {
                alert("Error: You must enter sequence ID as an integer value");
                return false;
            }
    
            if(organism_name2 == "")
            {
                alert("Error: You must enter the sequence organism");
                return false;
            }
            if(gene_type2 == "" || !genetype.includes(gene_type2))
            {
                alert("Error: You must enter the gene type ex: (DNA , dna)");
                return false;
            }
            if (gene_symbol2 == "")
            {
                alert("You must enter the gene symbol");
                return false;
            }
            if (locus_tag2 == "")
            {
                alert("You must enter the locus tag");
                return false;
            }
            if(description2 == "")
            {
                alert("You must enter description");
                return false;
            }
        }
        else if (choice2 == "delete-seq")
        {
            let seqID5 = document.forms["bioserver_form"]["seq_id5"].value;
            if(seqID5 == "" || !Number(seqID5))
            {
                alert("Error: You must enter sequence ID as an integer value");
                return false;
            }            

        }
        else
        {
            alert("Error: You must pick one of the three options for already inserted sequence");
            return false;
        }
    }

  return true;     

}