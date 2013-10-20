#/bin/bash

make
EXEC_NAME=lexer

S1="AUGATGCCAAGAACAAAGCAGATA{A,C,G,T}ATCCCCGTAACCTTAGAGATAAAATCGAGGAGGCCCAAAAAGAAT TAAATGGCGCGGAGGTTTCGAAGAAGGAAGTCCTCGAGGCTGGGGTTAAGGGGACGTCCGAGTCATTAAA GGGGGTGAAGCGAAAGAAAATCGTAGCCGAAAACCACCTGAAGAAAATCCCCAAAAGTCCGCTAAGGAAT CCTCTTCAAACGAAACACAAGCAGAACACAGAAGAACCCCCCTTCTCTGTCCTCCCGTCGGCAAGCGAAT CCCATAAAAAACATAACTGCGTTCCGGCGAAACAGGGGAGACAATTTACGAAACAGAATGGGGAGACACC TGGTATGACGGCTGAATCTAGCGAAAGCGGCGATTTGGTAAGTCCGAAGAAGACCTCATCACCGCATCAG CGTTCGGAACTGAGGCGGTGGCGCAGTGAAGGAAGCGACCCAACCAGACTCTCCGGCCTGGATGGACAGC GAGATTCGAGTAGCAGTTCTTCTAAAGCGCGTACGGACAATTCTGAGTGCAGCTCCCCTTGTTGCTCCAC CACACCTCCTTCATACACATCAACGGCTTTTGACGTTCTGCTTAAGGCGATGGAACCTGAGCTGTCAACG TTGAGCCAAAAAGGATCCTCATGTGCAATCAAAACCGAAAAACTCAGACCAAACAAGACTGTCAGGAGTC CCTCCAAGTTGAAGAATTCCAGCCTTGATGCCCCGAACGCGACAAGCCCAGACCTTGTTGTCGAGTCTCC ATGTCCTCCTTGTACATCGTATCCTGTACATGTGGCATCGACGCAAAAATCTGAACAAGTAGCCGCGCAA TGTGTGTCGCATCTTTACTCTTCACAAGATCATCTAGTGCCAAAGTTGAGTCAACAGAACCAGCAACTAC CCGGGCATCTGGGGTTTACAGGATCACTCACGAACCTCCATACTCTCGAATCGACGAAGCTTGAGCCCAT CTACAATACGGCGGTTACGTCTACAGTCGGACTGACCTCTCCAAGCACCAGGACACAAGTGACACCCCCG CATCAGCAGATGGACAGCGTATCCCCGTTGAGCGTATCGCCGGCCAGTTCAACCCAGTCACCACCCGGAC CCATATATTCATCAGCACACGTAGCCTCAGTGGTATCTCAGAGCGTTGAACAGATGTGTTCACTTTTGCT CAGGGACCAGAAGCCCAAGAAACAGGGCAAATACATTTGTGAGTACTGCAATAGAGCGTGTGCGAAACCT TCAGTTCTCTTAAAGCATATTCGCTCCCACACTGGAGAGCGGCCTTACCCGTGTGTAACGTGCGGTTTTT CATTTAAAACTAAATCCAATCTTTATAAACACAAGAAATCCCACGCGCATACCATCAAGCTCGGTTTGGT TCTACAACCGGAAGCCGGGGGGCTCTTCCTCAGCCAGGAATGCCCGAAGGCCTTAAGCGTTCATTCGGAC ATCGAAGATTCGGGTGAGTCTGACGAGGAGGGGCTAGCCGACGGGCGGCAGAACAATCCTTGCGTTAAGG ATTTGCAGCCGGTCCAGACAATGAAAACCGTTAGTAACCCTGAATCTCTGCCCAAACTTATCCCGTCCAA CAGTGATCACGTGGTCAGGGGTTTCAGCAGCCAGGACCGGCCGTCAGATTCTCAAGCCCCGACTGAGTTG CCAAAGGTAGTGGTTCATCCTGTTTCAATGCCTCCGTTAAAGACGGACTGCCTTCAGGTCGCCAACCCTA ATCCCGAGCTCCCAAGTCCCCAAAGTCCAAGGGATCTTCACGTCGCCAGCATATTATCACATTCTGCATC CGTATCGTCTTTAGAAATGGACGAATCGTGCCACCAAAAGGGGGATGTGATACAAAGTGAGGGCAAACCA GATTCTCACTCTGGTACTGCACACGCACAACTCCAACGACAGCAGGCGACCGAGGACCCTCAGGAGCAGC AGGGGAAGTTATTGTTGTCTCCTAGGTCGCTTGGAAGTACGGACTCAGGGTACTTCTCGAGATCAGAGTC GGCTGACCAAGCTGTGTCACCACCTACACCCTTTGCGAGAACTTTTCCGACAATGGATCCTGACCCGGCT AAAAATGGAGGAGCTCCAGGCCCACGGATCTCAGCTCCAGCCCCTTCAGCGTTGGCGACGGGAGAGAAGA GCTCCGTCGTAACCGGACAGATGCGCCCACCTCTCGCAACCAAGACACTGGAGGAAAGGATATCGAAATT AATATCGGACAATGAGGCCTTGGTTGATGATAAACAACTTGATTCGGTTAAGCCTCGAAGGACCTCACTA AGCCGTCGGGGTTCAATTGACTCTCCAAAAAGCTATATCTTCAAGGACAGCTTTCAATTTGATTTAAAGC CGATGGGGCGTCGCACAAGCAGTTCCTCAGACATCCCCAAGTCCCCATTCACGCCCACCGAAAAGTCGAA GCAAGTTTTTCTGCTGTCAGTCCCCTCGCTCGACTGCCTCCCTATTACGAGGAGCAACAGCATGCCGACT ACTGGATACAGCGCCATACCCGCAAACATCATTCCACCGCCGCCTAGTTTAAGGGGGAGCCAAAGTTTTG ACGACAAGATCGGGACATTATATGACGATGTGTTCGTTTCTGGTCCCAATCCGTCTATGCCTCCCAGTGG TCATCATCGACCGCTAGTTAGGCAGGCAGCGGTAGAGGACAGTACGGCCTCCGAGTCTCACGTGCCGGGT AGCGGCCAGTCCGTTGATGAGTCGTGCCAGGGGTGCCCGAGCTCGTCTGAGGCGGGCCCCGTGCAAAGCA AAGCGGCCCAAACCCCACATTTGGAGAAAAAGAAATCACATCAGGGGAGAGGCACGATGTTCGAATGCGA AACTTGTCGAAATAGGTATAGGAAGTTAGAGAACTTTGAGAACCACAAAAAGTTCTATTGCTCCGAGTTA CACGGCCCTAAGACCAAGGCGGCGGTACGAGAAGCGGAACATGGACCGGCTCCAGGAGGGGCACAGCCAC AAGTCCTGCATTATAGGGTAGCGGCACCTACGGCCGTATGGGAGCAGACGCCTCAGATTAGGAAGAGACG GAAGATGAAGAGCGTAGGAGACGAAGAAGATCTTCAACCGCACGAATCTGGTCGCTCCCCAGAAAGTGCA GACGCGCTACAATTACAGCCCGTACCTGGAGCCGCTCCTAGCCCCTCTAAGCATACGTCTGCCACTGCGG CAGACCAAGCTCATCGGGGCGTCCAGCTCGTCGCACGAGGTCCTGAAAGGGCGCTGCCTCTAAAACAATG TCCAATGGTGGAACAGCAGCTTAATGCTGCTGCTCAGGACAAAATGGAAGTCAAGCGTCAAGGGGGTGGT ATCTCAGTCATTCAACATACTAATTCTTTAAGCCGACCCAACAGTTTCGACAAGCCAGAGCCCTTAGAAG GGGGGATTACCTTCTCTTTGCAGGAATTAGGACGCACCGGTATGCCGGGGGCGCTTAAGGTCATCGGTAT GGCACCAGAGGAGGGGCACCCGCCACAAGACGCTATGCACCAAACCGCACTTTCCCACAATCTCCGCGGC
GAACCACGCGAAAGCGCCAGGAAAATTCCGTCAGAGCGATATGTCCTCGGTCAACCACTTAGGCTTGTTC GACAGCATAACATACAGGTGCCAGAAATACTCGTCACGGAGGAACCGGATCGGGATCTGGAAGCCCAATC ACATGATGAAGAGAAATCCGAGAAGTTTACGTGGCCGCAGAGATCCGAGACGCTGTCAAAACTTCCAACC GAGAAGTTGCCGCCTAAGAAAAAGCGGCTACGACTTGCTGAGATCGAGCATTCAAGCACAGAAAGCAGCT TTGAATCAACCTTGTCGCGGTCCCTATCCCGCGAGTCTTCCCTTAGCCACGCGAGCTCTTTTAGCGCGTC TCTAGACCTCGAGGACATTTCAAAAGTTGAGCTTGCGCCTAAAATCGATTTTCCATCTAAGGCCGAATTT CTCCTAATACCACTGGGATCCAACACTCT{A,C}TCCGTGCCGGGGTCACATCGCGAAATGCGTAGGGCTGCAA GCGAGCAGATCTCGTGCGTTCCCACCCTCATGGAAGTATCGGATTTTCGTAGTAAGTCTTTCGACTGCGG GAGTATCGCCCCGTCCCATGTTGTCCCTGCGCTGGTTGAATCGCAACCGAGCTACTCTCCGTCAGCTGTT GGCGGCACAGCCCACGTCCCACTGTTGGAGAGGCGGAGAGGTCCGCTTATCCGTCAGATTAGTCTGAACA TTGCTAGCGATTCACACCTATCCCCAGGCAGCGCAGCAGCTCTGCAAACCATTGTCTTGCCAAGTGTAAA TACAGTCCCATTCCAGGCGCCCCGTTTACCGGATATGGCTTCCGCCGATTGCCCGGCCCATACTGTCCAT CCTCAGGCCTTGGCAAAAGACCTCCAGGCCGAGATTTCGTCTTCGAGCAGTACAGATACCTTTCCTCCGC AGCAACTATTTGGAGCTCACTTGCTCAATAAAACCAATACTTCTCTGTCACATCAGAACACGCCGCTTCC TCTGCCCGTATCAGCTCAGGGTGGGAAACCGGACGCAGCTCCAACAGCATGCGTTAGCTCCACGGGGGAG GGAAGCTTTGCACCAAAATACCAGCTACAATGTCAGGCTTTTACGTCAGACCAGGGTTGCTCCGCCCCGT TACGCTCTAGCCCAAACCAAGTTCTGCCAGGCCAGGCCGGTGCGGATCCCTGCCCAGCTTCAGAAGCTCC GCCAGCTAAGGCCGCTGACCCAATGGCCAAACCTTGCCCCCTTCCTCCACTCGAACTGGGTCTACCGCGT GACGAAGTTTTGCAGAAACAGCTGCCCTCATTCGTTCTGCCGGTGCCTCAAAAGCGAAACGTGACGGTGG ATTGCTTTACCCCGGTGACGTCGTTACCCCAGATTCTTGTGACTCAAGACCTACCAAATATGCCCATATG CCAGACTAATCAGTCCCTAGTCCCTGTAAGCGAAGAGCAGAATTCTATGCCGAAATCGCAAAATTACTTA CAAAACGCTTCTCCCACACCGGAGAAGGAGTTAGCGTGTAAGACTGTACTCCCCGAAGTTGGCCAATCAG TTCCGGTTTCGGAGTCAAGTCCAACTGTGCAAAAGGTCTCAGTAGGACGCCTATCGCCCCAACAGGAATC TTCAGCGTCATCAAAGCGGATGCTTTCTCCAGCCAATAGTCTCGACATAGCCATGGAAAAACACCAAAAA CGTGCGAAAGATGAAAACGGCGCAGTATGTTCGACAAACATTAGGGCATTGGAGTTGCCTAGTTCTCGTG CGAACGAATCACATAAGCAGAAGAAACCGGTATTGGTGCGTCAACTGTGCACAACTGAACCCTTAGAAGG CGCTGCGCTAGAGCAAGGGGCGTGCTCAGCTAGCGGCAGAAGCTCTAACAAGGCGGCAAATCTGACCCAA GTGTTGCCAACGGACTCACTCTCTAGCAGGCCATCGACGTTTGCGGTAACCGACCACGTAAATGAATTAC AGGAATTCAAGAACACGAAGGTATCCACCTCCTTGACGCCGACGGTGGGTTCCTTCCCGGCTCCAAGCGA GAGCGCTTGCGTCCTCCCACTTAAGAGTATTGATAATAACCAAGAGAAAGGCTCCCCTGGGGTACGGCAT GAAGAGAACAAAGTAATTCAGGGCCAGCGGCCCCCCTTAGTGAGCGGTCTTAGCTTGGTCAGTTCCTCCG ATACCCAACAGCCGTCGTTCCCCTCCCTGAAAACGGCCACATCGTTTACGTGGTGTTACCTTCTCAGGCA AAAGGCTCTGCCTCTCGCACAAAATGATCAGAAAACAAGTGCTTACACAGGGTGGACAGTTTCTTCAAGT AATCCAAACCCATTGGGATTGCCTACGAAAGTGGCGTTGAGCCTTCTAAACTCAAAGCAAAAAACAGGGA AATCGCTTTATTGCCAGGCAATTACAACACACTCTAAGTCCGATCTGGTTGTTTACTCCTCTAAGTGGAA AAACAACTTAAGCAAAAGGGCTCTGGGAAATCAAAAAGCAACTGTTGTAGAATTCAGCAATAAGGACGAC TCCGAGATTAACTCCGAACAGGATAAAGAGAACTCCCTAATTAAAAGTGAACCCAGACGTATCAAAATTT TTGATGGCGGCTATAAGTCGAACGAAGATTATGTTTATGTACGTGGTCGGGGTAGAGGGAAGTACATCTG TGAAGAATGTGGAATACGCTGCAAAAAACCGTCAATGCTTAAAAAACATATTCGAACGCATACCGACGTA CGGCCATACCACTGCTCGTATTGTAATTTTTCATTCAAAACGAAGGGAAACCTGACAAAACACATGAAAA GTAAAGCACACAGCAAGAAGTGCGTCGATTTAGGAGTAAGTGTCGGGCTAATTGATGAGCAAGATACTGA GGAATCTGACGAAAAACAGCGATTTGGATGTGAGAGGTCTGGGTATGATCTAGAAGAAAGTGACGGACCC GATGAGGACGATAATGACAATGAGGAAGATGATGACGATAGCCAGGCTGAGTCTGGCTTGTCTGCGGCTC CTAGTGTGACGGCGAGCCCTCAACACCTACCTTCCCGTTCTGGACTCCAGGACCCAGGCTCTGTCGAGGA GGAACTGCGTGTTAGTTCGTGCTTTTCAGGGGTACATACCGACCCCATGGATATCCTCCCGCGTGCCCTA CTAACCAAGATGACCGTGTTATCCACTGTGCAAAGTTCGCCTAATCGAACTGACTTACCTGCAAAGGCAA GACAAAGTACGGAGAAGGATGAACATGAACAGGCCCCCCCAGCCGACACGCCACGGTCACCCGGGCATCA GCTTTCCGTGCACAGCTCAGAATCGGACGTGCTTCGCTCCCCCGCGGCCGGGAATCCTGCAGCTGGGTCG CCAGGCGCAGCTGTTCAGGATTCTTCCGTTGGTCTCCCGCCCGCGGTGGCGCAACTGAATCCTCAGCCGG CAGCTCGTATTTCTAGTTCCGTATCGCCGCATCCCGATTCTCAAGACCAGAAACAGCAAATAATTTTACA ACCTCCACCGGGATTACCATCGCCGCAAACTCACTTATTCTCCCACTTGCCATTACATAGTCAACAACAA TCACGGACGCCGTACAACATGGTGCCAGTTGGGGGTATACACGTAGTAACAGCTGGGCTGACGTATTCAA CATTTGTACCGATCCAAGCTGGCCCAATGCAGCTGACGATCCCAGCCGTGTCGGTTATCCACCGAACAGT GGGCACAAGCGGGGATACGATAACCGAGGCGTCTGGGTCCCCCAACCGACCCACCGGGGTAGCGGAACTT AGCAGCGTCGTTCCCTGCATTCCTATAGGTCAGATCCATGTCCCTGGACTGCAGAACCTGTCGCCGCCGG CGCTCCAATCTTTGACGTCACTAGGCATGGAGACAGTCAACCTCGTGGGATTAGCGAATGCTACGGTTGG 
ACCCCAGGGACATCCGCCTGGATTGGCCCTGAATGCCGTGGGACTTCAGGTCCTAGCAAATGCCCCCGCA CAGTCGTCGCCCGCACCTCCGGCTCATATCCAGGGACTGCAGATTCTCAATATCGCTTTGCCTACTCTCA TCCCCTCGGTTGGCCCTGTTGCGGTTGGAACCACCGGAACACCCGAAACCACCGCGCCCAATAGTAAAGC TATGGAACTTCAGATGCCAGCCGGCCAAGGACATTCCGCCGAGCCCCCACAAGGTAGTCCCGAAGGACCC CAAGAAACGCCACAGACGGTGTCCGGGCCTAGTGCTGACCACGCCCGACCGGAGGATTCGACCAAGATGG ACACAAAGAAAGGTCCTAGTGCGGGACACGTCTTACCCGGGAGATCCCCGGCCCAGGCTCAGCCGGCACC GACTCCTGAAGCTCTGCAAAAGGTTGCTACCTCAGCCCCACCCTCACTACCGACGGACCGAGCCGCTCCC AGACCGCCTGTGCCCCACCGTCAGCCCATAGTCCACTTCTCAGATGTATCCTCTGACGATGATGAGGATC GATTGGTTATTGCAACTTAG"

