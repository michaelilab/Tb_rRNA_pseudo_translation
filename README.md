# Tb_rRNA_pseudo_translation

A single pseudouridine on rRNA matters: A specific effect of rRNA modification on translation in the human parasite Trypanosoma brucei

## Pseudouridine RNA modifications on rRNA in the human pathogen Trypanosoma brucei: 

HydraPsiSeq pipeline

HydraPsiSeq pipeline came from the repository - https://github.com/FlorianPichot/HydraPsiSeqPipeline with minor modifications

An UNIX shell, PERL and the R software are needed to use these scripts.

The "Unix_scripts" needs smalt, samtools, perl and Bedtools. You can use your own alignment tools if you prefer, but be sure that the alignment output in SAM/BAM format. Bedtools is mandatory. These pipeline requires paired-end sequencing data.

General pipeline: Alignment (Unix script) --> NormUCount (R script) --> Analysis with list of known sites(R script)


## TGIRT-mutation rate for rRNA in the human pathogen Trypanosoma brucei:

An UNIX shell, smalt, PERL, samtools  and the pysamstats software are needed to use this script.


