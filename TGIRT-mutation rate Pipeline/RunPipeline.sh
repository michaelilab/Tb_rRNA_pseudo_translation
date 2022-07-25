#!/usr/bin/env tcsh

set path1="Input/"
set MAX=100000
set file2="DB/TB_rRNA_chr2.fa "
set rRNA="DB/TB_rRNA"
set type="rRNA"

foreach fastq_file ($path1/*R1*.fq.gz)
   echo $fastq_file
   set base=`basename $fastq_file|cut -f1 -d\.`
   echo $base
   set fastq_file2=`echo $fastq_file |sed -e 's/_R1_/_R2_/'` 
   echo $fastq_file2

   #align to rRNA 
   smalt map $rRNA $fastq_file $fastq_file2 > $base\_vs_$type.sam
   
   #convert to bam, sort and index  
   samtools sort $base\_vs_$type.sam > $base\_vs_$type\_sorted.bam
   samtools index $base\_vs_$type\_sorted.bam
   rm  $base\_vs_$type.sam
   
   #nucs stats
   pysamstats  -d -f $file2 --type=variation --max-depth=$MAX $base\_vs_$type\_sorted.bam  >$base\_nuc_stats_$type.stats
   
end




 