S2="AUGATGACTATTACCATGTTTACACCCATAGAGTTGCCACCAACCTATTACATAAGCCTCCACATGAATG TGCCGATCTCACCCCTCTATCCATGGGGAATGCCGTATACCCGGTCTACATCCTTCTCGCATACTACCAC CATCTATACGAATACCAATACAAATACCACAACTATTGAACGAAAGGATTCGGGAATCTGCATACCATCA AATACCACGTCCCGAAAACCAAGCACAATTACGATTAATCCCAAGCCAACCACAACTACAACGTACGCGG CGCCTAGCCGGTGGACAACCCTTACGTCTCCTGCGGAGCAAACAAAGGCTCTTGACTTTCTTACTAACAA TTATCATACGATTCAGACCTTACAGGCAGCGAACTATACCATTACTCCGGATACAACTAAGAATAATATT CGGTTTCAGCAGACGCCAAGCACTAATGACCCTTCTGCGCGGCGTGCAGTCAGTCTGGACTGCGAAATGG TAACGGATACAACTGGCCGGACTCAATTGTGCCAAGTAAGTATGGTTGATGTTCTGACAGGCGAACTGCT GCTGGACCAGCCAGTTCTTCCGAGCGAACCCGTCTCAGACTGGAGAACCAAATGGAGTGGGATGACCGCC GAGTTAATGGCCCAGCACGTCGCGGCCGGCCGTACCGTCAACGGGTACGAAGGAGCGAGAGCACGCGTGT GGGAATACATTGATCAAAAAACAATCTTAGTAGGGCAGAGTCTCAACTTTGATCTTGACGTTTTAGGCAT AGTGCACGAGCGGGTCGTAGACACTTACCTGCTCATGCGGGGACAGAGACGGGGACGTTCTTGTAGGTTA AGGGATGTCGTCCGGGACTGCTGCGGAGTCGAGATACAGAAAGGCGAAGAACTCGAGGGGGGGCATGATT GTGCGGAAGACTGTTATGCTGCGAGGGAAGTAGCGCTTTGGGCAGTCGAACATCTTGGACGAGATGAGGC GTTCATCTCCAGGAGTATGTCCCCCATAGATGACAAATTTCAGTTGTCGTCTGCATACTTCCCCGCGACC TGTTATTGTATCCCTCGGGATGCTGAGTGGGCTACTTTTCATGGTTGGACATTGAGGGTGGATACATACG ACACCACTCACGTTAATTACTAA"


SALIDA_S1="MPRTKQIHPRNLRDKIEEAQKELNGAEVSKKEVLEAGVKGTSESLKGVKRKKIVAENHLK KIPKSPLRNPLQTKHKQNTEEPPFSVLPSASESHKKHNCVPAKQGRQFTKQNGETPGMTA ESSESGDLVSPKKTSSPHQRSELRRWRSEGSDPTRLSGLDGQRDSSSSSSKARTDNSECS SPCCSTTPPSYTSTAFDVLLKAMEPELSTLSQKGSSCAIKTEKLRPNKTVRSPSKLKNSS LDAPNATSPDLVVESPCPPCTSYPVHVASTQKSEQVAAQCVSHLYSSQDHLVPKLSQQNQ QLPGHLGFTGSLTNLHTLESTKLEPIYNTAVTSTVGLTSPSTRTQVTPPHQQMDSVSPLS VSPASSTQSPPGPIYSSAHVASVVSQSVEQMCSLLLRDQKPKKQGKYICEYCNRACAKPS VLLKHIRSHTGERPYPCVTCGFSFKTKSNLYKHKKSHAHTIKLGLVLQPEAGGLFLSQEC PKALSVHSDIEDSGESDEEGLADGRQNNPCVKDLQPVQTMKTVSNPESLPKLIPSNSDHV VRGFSSQDRPSDSQAPTELPKVVVHPVSMPPLKTDCLQVANPNPELPSPQSPRDLHVASI LSHSASVSSLEMDESCHQKGDVIQSEGKPDSHSGTAHAQLQRQQATEDPQEQQGKLLLSP RSLGSTDSGYFSRSESADQAVSPPTPFARTFPTMDPDPAKNGGAPGPRISAPAPSALATG EKSSVVTGQMRPPLATKTLEERISKLISDNEALVDDKQLDSVKPRRTSLSRRGSIDSPKS YIFKDSFQFDLKPMGRRTSSSSDIPKSPFTPTEKSKQVFLLSVPSLDCLPITRSNSMPTT GYSAIPANIIPPPPSLRGSQSFDDKIGTLYDDVFVSGPNPSMPPSGHHRPLVRQAAVEDS TASESHVPGSGQSVDESCQGCPSSSEAGPVQSKAAQTPHLEKKKSHQGRGTMFECETCRN RYRKLENFENHKKFYCSELHGPKTKAAVREAEHGPAPGGAQPQVLHYRVAAPTAVWEQTP QIRKRRKMKSVGDEEDLQPHESGRSPESADALQLQPVPGAAPSPSKHTSATAADQAHRGV QLVARGPERALPLKQCPMVEQQLNAAAQDKMEVKRQGGGISVIQHTNSLSRPNSFDKPEP LEGGITFSLQELGRTGMPGALKVIGMAPEEGHPPQDAMHQTALSHNLRGEPRESARKIPS ERYVLGQPLRLVRQHNIQVPEILVTEEPDRDLEAQSHDEEKSEKFTWPQRSETLSKLPTE KLPPKKKRLRLAEIEHSSTESSFESTLSRSLSRESSLSHASSFSASLDLEDISKVELAPK IDFPSKAEFLLIPLGSNTLSVPGSHREMRRAASEQISCVPTLMEVSDFRSKSFDCGSIAP SHVVPALVESQPSYSPSAVGGTAHVPLLERRRGPLIRQISLNIASDSHLSPGSAAALQTI VLPSVNTVPFQAPRLPDMASADCPAHTVHPQALAKDLQAEISSSSSTDTFPPQQLFGAHL LNKTNTSLSHQNTPLPLPVSAQGGKPDAAPTACVSSTGEGSFAPKYQLQCQAFTSDQGCS APLRSSPNQVLPGQAGADPCPASEAPPAKAADPMAKPCPLPPLELGLPRDEVLQKQLPSF VLPVPQKRNVTVDCFTPVTSLPQILVTQDLPNMPICQTNQSLVPVSEEQNSMPKSQNYLQ NASPTPEKELACKTVLPEVGQSVPVSESSPTVQKVSVGRLSPQQESSASSKRMLSPANSL DIAMEKHQKRAKDENGAVCSTNIRALELPSSRANESHKQKKPVLVRQLCTTEPLEGAALE QGACSASGRSSNKAANLTQVLPTDSLSSRPSTFAVTDHVNELQEFKNTKVSTSLTPTVGS FPAPSESACVLPLKSIDNNQEKGSPGVRHEENKVIQGQRPPLVSGLSLVSSSDTQQPSFP SLKTATSFTWCYLLRQKALPLAQNDQKTSAYTGWTVSSSNPNPLGLPTKVALSLLNSKQK TGKSLYCQAITTHSKSDLVVYSSKWKNNLSKRALGNQKATVVEFSNKDDSEINSEQDKEN SLIKSEPRRIKIFDGGYKSNEDYVYVRGRGRGKYICEECGIRCKKPSMLKKHIRTHTDVR PYHCSYCNFSFKTKGNLTKHMKSKAHSKKCVDLGVSVGLIDEQDTEESDEKQRFGCERSG YDLEESDGPDEDDNDNEEDDDDSQAESGLSAAPSVTASPQHLPSRSGLQDPGSVEEELRV SSCFSGVHTDPMDILPRALLTKMTVLSTVQSSPNRTDLPAKARQSTEKDEHEQAPPADTP RSPGHQLSVHSSESDVLRSPAAGNPAAGSPGAAVQDSSVGLPPAVAQLNPQPAARISSSV SPHPDSQDQKQQIILQPPPGLPSPQTHLFSHLPLHSQQQSRTPYNMVPVGGIHVVTAGLT YSTFVPIQAGPMQLTIPAVSVIHRTVGTSGDTITEASGSPNRPTGVAELSSVVPCIPIGQ IHVPGLQNLSPPALQSLTSLGMETVNLVGLANATVGPQGHPPGLALNAVGLQVLANAPAQ SSPAPPAHIQGLQILNIALPTLIPSVGPVAVGTTGTPETTAPNSKAMELQMPAGQGHSAE PPQGSPEGPQETPQTVSGPSADHARPEDSTKMDTKKGPSAGHVLPGRSPAQAQPAPTPEA LQKVATSAPPSLPTDRAAPRPPVPHRQPIVHFSDVSSDDDEDRLVIAT" 
SALIDA_S2="MTITMFTPIELPPTYYISLHMNVPISPLYPWGMPYTRSTSFSHTTTIYTNTNTNTTTIER KDSGICIPSNTTSRKPSTITINPKPTTTTTYAAPSRWTTLTSPAEQTKALDFLTNNYHTI QTLQAANYTITPDTTKNNIRFQQTPSTNDPSARRAVSLDCEMVTDTTGRTQLCQVSMVDV LTGELLLDQPVLPSEPVSDWRTKWSGMTAELMAQHVAAGRTVNGYEGARARVWEYIDQKT ILVGQSLNFDLDVLGIVHERVVDTYLLMRGQRRGRSCRLRDVVRDCCGVEIQKGEELEGG HDCAEDCYAAREVALWAVEHLGRDEAFISRSMSPIDDKFQLSSAYFPATCYCIPRDAEWA TFHGWTLRVDTYDTTHVNY" 

#
# PRUEBAS
#
echo -e "\nejecutando: AUG[4]TTT------{AA-}*TTT{AAA,AAA,AAA,TTA}STOP"
echo -e "AUG[4]TTT------{AA-}*TTT{AAA,AAA,AAA,TTA}STOP" | bin/$EXEC_NAME

echo -e "\nejecutando: AUG[4]TTTSTOP"
echo -e "AUG[4]TTTSTOP" | bin/$EXEC_NAME

echo -e "\nejecutando: AUG[4]TT-STOP"
echo -e "AUG[4]TT-STOP" | bin/$EXEC_NAME

echo -e "\nejectuando: AUG[4]TTT{AA-}*[400]STOP"
echo -e "AUG[4]TTT{AA-}*[400]STOP" | bin/$EXEC_NAME

echo -e "\nejecutando: AUG[4]TTA--{A,AAA,ATT,TTT}[300]STOP"
echo -e "AUG[4]TTA--{A,AAA,ATT,TTT}[300]STOP" | bin/$EXEC_NAME

echo -e "\nProbando con ejemplo3.txt"
bin/$EXEC_NAME examples/givenExamples/ejemplo3.txt

echo -e "\nProbando con ejemplo4.txt"
bin/$EXEC_NAME examples/givenExamples/ejemplo4.txt

echo -e "\nProbando con ejemplo5.txt"
bin/$EXEC_NAME examples/givenExamples/ejemplo5.txt

echo -e "\nProbando con collagen6.txt"
bin/$EXEC_NAME examples/ourExamples/collagen6.txt

echo -e "\nProbando con hemoglobinChain.txt"
bin/$EXEC_NAME examples/ourExamples/hemoglobinChain.txt

