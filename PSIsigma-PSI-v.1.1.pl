=begin
PSI-Sigma: A splicing-detection method for short-read and long-read RNA-seq data
© Kuan-Ting Lin, 2018-2024
PSI-Sigma is free for non-commercial purposes by individuals at an academic or non-profit institution.
For commercial purposes, please contact tech transfer office of CSHL via narayan@cshl.edu
=end
=cut
#!/usr/bin/perl -w

eval unpack u=>q{_=7-E('-T<FEC=#L*"75S92!01$PZ.DQI=&5&.PH)=7-E(%!$3#HZ4W1A=',["@EU<V4@4W1A=&ES=&EC<SHZ_375L='1E<W0@<7<H8F]N9F5R<F]N:2!H;VQM(&AO;6UE;"!H;V-H8F5R9R!"2"!"62!Q=F%L=64I.PH*("`@_(&UY("@D9&(L)&]U='!U=&%S<V-C97-S:6]N+"1C<FET97)I82PD<VMI<')A=&EO+"1I;G1R;V%L;&-R:71E_<FEA+"1L;VYG<F5A9"PD861J<"PD9&5N;VUI;F%T;W(L)&ER8VAE8VLL)&ER<F%N9V4I(#T@0$%21U8["B`@_("`*("`@("-M>2`D<VMI<')A=&EO(#T@,"XP-3L*("`@("-M>2`D9VQO8F%L:7(@/2`Q.PH@("`@(VUY("1D_:7-P(#T@-#L*("`@(`H@("`@:68H<V-A;&%R($!!4D=6("$](#$P*7L*("`@(`EP<FEN="`B4&QE87-E('-P_96-I9GD@,3`@<&%R86UE=&5R<SH@*#$I(&1A=&%B87-E+"`H,BD@;W5T<'5T(&YA;64@+"`H,RD@;6EN:6UU_;2!S=7!P;W)T:6YG(&IU;F-T:6]N(')E861S+"`H-"D@<VMI<')A=&EO+"`H-2D@;6EN:6UU;2!I;G1R;VX@_<W5P<&]R=&EN9R!R96%D<RP@*#8I(&EF('1H92!I;G!U="!D871A(&ES('-H;W)T(&]R(&QO;F<@<F5A9"P@_*#<I(&EF('`M=F%L=64@861J=7-T;65N="!I<R!N965D960L("@X*2!I9B!C<F5A=&EN9R!D96YO;6EN871O_<B`N9V-T(&ES(&YE961E9"P@*#DI(&EF(&EN=')O;BUR971E;G1I;VX@<VAO=6QD(&)E(&5S=&EM871E9"P@_86YD("@Q,"D@:68@25(@:7,@<75A;G1I9FEE9"!B>2!G;&]B86P@;&5V96PN7&XB.R`*("`@(`EE>&ET.PH@_("`@?0H))&]U='!U=&%S<V-C97-S:6]N("X](")?<B(@+B`D8W)I=&5R:6$@+B`B7VER(B`N("1I;G1R;V%L_;&-R:71E<FEA.PH*"6UY($!G<F]U<',["B`@("!M>2`E9W)O=7!A.PH@"6]P96XH1DE,12PB9W)O=7!A+G1X_="(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N(&=R;W5P82YT>'0@.B`D(5QN(CL*("`@('=H:6QE_*&UY("1L:6YE/3Q&24Q%/BE["B`@("`@("`@8VAO;7`@)&QI;F4["B`@("`@("`@;F5X="!I9B@D;&EN92!E_<2`B(BD["B`@("`@("`@;7D@)&%C8V5S<VEO;B`]("1L:6YE.PH@("`@("`@("1A8V-E<W-I;VX]?G,O7"Y!_;&EG;F5D7"YS;W)T961">4-O;W)D7"YO=71<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O7"YS;W)T961<+F]U_=%PN8F%M+R\["@D))&%C8V5S<VEO;CU^<R]<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O7"XD+R\["B`@("`@_("`@)&=R;W5P87LD86-C97-S:6]N?2LK.PH@("`@("`@('!U<V@H0&=R;W5P<RPD86-C97-S:6]N*3L*("`@_("`@("`*("`@('T*("`@(&-L;W-E*$9)3$4I.PH@("`@;7D@)6=R;W5P8CL*(`EO<&5N*$9)3$4L(F=R;W5P_8BYT>'0B*2!\?"!D:64@(D%B;W)T:6YG+BX@0V%N)W0@;W!E;B!G<F]U<&(N='AT(#H@)"%<;B(["B`@("!W_:&EL92AM>2`D;&EN93T\1DE,13XI>PH@("`@("`@(&-H;VUP("1L:6YE.PH@("`@("`@(&YE>'0@:68H)&QI_;F4@97$@(B(I.PH@("`@("`@(&UY("1A8V-E<W-I;VX@/2`D;&EN93L*("`@("`@("`D86-C97-S:6]N/7YS_+UPN06QI9VYE9%PN<V]R=&5D0GE#;V]R9%PN;W5T7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN<V]R=&5D_7"YO=71<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN)"\O.PH@_("`@("`@("1G<F]U<&)[)&%C8V5S<VEO;GTK*SL*("`@("`@("!P=7-H*$!G<F]U<',L)&%C8V5S<VEO;BD[_"B`@("!]"B`@("!C;&]S92A&24Q%*3L*("`@(&UY("@D;F=R;W5P82PD;F=R;W5P8BD@/2`H<V-A;&%R(&ME_>7,@)6=R;W5P82P@<V-A;&%R(&ME>7,@)6=R;W5P8BD["B`@("!P<FEN="`B1W)O=7`@02!H87,@)&YG<F]U_<&$@<V%M<&QE<RY<;B(["B`@("!P<FEN="`B1W)O=7`@0B!H87,@)&YG<F]U<&(@<V%M<&QE<RY<;B(["B`@_("!M>2`D97%U86P@/2`Q.PH@("`@:68H)&YG<F]U<&$@(3T@)&YG<F]U<&(I>PH@("`@"21E<75A;"`](#`[_"B`@("!]"B`@("`*/6)E9VEN"B`@("!M>2`E8V]U;G1E=F5N=#L*("`@(&]P96XH1DE,12P@(B1D8B(I('Q\_(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N("1D8EQN(CL*("`@('=H:6QE*&UY("1L:6YE/3Q&24Q%/BE[_"B`@("`)8VAO;7`@)&QI;F4["B`@("`);F5X="!I9B@D;&EN92!E<2`B(BD["B`@("`);7D@*"1C:'(L)&DQ_<RPD:3%E+"1I,G,L)&DR92PD=&5S+"1T964L)&%N;F\L)&%S+"1A92PD;F%M92PD9VXI(#T@<W!L:70H+UQT_+RPD;&EN92D["B`@("`);7D@*"1A:60L)&5I9"D@/2`H)#$L)#(I(&EF*"1N86UE/7XO*"XJ*5Q?*%QD*RDD_+RD["B`@("`))&-O=6YT979E;G1[)&%I9'TK*SL*("`@('T*("`@(&-L;W-E*$9)3$4I.PH]96YD"CUC=70*_"@EM>2`D8VAE8VMF9'(@/2`D861J<#L*"6UY("1F8V-R:71E<FEA(#T@,3`["@EM>2`D<')I;G1G8W0@/2`P_.PH);7D@)'-H;W=I9"`](#`["B`@("!M>2!`9FEL97,@/2`\*BY32BXJ+G1A8CX["B`@("!M>2`E;W5T<'5T_.PH@("`@;7D@0&%C8V5S<VEO;CL*("`@(&UY("5N86UE<SL*("`@(&UY("5M87AE>&]N.PH@("`@;7D@)7-K_:7`["B`@("!M>2`E<V%M<&QE<SL*("`@(&UY("5E>',["B`@("!M>2`E:6YT<F]N86QL.PH@("`@;7D@)6ES_86QL.PH@("`@;7D@)6EE86QL.PH@("`@;7D@)71R=65!4U,["@H);7D@)'!A:7)E9"`](#`["B`@("`D<&%I_<F5D(#T@,B!I9BAS8V%L87(@:V5Y<R`E9W)O=7!A(#P@,B!\?"!S8V%L87(@:V5Y<R`E9W)O=7!B(#P@,BD[_"B`@("`C<')I;G0@(E!A:7)E9"`]("1P86ER961<;B(["B`@("`*("`@(&UY("5T979E;G0["B`@("!M>2`E_9W)O=7!A;FYO.PH):68H+64@(G1E=F5N="YT>'0B*7L*(`D);W!E;BA&24Q%+")T979E;G0N='AT(BD@?'P@_9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@=&5V96YT+G1X="`Z("0A7&XB.PH@("`@"7=H:6QE*&UY("1L_:6YE/3Q&24Q%/BE["B`@("`)("`@(&-H;VUP("1L:6YE.PH@("`@"2`@("!N97AT(&EF*"1L:6YE(&5Q("(B_*3L*("`@(`D@("`@)'1E=F5N='LD;&EN97TK*SL*("`@(`E]"B`@("`)8VQO<V4H1DE,12D["B`@("`);W!E_;BA&24Q%+")G<F]U<&%N;F\N='AT(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@=&5V96YT+G1X_="`Z("0A7&XB.PH@("`@"7=H:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`)("`@(&-H;VUP("1L:6YE.PH@_("`@"2`@("!N97AT(&EF*"1L:6YE(&5Q("(B*3L*("`@(`D@("`@;7D@*"1)1"PD9W)O=7`I(#T@<W!L:70H_+UQT+RPD;&EN92D["B`@("`)("`@("1G<F]U<&%N;F][)$E$?2`]("1G<F]U<#L*("`@(`E]"B`@("`)8VQO_<V4H1DE,12D["B`@("`))'!R:6YT9V-T(#T@,3L*("`@(`EP<FEN="`B4F5P;W)T:6YG($=#5"!F:6QE+EQN_(CL*("`@('T*("`@(`H@("`@;7D@)61E;F]M:6YA=&]R.PH@("`@9F]R96%C:"!M>2`D:F9N*$!F:6QE<RE[_"B`@("`);7D@)&%C8V5S<VEO;B`]("1J9FX["B`@("`);7D@)'-I9"`]("1A8V-E<W-I;VX["B`@("`))'-I_9#U^<R]<+E-*7"XH7'<K*5PN=&%B+R\["B`@("`)"B`@("`)<')I;G0@(E)E861I;F<N+BX@)'-I9%QN(CL*_("`@(`EN97AT(&EF*"$D9W)O=7!A>R1S:61]("8F("$D9W)O=7!B>R1S:61]*3L*("`@(`EI9B@D9W)O=7!A_>R1S:61]*7L*"0D))&%C8V5S<VEO;CU^<R]<+E-*7"XH7'<K*5PN=&%B+UQ?3B\["@D)?0H)"6EF*"1G<F]U_<&)[)'-I9'TI>PH)"0DD86-C97-S:6]N/7YS+UPN4TI<+BA<=RLI7"YT86(O7%]4+SL*"0E]"@H@("`@"6YE_>'0@:68H)&%C8V5S<VEO;B%^+UQ?3B0O("8F("1A8V-E<W-I;VXA?B]<7U0D+RD["B`@("`@("`@;7D@)6EN_=')O;CL*("`@("`@("!M>2`E:6YT<F]N:6-R96%D.PH@("`@("`@(&UY("5S=6US<SL*("`@("`@("!M>2`E_<W5M964["B`@("`@("`@;7D@)6-O=6YT<W,["B`@("`@("`@;7D@)6-O=6YT964["B`@("`@("`@;7D@)&UE_86X@/2`P.PH@("`@"0H@("`@"6UY("1T86<@/2`D86-C97-S:6]N.PH@("`@"6UY("1C870["B`@("`))&-A_="`](").(B!I9B@D86-C97-S:6]N/7XO7%].)"\I.PH@("`@"21C870@/2`B5"(@:68H)&%C8V5S<VEO;CU^_+UQ?5"0O*3L*("`@(`DD86-C97-S:6]N/7YS+UQ?3B0O+SL*("`@(`DD86-C97-S:6]N/7YS+UQ?5"0O+SL*_("`@(`DD86-C97-S:6]N/7YS+R@N*BE<7RA<=RLI7%].)"\D,B\["B`@("`))&%C8V5S<VEO;CU^<R\H+BHI_7%\H7'<K*5Q?5"0O)#(O.PH@("`@"21A8V-E<W-I;VX]?G,O7%].7%].+UQ?3B\["B`@("`))&%C8V5S<VEO_;CU^<R]<7U1<7U0O7%]4+SL*("`@(`DC)&%C8V5S<VEO;GLD86-C97-S:6]N?2LK.PH@("`@"7!U<V@H0&%C_8V5S<VEO;BPD86-C97-S:6]N*3L*"B`@("`)<')I;G0@(E)E861I;F<N+BX@)&IF;EQN(CL*("`@(`EP<FEN_="`B86-C97-S:6]N(#T@)&%C8V5S<VEO;EQN(CL*("`@(`EP<FEN="`B*"1C870I("1A8V-E<W-I;VY<;B([_"B`@("`))'-A;7!L97-[(B1C871<="1A8V-E<W-I;VXB?2`]("1T86<["@H@("`@"6EF*"1J9FX]?B]'5$58_*"XJ*5PN4TI<+F]U=%PN=&%B+RE["B`@("`)"21J9FX]?G,O7%].7"Y32EPN;W5T7"YT86(O7"Y32EPN;W5T_7"YT86(O.PH@("`@"7T*("`@(`D*("`@(`EM>2`D:7)F;B`]("1J9FX["B`@("`)(VUY("1I<F-H96-K(#T@_,3L*("`@(`EI9B@D:7)C:&5C:R`]/2`Q*7L*"0D)<')I;G0@(D-H96-K:6YG($E2(')E861S7&XB.PH)"0DD_:7)F;CU^<R]<+E-*7"XH+BHI7"YT86(O7"Y)4EPN;W5T7"YT86(O.PH)"0EP<FEN="`B8VAE8VMI;F<N+BX@_)&ER9FY<;B(["@D)"6EF*&]P96XH1DE,12P@(B1I<F9N(BDI>PH)"0D)=VAI;&4H;7D@)&QI;F4]/$9)3$4^_*7L*"0D)"0EC:&]M<"`D;&EN93L*"0D)"0EM>2`H)&-H<BPD<W1A<G0L)&5N9"PD;G5M*2`]('-P;&ET*"]<_="\L)&QI;F4I.PH)"0D)"2,D8VAR/7YS+V-H<B\O.PH)"0D)"21I;G1R;VYI8W)E861[(B1C:')<="1S=&%R_=%QT)&5N9")](#T@)&YU;2LQ.PH)"0D)?0H)"0D)8VQO<V4H1DE,12D["@D)"7UE;'-E>PH)"0D)(R1I<F-H_96-K(#T@,#L*"0D)?0H@("`@"7T*("`@(`D*"0EP<FEN="`B0VAE8VMI;F<@4TH@<F5A9',N+BY<;B(["B`@_("`@("`@;W!E;BA&24Q%+"`B)&IF;B(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N("1J9FY<;B([_"B`@("`@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("`@("`@("`@(&-H;VUP("1L:6YE.PH@_("`@("`@("`@("`@("`@)&QI;F4]?G,O7',O7'0O9SL*("`@("`@("`@("`@("`@(&UY($!A<G)A>2`]('-P_;&ET*"]<="\L)&QI;F4I.PH@("`@("`@("`@("`@("`@;7D@*"1C:'(L)'-T87)T+"1E;F0L)&YU;2D@/2`H_)&%R<F%Y6S!=+"1A<G)A>5LQ72PD87)R87E;,ETL)&%R<F%Y6S9=*3L*("`@("`@("`@("`@("`@("-I9B@D_:F9N/7XO4THN:6YC;$]V97)L87!S+G1A8B\I>PH@("`@("`@("`@("`@("`@:68H<V-A;&%R($!A<G)A>2`]_/2`W*7L*("`@("`@("`@("`@("`@(`DC)&IF;B!I<R!A(&-U<W1O;6EZ960@4TH@9FEL95QN(CL*("`@("`@_("`@("`@("`@(`DD;G5M(#T@)&%R<F%Y6S-=(&EF*"1L;VYG<F5A9"`]/2`Q*3L*("`@("`@("`@("`@("`@_(`DD;G5M(#T@)&%R<F%Y6S1=(&EF*"1L;VYG<F5A9"`]/2`R*3L*("`@("`@("`@("`@("`@('UE;'-E>PH@_("`@("`@("`@("`@("`@"7!R:6YT(");15)23U(Z54Y+3D]73B!&3U)-050@;V8@)&IF;EU<;B(@:68H)&QO_;F=R96%D(#T](#(I.PH@("`@("`@("`@("`@("`@"21N=6T@/2`D87)R87E;-UT@:68H)&QO;F=R96%D(#T]_(#(I.PH@("`@("`@("`@("`@("`@?0H@("`@("`@("`@("`@("`@(R1C:'(]?G,O8VAR+R\["B`@("`@("`@_("`@("`@("`D:6YT<F]N>R(D8VAR7'0D<W1A<G1<="1E;F0B?2`]("1N=6T["B`@("`@("`@("`@("`@("`D_<W5M<W-[(B1C:')<="1S=&%R=")]>R1E;F1](#T@)&YU;3L*("`@("`@("`@("`@("`@("1S=6UE97LB)&-H_<EQT)&5N9")]>R1S=&%R='T@/2`D;G5M.PH@("`@("`@("`@("`@("`@)&EN=')O;F%L;'LD8VAR?7LB)'-T_87)T7'0D96YD(GTK*R!I9B@D;G5M(#X]("@D:6YT<F]A;&QC<FET97)I82DI.PH@("`@("`@("`@("`@("`@_)&ES86QL>R1C:')]>R1S=&%R='U[)&5N9'TK*R!I9B@D;G5M(#X]("@D:6YT<F]A;&QC<FET97)I82DI.PH@_("`@("`@("`@("`@("`@)&EE86QL>R1C:')]>R1E;F1]>R1S=&%R='TK*R!I9B@D;G5M(#X]("@D:6YT<F]A_;&QC<FET97)I82DI.PH@("`@("`@('T*("`@("`@("!C;&]S92A&24Q%*3L*("`@("`@("`*("`@("`@("!P_<FEN="`B0V%L8W5L871I;F<@4%-)('9A;'5E<RXN+EQN(CL*"0EM>2`E97AO;G,["@D);7D@)&-O=6YT(#T@_,#L*("`@("`@("!O<&5N*$9)3$4L("(D9&(B*2!\?"!D:64@(D%B;W)T:6YG+BX@0V%N)W0@;W!E;B`D9&)<_;B(["B`@("`@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("`@("`@("`@(&-H;VUP("1L:6YE_.PH@("`@("`@("`@("`@("`@;F5X="!I9B@D;&EN92!E<2`B(BD["B`@("`@("`@("`@("`@("!M>2`H)&-H_<BPD:3%S+"1I,64L)&DR<RPD:3)E+"1T97,L)'1E92PD86YN;RPD87,L)&%E+"1N86UE+"1G;BD@/2!S<&QI_="@O7'0O+"1L:6YE*3L*("`@("`@("`@("`@("`@(&UY("@D86ED+"1E:60I(#T@*"0Q+"0R*2!I9B@D;F%M_93U^+R@N*BE<7RA<9"LI)"\I.PH@("`@("`@("`@("`@("`@;7D@)'!A<W,@/2`Q.PH@("`@("`@("`@("`@_("`@;F5X="!I9B@D;F%M93U^+UQ?4EQ?+R`F)B`D:7)C:&5C:R`]/2`P*3L*("`@("`@("`@("`@("`@(&UY_("1T>7!E(#T@(G@B.PH@("`@("`@("`@("`@("`@)'1Y<&4@/2`B4R(@:68H)&YA;64]?B]<7U-<7R\I.PH@_("`@("`@("`@("`@("`@)'1Y<&4@/2`B5R(@:68H)&YA;64]?B]<7U=<7R\I.PH@("`@("`@("`@("`@("`@_)'1Y<&4@/2`B4B(@:68H)&YA;64]?B]<7U)<7R\I.PH*("`@("`@("`@("`@("`@(",D8VAR/7YS+V-H<B\O_.PH@("`@("`@("`@("`)"B`@("`@("`@("`@("`@("`D9VX@/2`B(B!I9B@D9VX@97$@(BTB*3L*("`@("`@_("`@("`@("`@("1N86UE(#T@(B1G;CHD;F%M92(["B`@("`@("`@("`@("`@("!M>2`D=&%R9V5T(#T@(BTB_.PH@("`@("`@("`@("`@("`@;7D@)'1A<F=E=&5X;VX@/2`B+2(["B`@("`@("`@("`@("`@("!M>2`D9"`]_("TQ.PH@("`@("`@("`@("`@("`@:68H)'1Y<&4@97$@(E<B*7L*("`@("`@("`@("`@("`@(`DD=&%R9V5T_(#T@)&-H<B`N(")<.B(@+B`H)&DQ92LQ*R1D*2`N("(M(B`N("@D:3)S+3$I("X@(ELD:3%S+"1I,64L)&DR_<RPD:3)E72(["B`@("`@("`@("`@("`@("`))'1A<F=E=&5X;VX@/2`D=&%R9V5T.PH@("`@("`@("`@("`@_("`@"6EF*"1I,7,@/3T@)&%S("8F("1I,F4@/3T@)&%E*7L*("`@("`@("`@("`@("`@(`E]96QS97L*("`@_("`@("`@("`@("`@(`D);F5X="!I9B@A)&EN=')O;F%L;'LD8VAR?7LB)&%S7'0D864B?2D["B`@("`@("`@_("`@("`@("`)?0H@("`@("`@("`@("`@("`@?65L<V5["B`@("`@("`@("`@("`@("`);7D@*"1T87)G971S_=&%R="P@)'1A<F=E=&5N9"D@/2`H,"PP*3L*("`@("`@("`@("`@("`@(`DH)'1A<F=E='-T87)T+"`D=&%R_9V5T96YD*2`]("@H)&DQ<RLD9"DL*"1I,G,M,2DI(&EF*"1I,7,@/3T@)&DQ92D["B`@("`@("`@("`@("`@_("`)*"1T87)G971S=&%R="P@)'1A<F=E=&5N9"D@/2`H*"1I,64K,2LD9"DL*"1I,F4I*2!I9B@D:3)S(#T]_("1I,F4I.PH@("`@("`@("`@("`@("`@"2@D=&%R9V5T<W1A<G0L("1T87)G971E;F0I(#T@*"1A<RPD864I_.PH@("`@("`@("`@("`@("`@"21T87)G971E>&]N(#T@)&-H<B`N(")<.B(@+B`H)'1A<F=E='-T87)T*2`N_("(M(B`N("@D=&%R9V5T96YD*2`N(");)&DQ<RPD:3%E+"1I,G,L)&DR95TB.PH@("`@("`@("`@("`@("`@_"21T87)G970@/2`D8VAR("X@(EPZ(B`N("@D87,I("X@(BTB("X@*"1A92D["B`@("`@("`@("`@("`@("!]_"B`@("`@("`@("`@("`@("!I9B@D='EP92!E<2`B4B(I>PH@("`@("`@("`@("`@("`@"21T87)G971E>&]N_(#T@)&-H<B`N(")<.B(@+B`H)&DR<RTQ*2`N("(M(B`N("@D:3)E*2!I9B@D:3%S(#T]("1I,64I.PH@("`@_("`@("`@("`@("`@"21T87)G971E>&]N(#T@)&-H<B`N(")<.B(@+B`H)&DQ<RTQ*2`N("(M(B`N("@D:3%E_*2!I9B@D:3)S(#T]("1I,F4I.PH@("`@("`@("`@("`@("`@"21A<R`]("1A<RLQ.PH@("`@("`@("`@("`@_("`@"21A92`]("1A92TQ.PH@("`@("`@("`@("`@("`@?0H@("`@("`@("`@("`@("`@"@H*("`@("`@("`@_("`@("`@(&UY("@D:6XQ+"1I;C(L)&5X,2D@/2`H,"PP+#`I.PH)"0D):68H(21I;G1R;VY[(B1C:')<="1I_,G-<="1I,F4B?2E["B`@("`@("`@("`@("`@("`))&EN,B`](#`["B`@("`@("`@("`@("`@("!]96QS97L*_("`@("`@("`@("`@("`@(`DD:6XR(#T@)&EN=')O;GLB)&-H<EQT)&DR<UQT)&DR92)].PH@("`@("`@("`@_("`@("`@?0H@("`@("`@("`@("`@("`@:68H(21I;G1R;VY[(B1C:')<="1I,7-<="1I,64B?2E["B`@("`@_("`@("`@("`@("`))&EN,2`](#`["B`@("`@("`@("`@("`@("!]96QS97L*("`@("`@("`@("`@("`@(`DD_:6XQ(#T@)&EN=')O;GLB)&-H<EQT)&DQ<UQT)&DQ92)].PH@("`@("`@("`@("`@("`@?0H@("`@("`@("`@_("`@("`@:68H)&DQ<R`]/2`D:3%E*7L*("`@("`@("`@("`@("`@(`DD:6XQ(#T@)&EN,CL*("`@("`@("`@_("`@("`@('T*"0D)"6EF*"1I,G,@/3T@)&DR92E["B`@("`@("`@("`@("`@("`))&EN,B`]("1I;C$["B`@_("`@("`@("`@("`@("!]"@D)"0D*"0D)"6UY("1S=6US<R`](#`["B`@("`@("`@("`@("`@("!M>2`D<W5M_964@/2`P.PH@("`@("`@("`@("`@("`@:68H)'1Y<&4@97$@(E<B*7L*("`@("`@("`@("`@("`@(`EI9B@A_)'-U;7-S>R(D8VAR7'0D87,B?2!\?"`A)'-U;65E>R(D8VAR7'0D864B?2E["B`@("`@("`@("`@("`@("`)_"21E>#$@/2`P.PH@("`@("`@("`@("`@("`@"7UE;'-E>PH@("`@("`@("`@("`@("`@"0EF;W)E86-H(&UY_("1E92AK97ES("5[("1S=6US<WLB)&-H<EQT)&%S(GT@?2E["B`@("`@("`@("`@("`@("`)"0EN97AT(&EF_*"1E92`^("1A92D["B`@("`@("`@("`@("`@("`)"0DD<W5M<W,K/2`D<W5M<W-[(B1C:')<="1A<R)]>R1E_97T["B`@("`@("`@("`@("`@("`)"7T*"0D)"0D)9F]R96%C:"!M>2`D<W,H:V5Y<R`E>R`D<W5M965[(B1C_:')<="1A92)]('TI>PH@("`@("`@("`@("`@("`@"0D);F5X="!I9B@D<W,@/"`D87,I.PH@("`@("`@("`@_("`@("`@"0D))'-U;65E*ST@)'-U;65E>R(D8VAR7'0D864B?7LD<W-].PH@("`@("`@("`@("`@("`@"0E]_"B`@("`@("`@("`@("`@("`)"21E>#$@/2`H)'-U;7-S*R1S=6UE92DO,CL*("`@("`@("`@("`@("`@(`D)_:68H)&EN=')O;GLB)&-H<EQT)&%S7'0D864B?2`^/2`H)&5X,2`J("1S:VEP<F%T:6\I*7L*("`@("`@("`@_("`@("`@(`D)"21P87-S(#T@+3$["B`@("`@("`@("`@("`@("`)"7T*("`@("`@("`@("`@("`@(`D)(R1P_87-S(#T@+3$@:68H)'-K:7!R871I;R`]/2`M,2D["B`@("`@("`@("`@("`@("`)?0H@("`@("`@("`@("`@_("`@?65L<V5["B`@("`@("`@("`@("`@("`):68H)'1Y<&4@97$@(E(B*7L*("`@("`@("`@("`@("`@(`D)_)&%S(#T@)&DR<SL*("`@("`@("`@("`@("`@(`D))&%E(#T@)&DR93L*("`@("`@("`@("`@("`@(`E]"B`@_("`@("`@("`@("`@("`)9F]R96%C:"!M>2`D964H:V5Y<R`E>R`D<W5M<W-[(B1C:')<="1A<R)]('TI>PH@_("`@("`@("`@("`@("`@"0DC;F5X="!I9B@D964@/B`D864@)B8@)'1Y<&4@97$@(E(B*3L*("`@("`@("`@_("`@("`@(`D))'-U;7-S*ST@)'-U;7-S>R(D8VAR7'0D87,B?7LD965].PH@("`@("`@("`@("`@("`@"7T*_"0D)"0EF;W)E86-H(&UY("1S<RAK97ES("5[("1S=6UE97LB)&-H<EQT)&%E(GT@?2E["B`@("`@("`@("`@_("`@("`)"2-N97AT(&EF*"1S<R`\("1A<R`F)B`D='EP92!E<2`B4B(I.PH@("`@("`@("`@("`@("`@"0DD_<W5M964K/2`D<W5M965[(B1C:')<="1A92)]>R1S<WT["B`@("`@("`@("`@("`@("`)?0H@("`@("`@("`@_("`@("`@"6EF*"1T>7!E(&5Q(")3(BE["B`@("`@("`@("`@("`@("`)"6EF*"1I,7,@/3T@)&DQ92E["B`@_("`@("`@("`@("`@("`)"0DD97@Q(#T@)'-U;7-S.PH@("`@("`@("`@("`@("`@"0D):68H)'-U;65E(#X@_,"E["B`@("`@("`@("`@("`@("`)"0D))'1R=65!4U-[)&YA;65]*RL["B`@("`@("`@("`@("`@("`)"0E]_"B`@("`@("`@("`@("`@("`)"7T*("`@("`@("`@("`@("`@(`D):68H)&DR<R`]/2`D:3)E*7L*("`@("`@_("`@("`@("`@(`D)"21E>#$@/2`D<W5M964["B`@("`@("`@("`@("`@("`)"0EI9B@D<W5M<W,@/B`P*7L*_("`@("`@("`@("`@("`@(`D)"0DD=')U94%34WLD;F%M97TK*SL*("`@("`@("`@("`@("`@(`D)"7T*("`@_("`@("`@("`@("`@(`D)?0H@("`@("`@("`@("`@("`@"0EI9B@D:6YT<F]N>R(D8VAR7'0D87-<="1A92)]_(#X]("@D97@Q("H@)'-K:7!R871I;RDI>PH@("`@("`@("`@("`@("`@"0D))'!A<W,@/2`M,3L*("`@("`@_("`@("`@("`@(`D)?0H@("`@("`@("`@("`@("`@"0DC)'!A<W,@/2`M,2!I9B@D<VMI<')A=&EO(#T]("TQ_*3L*("`@("`@("`@("`@("`@(`E]"B`@("`@("`@("`@("`@("`):68H)'1Y<&4@97$@(E(B*7L*("`@("`@_("`@("`@("`@(`D):68H)&ER<F%N9V4@/B`P*7L*("`@("`@("`@("`@("`@(`D)"6UY("@D;6%X<W,L)&UA_>&5E*2`]("@P+#`I.PH@("`@("`@("`@("`@("`@"0D)9F]R*&UY("1I<G)E9VEO;G-S(#T@*"1A<RTD:7)R_86YG92D[)&ER<F5G:6]N<W,@/#T@*"1A<RLD:7)R86YG92D[)&ER<F5G:6]N<W,K*RE["B`@("`@("`@("`@_("`@("`)"0D);7D@)&QO8V%L<W,@/2`P.PH@("`@("`@("`@("`@("`@"0D)"21C;W5N="LK.PH)"0D)"0D)_"69O<F5A8V@@;7D@)&5E*&ME>7,@)7L@)'-U;7-S>R(D8VAR7'0D:7)R96=I;VYS<R)]('TI>PH)"0D)"0D)_"0DC;F5X="!I9B@D964@/B`D864@)B8@)'1Y<&4@97$@(E(B*3L*"0D)"0D)"0D))&QO8V%L<W,@*ST@)'-U_;7-S>R(D8VAR7'0D:7)R96=I;VYS<R)]>R1E97T["@D)"0D)"0D)?0H)"0D)"0D)"21M87AS<R`]("1L;V-A_;'-S(&EF*"1M87AS<R`\("1L;V-A;'-S*3L)"B`@("`@("`@("`@("`@("`)"0E]"B`@("`@("`@("`@("`@_("`)"0EF;W(H;7D@)&ER<F5G:6]N<W,@/2`H)'1E<RTD:7)R86YG92D[)&ER<F5G:6]N<W,@/#T@*"1T97,K_)&ER<F%N9V4I.R1I<G)E9VEO;G-S*RLI>PH@("`@("`@("`@("`@("`@"0D)"6UY("1L;V-A;'-S(#T@,#L*_("`@("`@("`@("`@("`@(`D)"0DD8V]U;G0K*SL*"0D)"0D)"0EF;W)E86-H(&UY("1S<RAK97ES("5[("1S_=6UE97LB)&-H<EQT)&ER<F5G:6]N<W,B?2!]*7L*"0D)"0D)"0D)(VYE>'0@:68H)&5E(#X@)&%E("8F("1T_>7!E(&5Q(")2(BD["@D)"0D)"0D)"21L;V-A;'-S("L]("1S=6UE97LB)&-H<EQT)&ER<F5G:6]N<W,B?7LD_<W-].PH)"0D)"0D)"7T*"0D)"0D)"0DD;6%X<W,@/2`D;&]C86QS<R!I9B@D;6%X<W,@/"`D;&]C86QS<RD[_"0H@("`@("`@("`@("`@("`@"0D)?0H@("`@("`@("`@("`@("`@"0D)9F]R*&UY("1I<G)E9VEO;F5E(#T@_*"1A92LD:7)R86YG92D[*"1A92TD:7)R86YG92D@/#T@)&ER<F5G:6]N964[)&ER<F5G:6]N964M+2E["B`@_("`@("`@("`@("`@("`)"0D);7D@)&QO8V%L964@/2`P.PH@("`@("`@("`@("`@("`@"0D)"21C;W5N="LK_.PH)"0D)"0D)"69O<F5A8V@@;7D@)'-S*&ME>7,@)7L@)'-U;65E>R(D8VAR7'0D:7)R96=I;VYE92)]('TI_>PH)"0D)"0D)"0DC;F5X="!I9B@D964@/B`D864@)B8@)'1Y<&4@97$@(E(B*3L*"0D)"0D)"0D))&QO8V%L_964@*ST@)'-U;65E>R(D8VAR7'0D:7)R96=I;VYE92)]>R1S<WT["@D)"0D)"0D)?0H)"0D)"0D)"21M87AE_92`]("1L;V-A;&5E(&EF*"1M87AE92`\("1L;V-A;&5E*3L*("`@("`@("`@("`@("`@(`D)"7T*("`@("`@_("`@("`@("`@(`D)"69O<BAM>2`D:7)R96=I;VYE92`]("@D=&5E*R1I<G)A;F=E*3LH)'1E92TD:7)R86YG_92D@/#T@)&ER<F5G:6]N964[)&ER<F5G:6]N964M+2E["B`@("`@("`@("`@("`@("`)"0D);7D@)&QO8V%L_964@/2`P.PH@("`@("`@("`@("`@("`@"0D)"21C;W5N="LK.PH)"0D)"0D)"69O<F5A8V@@;7D@)&5E*&ME_>7,@)7L@)'-U;7-S>R(D8VAR7'0D:7)R96=I;VYE92)]('TI>PH)"0D)"0D)"0DC;F5X="!I9B@D964@/B`D_864@)B8@)'1Y<&4@97$@(E(B*3L*"0D)"0D)"0D))&QO8V%L964@*ST@)'-U;7-S>R(D8VAR7'0D:7)R96=I_;VYE92)]>R1E97T["@D)"0D)"0D)?0H)"0D)"0D)"21M87AE92`]("1L;V-A;&5E(&EF*"1M87AE92`\("1L_;V-A;&5E*3L*("`@("`@("`@("`@("`@(`D)"7T*("`@("`@("`@("`@("`@(`D)"21M87AS<R`]("1S=6US_<R!I9B@D;6%X<W,@/"`D<W5M<W,I.PH@("`@("`@("`@("`@("`@"0D))&UA>&5E(#T@)'-U;65E(&EF*"1M_87AE92`\("1S=6UE92D["B`@("`@("`@("`@("`@("`)"0DC)&5X,2`]("@D;6%X<W,@*R`D;6%X964I+S([_"B`@("`@("`@("`@("`@("`)"0EI9B@D;6%X<W,@/CT@)&UA>&5E*7L*("`@("`@("`@("`@("`@(`D)"0DD_97@Q(#T@)&UA>'-S.PH@("`@("`@("`@("`@("`@"0D)?65L<V5["B`@("`@("`@("`@("`@("`)"0D))&5X_,2`]("1M87AE93L*("`@("`@("`@("`@("`@(`D)"7T*("`@("`@("`@("`@("`@(`D)?65L<V5["@D)"0D)_"0DD97@Q(#T@)'-U;7-S(&EF*"1S=6US<R`^/2`D<W5M964I.PH)"0D)"0D))&5X,2`]("1S=6UE92!I9B@D_<W5M<W,@/"`D<W5M964I.PH)"0D)"0D)(VYE>'0@:68H)'-U;7-S(#X@*"1S=6UE92HR*2!\?"`D<W5M964@_/B`H)'-U;7-S*C(I*3L*("`@("`@("`@("`@("`@(`D)?0H@("`@("`@("`@("`@("`@"0DC:68H)&EN=')O_;GLB)&-H<EQT)&DR<UQT)&DR92)](#X]("@D97@Q("H@)'-K:7!R871I;RDI>PH@("`@("`@("`@("`@("`@_"0D))'!A<W,@/2`M,3L*("`@("`@("`@("`@("`@(`D)(WT*("`@("`@("`@("`@("`@(`E]"B`@("`@("`@_("`@("`@("!]"B`@("`@("`@("`@("`@("`*("`@("`@("`@("`@("`@(`H@("`@("`@("`@("`@("`@:68H_)'1Y<&4@97$@(E(B("8F("1I<F-H96-K(#T](#$I>PH@("`@("`@("`@("`@("`@"6EF*"$D:6YT<F]N:6-R_96%D>R(D8VAR7'0D:3)S7'0D:3)E(GTI>PH@("`@("`@("`@("`@("`@"0DD:6XQ(#T@(FYA(CL*("`@("`@_("`@("`@("`@(`D))&EN,B`]("1I;C$["B`@("`@("`@("`@("`@("`)"6YE>'0["B`@("`@("`@("`@("`@_("`)?65L<V5["B`@("`@("`@("`@("`@("`)"21I;C$@/2`D:6YT<F]N:6-R96%D>R(D8VAR7'0D:3)S7'0D_:3)E(GT@+2`Q.PH@("`@("`@("`@("`@("`@"0DD:6XR(#T@)&EN,3L*("`@("`@("`@("`@("`@(`E]"B`@_("`@("`@("`@("`@("!]"@H@("`@("`@("`@("`@("`@)'1A<F=E=&5X;VX@/2`B)&-H<EPZ)'1E<UPM)'1E_92(["B`@("`@("`@("`@("`@("`*("`@("`@("`@("`)"6EF*"1T>7!E(&5Q(")2(BE["B`@("`@("`@("`@_(`D))&5X,2`]("1I;C$K)&5X,3L*("`@("`@("`@("`@("`@(`EI9B@D<W5M<W,@/3T@,"!\?"`D<W5M964@_/3T@,"E["B`@("`@("`@("`@("`@("`)"2,D:6XQ(#T@,#L*("`@("`@("`@("`@("`@(`D)(R1I;C(@/2`P_.PH@("`@("`@("`@("`@("`@"0DC)&5X,2`]("1C<FET97)I83L*("`@("`@("`@("`@("`@(`E]"B`@("`@_("`@("`@("`@("!]"B`@("`@("`@("`@("`@("`*("`@("`@("`@("`@("`@(&EF*"1D96YO;6EN871O<B`]_/2`Q*7L*("`@("`@("`@("`@"0DD9&5N;VUI;F%T;W)[)&YA;65]>R(D8V%T7'0D86-C97-S:6]N(GT@/2`D_97@Q.PH@("`@("`@("`@("`)?0H@("`@("`@("`@("`)"@D)"0EN97AT(&EF*"1E>#$@/"`D8W)I=&5R:6$I_.PH*("`@("`@("`@("`@("`@("1E>'-[)&-H<GU[(B1A<UQT)&%E(GT@*ST@)&5X,3L*("`@("`@("`@("`@_("`@(&UY("104TD@/2`H*"1I;C$K)&EN,BDO,BDO)&5X,3L*("`@("`@("`@("`@("`@(`H@("`@("`@("`@_("`@("`@)%!322`](#$@:68H)%!322`^(#$I.PH@("`@("`@("`@("`@("`@)%!322`]("TQ(&EF("@D4%-)_(#T](#`I.PH@("`@("`@("`@("`@("`@)&]U='!U='LB)&%C8V5S<VEO;B(@+B`B7R(@+B`B)&-A=%QT)&YA_;64B?2`]("104TD["B`@("`@("`@("`@("`@("!I9B@A)&YA;65S>R(D;F%M95QT)'1A<F=E=&5X;VY<="1I_,7,L)&DQ92PD:3)S+"1I,F5<="1A;FYO(GT@?'P@)&YA;65S>R(D;F%M95QT)'1A<F=E=&5X;VY<="1I,7,L_)&DQ92PD:3)S+"1I,F5<="1A;FYO(GT@/3T@,"E["B`@("`@("`@("`@("`@("`))&YA;65S>R(D;F%M95QT_)'1A<F=E=&5X;VY<="1I,7,L)&DQ92PD:3)S+"1I,F5<="1A;FYO(GT@/2`D<&%S<SL*("`@("`@("`@("`@_("`@('UE;'-E>PH@("`@("`@("`@("`@("`@"21N86UE<WLB)&YA;65<="1T87)G971E>&]N7'0D:3%S+"1I_,64L)&DR<RPD:3)E7'0D86YN;R)]("H]("1P87-S(&EF*"1N86UE<WLB)&YA;65<="1T87)G971E>&]N7'0D_:3%S+"1I,64L)&DR<RPD:3)E7'0D86YN;R)](#X@,"D["B`@("`@("`@("`@("`@("!]"B`@("`@("`@?0H@_("`@?0H*"0H);7D@*"1N<BPD;F,I(#T@*'-C86QA<B!K97ES("5S86UP;&5S+"!S8V%L87(@:V5Y<R`E;F%M_97,I.PH)<')I;G0@(DYU;6)E<B!O9B!E=F5N=',@/2`D;F-<;B(["@EP<FEN="`B3G5M8F5R(&]F('-A;7!L_97,@/2`D;G)<;B(["@H):68H)&1E;F]M:6YA=&]R(#T](#$I>PH)"7!R:6YT(")/=71P=71I;F<N+BX@(B`N_("1O=71P=71A<W-C8V5S<VEO;B`N("(N9&5N;VUI;F%T;W(N9V-T7&XB.PH)"6]P96XH3U54+"`B/B(@+B`D_;W5T<'5T87-S8V-E<W-I;VX@+B`B+F1E;F]M:6YA=&]R+F=C="(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG_="!O<&5N("(@+B`D;W5T<'5T87-S8V-E<W-I;VX@+B`B+F1E;F]M:6YA=&]R+F=C=%QN(CL*"0EP<FEN="!/_550@(B,Q+C)<;B(["@D)<')I;G0@3U54("(D;G)<="1N8UQN(CL*"0EP<FEN="!/550@(D5V96YT7'1!;FYO_=&%T:6]N(CL*"0EF;W)E86-H(&UY("1S86UP;&4H<V]R="!K97ES("5S86UP;&5S*7L*"0D);F5X="!I9B@D_<V%M<&QE(&5Q("(B*3L*"0D);7D@*"1C870L)&%C8V5S<VEO;BD@/2!S<&QI="@O7'0O+"1S86UP;&4I.PH)_"0EP<FEN="!/550@(EQT(B`N("1A8V-E<W-I;VX["@D)?0H)"7!R:6YT($]55"`B7&XB.PH)"69O<F5A8V@@_;7D@)&ME>2AS;W)T(&ME>7,@)6YA;65S*7L*"0D);F5X="!I9B@D:V5Y(&5Q("(B*3L*"0D);7D@*"1I9"PD_=&%R9V5T97AO;BPD;&]C<RPD86YN;RD@/2!S<&QI="@O7'0O+"1K97DI.PH)"0EP<FEN="!/550@(B1I9%QT_)&%N;F\B.PH)"0EF;W)E86-H(&UY("1S86UP;&4H<V]R="!K97ES("5S86UP;&5S*7L*"0D)"6YE>'0@:68H_)'-A;7!L92!E<2`B(BD["@D)"0EP<FEN="!/550@(EQT(B`N("1D96YO;6EN871O<GLD:61]>R1S86UP;&5]_.PH)"0E]"@D)"7!R:6YT($]55"`B7&XB.PH)"7T*"0EC;&]S92A/550I.PH)?0H)"@EI9B@D<&%I<F5D(#T]_(#`I>PH)"6EF*"1E<75A;"`]/2`Q*7L*"0D)<')I;G0@(E-T871I<W1I8W,@;W!T:6]N(#T@4W1U9&5N="=S_('0M=&5S=%QN(CL*"0E]"@D):68H)&5Q=6%L(#T](#`I>PH)"0EP<FEN="`B4W1A=&ES=&EC<R!O<'1I;VX@_/2!796QC:"=S('0M=&5S=%QN(CL*"0E]"@E]"@EI9B@D<&%I<F5D(#T](#(I>PH)"7!R:6YT(")3=&%T:7-T_:6-S(&]P=&EO;B`]($YO="!E;F]U9V@@<V%M<&QE<R!F;W(@="UT97-T7&XB.PH)?0H)"@EM>2`E<'9A;'5E_<SL*"6UY("5F:6YA;#L*"@EI9B@D<')I;G1G8W0@/3T@,2E["@D);W!E;BA'0U0L("(^)&]U='!U=&%S<V-C_97-S:6]N+F=C="(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N("1O=71P=71A<W-C8V5S<VEO;BYG_8W1<;B(["@D);7D@)&YT979E;G0@/2!S8V%L87(@:V5Y<R`E=&5V96YT.PH)"7!R:6YT($=#5"`B(S$N,EQN_(CL*"0EP<FEN="!'0U0@(B1N=&5V96YT7'0D;G)<;B(["@D)<')I;G0@1T-4(")%=F5N="!)1%QT06YN;W1A_=&EO;B(["@D)9F]R96%C:"!M>2`D<V%M<&QE*$!G<F]U<',I>PH)"0EP<FEN="!'0U0@(EQT(B`N("(H(B`N_("1G<F]U<&%N;F][)'-A;7!L97T@+B`B*2(@+B`D<V%M<&QE(&EF*'-C86QA<B!K97ES("5G<F]U<&%N;F\@_/B`Q*3L*"0D)<')I;G0@1T-4(")<="(@+B`D<V%M<&QE(&EF*'-C86QA<B!K97ES("5G<F]U<&%N;F\@/3T@_,"D["@D)?0H)"7!R:6YT($=#5"`B7&XB.PH)?0H)"@EF;W)E86-H(&UY("1E=F5N="AK97ES("5N86UE<RE[_"@D);F5X="!I9B@D979E;G0@97$@(B(I.PH)"6YE>'0@:68H)&YA;65S>R1E=F5N='T@/B`P*3L*"0EM>2`H_)&YA;64L)'1A<F=E=&5X;VXL)'=I;F=S+"1A;FYO*2`]('-P;&ET*"]<="\L)&5V96YT*3L*"0D*"0DC)&YA_;64]?G,O*"XJ*5QS8VAR+V-H<B\["@D):68H(21S:VEP>R1N86UE?2E["@D)?65L<V5["@D)"6YE>'0@:68H_)'-K:7![)&YA;65](#T]("1N<BD["@D)?0H)"6UY($!N.PH)"6UY($!T.PH)"6UY("@D;BPD="D["@D);7D@_)6X["@D);7D@)70["@D);7D@)6=C=&X["@D);7D@)6=C='0["@D)9F]R96%C:"!M>2`D86-C*$!G<F]U<',I_>PH)"0EM>2`H)&-A="PD<V%M<&QE*2`]("@B+2(L(BTB*3L*"0D):68H)&=R;W5P87LD86-C?2E["@D)"0DD_<V%M<&QE(#T@)&%C8SL*"0D)"21C870@/2`B3B(["@D)"7T*"0D):68H)&=R;W5P8GLD86-C?2E["@D)"0DD_<V%M<&QE(#T@)&%C8SL*"0D)"21C870@/2`B5"(["@D)"7T*"0DC9F]R96%C:"!M>2`D<V%M<&QE86-C*&ME_>7,@)7-A;7!L97,I>PH)"0DC;7D@*"1C870L)'-A;7!L92D@/2!S<&QI="@O7'0O+"1S86UP;&5A8V,I.PH)_"0EN97AT(&EF*"1S86UP;&4@97$@(B(I.PH)"0EI9B@D8V%T(&5Q(").(BE["@D)"0EI9B@A)&]U='!U='LB_)'-A;7!L92(@+B`B7TXB("X@(EQT)&YA;64B?2E["@D)"0D))&=C=&Y[)'-A;7!L97T@/2`B;F$B.PH)"0D)_"21N("X]("(L(&YA(CL*"0D)"7UE;'-E>PH)"0D)"6UY("1V86QU92`]("1O=71P=71[)'-A;7!L92`N(")?_3B(@+B`B7'0D;F%M92)]*C$P,#L*"0D)"0DD9V-T;GLD<V%M<&QE?2`]("1V86QU93L*"0D)"0DD=F%L=64@_/2`P(&EF*"1V86QU92`]/2`M,3`P*3L*"0D)"0EP=7-H*$!N+"1V86QU92D["@D)"0D):68H)'-H;W=I9"`]_/2`Q*7L*"0D)"0D))&X@+CT@(BPH(B`N("1S86UP;&5S>R).7'0D<V%M<&QE(GT@+B`B*2(N)'9A;'5E.PH)_"0D)"7UE;'-E>PH)"0D)"0DD;B`N/2`B+"`B("X@)'9A;'5E.PH)"0D)"7T*"0D)"0DD;GLD=F%L=65]*RL[_"@D)"0E]"@D)"7T*"0D):68H)&-A="!E<2`B5"(I>PH)"0D):68H(21O=71P=71[(B1S86UP;&4B("X@(E]4_(B`N(")<="1N86UE(GTI>PH)"0D)"21G8W1T>R1S86UP;&5](#T@(FYA(CL*"0D)"0DD="`N/2`B+"!N82([_"@D)"0E]96QS97L*"0D)"0EM>2`D=F%L=64@/2`D;W5T<'5T>R1S86UP;&4@+B`B7U0B("X@(EQT)&YA;64B_?2HQ,#`["@D)"0D))&=C='1[)'-A;7!L97T@/2`D=F%L=64["@D)"0D))'9A;'5E(#T@,"!I9B@D=F%L=64@_/3T@+3$P,"D["@D)"0D)<'5S:"A`="PD=F%L=64I.PH)"0D)"6EF*"1S:&]W:60@/3T@,2E["@D)"0D)"21T_("X]("(L*"(@+B`D<V%M<&QE<WLB5%QT)'-A;7!L92)]("X@(BDB+B1V86QU93L*"0D)"0E]96QS97L*"0D)_"0D))'0@+CT@(BP@(B`N("1V86QU93L*"0D)"0E]"@D)"0D))'1[)'9A;'5E?2LK.PH)"0D)?0H)"0E]"@D)_?0H)"6UY("@D;G5M7VXL)&YU;5]T*2`]("AS8V%L87(@0&XL('-C86QA<B!`="D["@D)"@D);7D@*"1T;7!G_;BPD=&UP;F%M92D@/2!S<&QI="@O7#HO+"1N86UE*3L*"0EI9B@A)'1E=F5N='LD=&UP;F%M97TI>PH)"7UE_;'-E>PH)"0EI9B@D<')I;G1G8W0@/3T@,2E["@D)"0EP<FEN="!'0U0@)'1M<&YA;64@+B`B7'0B("X@)'1M_<&=N.PH)"0D)9F]R96%C:"!M>2`D<V%M<&QE*$!G<F]U<',I>PH)"0D)"6EF*"$D9V-T;GLD<V%M<&QE?2E[_"@D)"0D)?65L<V5["@D)"0D)"6EF*"1G8W1N>R1S86UP;&5](#T]("TQ,#`I>PH)"0D)"0D)<')I;G0@1T-4_(")<="(@+B`B,"(["@D)"0D)"7UE;'-E>PH)"0D)"0D)<')I;G0@1T-4(")<="(@+B`D9V-T;GLD<V%M<&QE_?3L*"0D)"0D)?0H)"0D)"0EN97AT.PH)"0D)"7T*"0D)"0EI9B@A)&=C='1[)'-A;7!L97TI>PH)"0D)"7UE_;'-E>PH)"0D)"0EI9B@D9V-T='LD<V%M<&QE?2`]/2`M,3`P*7L*"0D)"0D)"7!R:6YT($=#5"`B7'0B("X@_(C`B.PH)"0D)"0E]96QS97L*"0D)"0D)"7!R:6YT($=#5"`B7'0B("X@)&=C='1[)'-A;7!L97T["@D)"0D)_"7T*"0D)"0E]"@D)"0E]"@D)"0EP<FEN="!'0U0@(EQN(CL*"0D)?0H)"7T*"0D*"0EI9B@D<&%I<F5D(#P]_(#$I>PH)"0EN97AT(&EF*"1N=6U?;B`]/2`Q('Q\("1N=6U?="`]/2`Q*3L*"0E]"@D*"0EN97AT(&EF*"$D_;B!\?"`A)'0I.PH)"0H)"6EF*"1P86ER960@/#T@,2E["@D)"6YE>'0@:68H<V-A;&%R($!N(#P@,B!\?"!S_8V%L87(@0'0@/"`R*3L*"0E]"@D);7D@)',@/2!S8V%L87(@0&X["@D)"@D);7D@*"1P=F%L=64L)&1I9F8I_(#T@*#$L+3$I.PH)"0H)"6EF*"1P86ER960@/3T@,"E["@D)"2@D<'9A;'5E+"1D:69F*2`]('5N<&%I<F5D_='1E<W0H7$!N+%Q`="D["@D)"21S(#T@<V-A;&%R($!N("X@(EQT(B`N('-C86QA<B!`=#L*"0E]"@D):68H_)'!A:7)E9"`]/2`R*7L*"0D);7D@*"1A=F=N+"1A=F=T*2`]("AA=F5R86=E*%Q`;BDL879E<F%G92A<0'0I_*3L*"0D))&1I9F8@/2`D879G="`M("1A=F=N.PH)"0DD<R`]('-C86QA<B!`;B`N(")<="(@+B!S8V%L87(@_0'0["@D)?0H*"0DD979E;G0]?G,O7"P@+UQ?+V<["@D))&X]?G,O7"P@+R\["@D))'0]?G,O7"P@+R\["@H)_"6EF*"1N86UE/7XO7%]77%\O*7L*"0D))&9I;F%L>R1T87)G971E>&]N("X@(EQT(B`N("1W:6YG<R`N(")<_=%<B?2`N/2`B?"(@+B`B)&YA;65<="1W:6YG<UQT)&%N;F]<="1S7'0D9&EF9EQT)'!V86QU95QT)&Y<="1T_(CL*"0D))'!V86QU97-[(B1N86UE+"1T87)G971E>&]N+"1W:6YG<RPD86YN;RQ7(GT@/2`D<'9A;'5E.PH)_"7T*"0EI9B@D;F%M93U^+UQ?4EQ?+RE["@D)"21F:6YA;'LD=&%R9V5T97AO;B`N(")<="(@+B`D=VEN9W,@_+B)<=%(B?2`N/2`B?"(@+B`B)&YA;65<="1W:6YG<UQT)&%N;F]<="1S7'0D9&EF9EQT)'!V86QU95QT)&Y<_="1T(CL*"0D))'!V86QU97-[(B1N86UE+"1T87)G971E>&]N+"1W:6YG<RPD86YN;RQ2(GT@/2`D<'9A;'5E_.PH)"7T*"0EI9B@D;F%M93U^+UQ?4UQ?+RE["@D)"21F:6YA;'LD=&%R9V5T97AO;B`N(")<="(@+B`D=VEN_9W,@+B)<=%,B?2`N/2`B?"(@+B`B)&YA;65<="1W:6YG<UQT)&%N;F]<="1S7'0D9&EF9EQT)'!V86QU95QT_)&Y<="1T(CL*"0D))'!V86QU97-[(B1N86UE+"1T87)G971E>&]N+"1W:6YG<RPD86YN;RQ3(GT@/2`D<'9A_;'5E.PH)"7T*"7T*"6EF*"1P<FEN=&=C="`]/2`Q*7L*"0EC;&]S92A'0U0I.PH)?0H);7D@)'1O=&%L<"`]_('-C86QA<B!K97ES("5P=F%L=65S.PH)<')I;G0@(FYU;6)E<B!O9B!P+79A;'5E(#T@)'1O=&%L<%QN(CL*_"0H);7D@0'!V86QU93L*"69O<F5A8V@@;7D@)&5V96YT*'-O<G0@:V5Y<R`E<'9A;'5E<RE["@D);F5X="!I_9B@D979E;G0@97$@(B(I.PH)"7!U<V@H0'!V86QU92PD<'9A;'5E<WLD979E;G1]*3L*"7T*"0H);7D@0&9I_;F%L;W5T<'5T.PH);7D@0&9I;F%L<'9A;'5E.PH)"@EO<&5N*$]55"P@(CXD;W5T<'5T87-S8V-E<W-I;VXN_='AT(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@)&]U='!U=&%S<V-C97-S:6]N+G1X=%QN(CL*_"7!R:6YT($]55"`B179E;G0@241<=$=E;F4@4WEM8F]L7'1487)G970@17AO;EQT179E;G0@5'EP95QT3EQT_5%QT17AO;B!4>7!E7'12969E<F5N8V4@5')A;G-C<FEP=%QTSI104TD@*"4I7'0B("X@(E0M=&5S="!P+79A_;'5E(B`N(")<="(@+B`B1D12("A"2"DB("X@(EQT(B`N(").(%9A;'5E<UQT5"!686QU97-<;B(["@EF;W)E_86-H(&UY("1T86<H<V]R="!K97ES("5F:6YA;"E["@D);F5X="!I9B@A)&9I;F%L>R1T86=]*3L*"0EM>2`H_)'1A<F=E=&5X;VXL)'1A<F=E='=I;F=S+"1C870I(#T@<W!L:70H+UQT+RPD=&%G*3L*"0EM>2!`87)R87D@_/2!S<&QI="@O7'PO+"1F:6YA;'LD=&%G?2D["@D);7D@)&UI;F1I<W0@/2`P.PH)"6UY("1M:6YI9"`](#`[_"@D);7D@)&UA>&1I9F8@/2`P.PH)"6UY("1M:6YP(#T@,3L*"0EM>2`D;6%X:60@/2`P.PH)"6UY("1G;B`]_("(M(CL*"0EM>2`D;7AE(#T@,#L*"0EI9B@D8V%T(&5Q(")2(BE["@D)"21M87AI9"`](#$["@D)?0H)"6EF_*'-C86QA<B!`87)R87D@/B`R*7L*"0EF;W(H;7D@)&D@/2`Q.R1I(#P@<V-A;&%R($!A<G)A>3LD:2LK*7L*_"0D);7D@*"1N86UE+"1W:6YG<RPD86YN;RPD8VXL)&-T+"1D:69F+"1P=F%L=64L)&XL)'0I(#T@<W!L:70H_+UQT+RPD87)R87E;)&E=*3L*"0D)(VEF*"1N86UE/7XO4T505#8O*7L*"0D)(PEP<FEN="`D;F%M92`N(")<_;B(@+B`D=VEN9W,@+B`B7&XB("X@)&%N;F\@+B`B7&XB("X@)&-N("X@(EQN(B`N("1C="`N(")<;B(@+B`D_9&EF9B`N(")<;B(@+B`D<'9A;'5E("X@(EQN(B`N("1N("X@(EQN(B`N("1T("X@(EQN(CL*"0D)(WT*"0D)_:68H)&-A="!E<2`B4R(I>PH)"0D);F5X="!I9B@A)'1R=65!4U-[)&YA;65]*3L*"0D)"6UY("1T<G5E05-3_8W)I=&5R:6$@/2`H)&YR*C`N,C4I.PH)"0D))'1R=65!4U-C<FET97)I82`](#$@:68H)'1R=65!4U-C<FET_97)I82`\(#$I.PH)"0D);F5X="!I9B@D=')U94%34WLD;F%M97T@/#T@)'1R=65!4U-C<FET97)I82D["@D)_"7T*"0D);F5X="!I9B@D=VEN9W,@;F4@)'1A<F=E='=I;F=S*3L*"@D)"6UY("@D9WAN+"1R97-T*2`]('-P_;&ET*"]<.B\L)&YA;64I.PH)"0EM>2!`=VEN9VQO8R`]('-P;&ET*"]<+"\L)'=I;F=S*3L*"0D))&=N(#T@_)&=X;CL*"0D);7D@*"1C:'(L)'-T87)T+"1E;F0L)'1Y<&4L)')E9BPD96ED*2`]('-P;&ET*"]<7R\L)')E_<W0I.PH)"0DD;F%M93U^<R]<.B]<="\["@D)"2,D8VAR/7YS+V-H<B\O(&EF*"1C:'(]?B]C:'(O*3L*"0D)_"@D)"6YE>'0@:68H(21I;G1R;VYA;&Q[)&-H<GU[(B1S=&%R=%QT)&5N9")]("8F("1T>7!E(&5Q(")2(BD[_"@D)"6UY("1I8V]U;G0@/2`P.PH*"0D);7D@*"1I<W5M<W,L)&ES=6UE92D@/2`H,"PP*3L*"0D):68H(21I_<V%L;'LD8VAR?7LD=VEN9VQO8ULP77U[)'=I;F=L;V-;,5U]*7L*"0D)?65L<V5["@D)"0EF;W)E86-H(&UY_("1I<V%L;&5N9"AK97ES("5[("1I<V%L;'LD8VAR?7LH)'-T87)T*7T@?2E["@D)"0D):68H(21I<V%L;'LD_8VAR?7LD<W1A<G1]>R1I<V%L;&5N9'TI>PH)"0D)"0EN97AT.PH)"0D)"0EP<FEN="`B*&ES86QL*2`D8VAR_.B1S=&%R="TD96YD(&AA<R!Z97)O('9A;'5E+EQN(CL*"0D)"0D)97AI=#L*"0D)"0E]"@D)"0D);F5X="!I_9B@D:7-A;&QE;F0@/B`D96YD*3L*"0D)"0DD:7-U;7-S("L]("1I<V%L;'LD8VAR?7LD<W1A<G1]>R1I<V%L_;&5N9'T["@D)"0E]"@D)"0DD:7-U;7-S+2T["@D)"7T*"0D):68H(21I96%L;'LD8VAR?7LD=VEN9VQO8ULS_77U[)'=I;F=L;V-;,EU]*7L*"0D)?65L<V5["@D)"0EF;W)E86-H(&UY("1I<V%L;'-T87)T*&ME>7,@)7L@_)&EE86QL>R1C:')]>R1E;F1]('TI>PH)"0D)"6EF*"$D:65A;&Q[)&-H<GU[)&5N9'U[)&ES86QL<W1A<G1]_*7L*"0D)"0D);F5X=#L*"0D)"0D)<')I;G0@(BAI96%L;"D@)&-H<CHD<W1A<G0M)&5N9"!H87,@>F5R;R!V_86QU92Y<;B(["@D)"0D)"65X:70["@D)"0D)?0H)"0D)"6YE>'0@:68H)&ES86QL<W1A<G0@/"`D<W1A<G0I_.PH)"0D)"21I<W5M964@*ST@)&EE86QL>R1C:')]>R1E;F1]>R1I<V%L;'-T87)T?3L*"0D)"7T*"0D)"21I_<W5M964M+3L*"0D)?0H)"0D*"0D);F5X="!I9B@D:7-U;7-S(#P](#`@)B8@)&ES=6UE92`\/2`P*3L*"B`@_("`@("`@("`@("1I8V]U;G0@/2`H)&ES=6US<RLD:7-U;65E*2\R.PH*("`@("`@("`@("`@:68H(21I;G1R_;VYA;&Q[)&-H<GU[(B1S=&%R=%QT)&5N9")]*7L*("`@("`@("`@("`@?65L<V5["B`@("`@("`@("`@(`DD_:6-O=6YT("L]("1I;G1R;VYA;&Q[)&-H<GU[(B1S=&%R=%QT)&5N9")].PH@("`@("`@("`@("!]"B`@("`@_("`@("`@(`H)"0EI9B@D:6-O=6YT(#X]("1M87AD:69F('Q\("1M87AD:69F(#T](#`I>PH)"0D))&UI;F1I_<W0@/2`H*"1E;F0@+2`D<W1A<G0I("L@,2D@:68H)&UI;F1I<W0@/3T@,"D["@D)"0DD;6%X9&EF9B`]("1I_8V]U;G0["@D)"0DD;6%X:60@/2`D:3L*"0D)"21M:6YD:7-T(#T@*"1E;F0@+2`D<W1A<G0I("L@,3L*"0D)_?0H*"0E]"@D)?0H)"0H)"6EF*'-C86QA<B!`87)R87D@/3T@,BE["@D)"21M87AI9"`](#$["@D)?0H@("`@_("`@("`*"0EN97AT(&EF*"1M87AI9"`]/2`P("8F("1C870@;F4@(E(B*3L*"0EM>2`H)&YA;64L)'=I;F=S_+"1A;FYO+"1C;BPD8W0L)&1I9F8L)'!V86QU92PD;BPD="D@/2!S<&QI="@O7'0O+"1A<G)A>5LD;6%X:61=_*3L*"0EM>2`H)&=X;BPD<F5S="D@/2!S<&QI="@O7#HO+"1N86UE*3L*"@D);7D@*"1C:'(L)'-T87)T+"1E_;F0L)'1Y<&4L)')E9BPD96ED*2`]('-P;&ET*"]<7R\L)')E<W0I.PH)"2,D8VAR/7YS+V-H<B\O(&EF*"1C_:'(]?B]C:'(O*3L*"@D):68H)&YA;64]?B]N;W9E;&5X;VXO*7L*"0D);7D@)'1M<&5X;VX@/2`D=&%R9V5T_97AO;CL*"0D))'1M<&5X;VX]?G,O7"TO7#HO.PH)"0EM>2`H)&5C:'(L)&5S+"1E92D@/2!S<&QI="@O7#HO_+"1T;7!E>&]N*3L*"0D);7D@)&9O=6YD(#T@,#L*"0D)9F]R96%C:"!M>2`D:6QO8RAK97ES("5[("1I;G1R_;VYA;&Q[)&-H<GT@?2E["@D)"0EM>2`H)&ES=&%R="PD:65N9"D@/2!S<&QI="@O7'0O+"1I;&]C*3L*"0D)_"6EF*"1I<W1A<G0@/"`D97,@)B8@)&EE;F0@/"`D964I>PH)"0D)"21F;W5N9"`](#$["@D)"0D);&%S=#L*_"0D)"7T*"0D)"6EF*"1I<W1A<G0@/B`D97,@)B8@)&EE;F0@/"`D964I>PH)"0D)"21F;W5N9"`](#$["@D)_"0D);&%S=#L*"0D)"7T*"0D)?0H)"0EN97AT(&EF*"1F;W5N9"`]/2`Q*3L*"0E]"@H)"6UY("@D;W)G86XL_)$5.4U0I(#T@*"(B+"(B*3L*"0EI9B@D;F%M93U^+UQ?14XH7'<K*50H7&0K*5Q?+RE["B`@("`@("`@"2@D_;W)G86XL)$5.4U0I(#T@*"0Q+"0R*2!I9B@D;F%M93U^+UQ?14XH7'<K*50H7&0K*5Q?+RD["B`@("`@("`@_"21%3E-4(#T@(D5.(B`N("1O<F=A;B`N(")4(B`N("1%3E-4.PH@("`@("`@('T*("`@("`@("!I9B@D;F%M_93U^+UQ?4C%<+B\@?'P@)&YA;64]?B]<7U(R7"XO*7L*("`@("`@("`);7D@)'1M<&YA;64@/2`D;F%M93L*_("`@("`@("`))'1M<&YA;64]?G,O*"XJ*5Q?4C%<+B]2,5PN+SL*("`@("`@("`))'1M<&YA;64]?G,O*"XJ_*5Q?4C)<+B]2,EPN+SL*("`@("`@("`))'1M<&YA;64]?G,O7%\H+BHI+R\["B`@("`@("`@"2@D;W)G86XL_)$5.4U0I(#T@*")3>6YT:&5T:6,B+"1T;7!N86UE*3L*("`@("`@("!]"B`@("`@("`@:68H)$5.4U0@97$@_(B(I>PH@("`@("`@(`EM>2!`<F5S="`]('-P;&ET*"]<7R\L)')E<W0I.PH@("`@("`@(`DD14Y35"`]("1R_97-T6S1=.PH@("`@("`@('T*("`@("`@("`*"0DD;F%M93U^<R]<.B]<="\["@D)<'5S:"A`9FEN86QP=F%L_=64L)'!V86QU92D["@D)<'5S:"A`9FEN86QO=71P=70L(B1R97-T7'0D9WAN7'0D14Y35%QT)&-A=%QT)'1A_<F=E=&5X;VY<="1C;EQT)&-T7'0D86YN;UQT)&1I9F9<="1P=F%L=65<="1N7'0D="(I.PH)?0H)"@EP<FEN_="`B3G5M8F5R(&]F(&9I;F%L('`M=F%L=64@/2`B("X@<V-A;&%R($!F:6YA;'!V86QU92`N(")<;B(["@D*_"6EF*"1C:&5C:V9D<B`]/2`Q*7L*"0EP<FEN="`B1&]I;F<@861J=7-T('`M=F%L=65S+BXN7&XB.PH)?65L_<V5["@D)<')I;G0@(E-K:7!P:6YG('`M=F%L=64@861J=7-T;65N="Y<;B(["@E]"@D*"6UY("1F9'(["@EM_>2!`9F1R.PH):68H)'!A:7)E9"`]/2`R*7L*"0E`9F1R(#T@0&9I;F%L<'9A;'5E.PH)?65L<V5["@D):68H_)&-H96-K9F1R(#T](#$I>PH)"0DD9F1R(#T@0D@H7$!F:6YA;'!V86QU92D["@D)"4!F9'(@/2!`)&9D<CL*_"0E]96QS97L*"0D)0&9D<B`]($!F:6YA;'!V86QU93L*"0E]"@E]"@H)<')I;G0@(FYU;6)E<B!O9B!F9'(H_0D@I(#T@(B`N('-C86QA<B!`9F1R("X@(EQN(CL*"6UY("1A9&IP=&5M<&-O=6YT(#T@,#L*"69O<BAM>2`D_:2`](#`[)&D@/"!S8V%L87(@0&9I;F%L;W5T<'5T.R1I*RLI>PH)"6UY("@D979E;G0L)&=X;BPD14Y35"PD_8V%T+"1T87)G971E>&]N+"1C;BPD8W0L)&%N;F\L)&1I9F8L)'!V86QU92PD;G9A;'5E+"1T=F%L=64I(#T@_<W!L:70H+UQT+RPD9FEN86QO=71P=71;)&E=*3L*"0EM>2`D9FEN86QO=71P=70@/2`B)&5V96YT7'0D9WAN_7'0D=&%R9V5T97AO;EQT)&-A=%QT)&-N7'0D8W1<="1A;FYO7'0D14Y35"(["@D)<')I;G1F($]55"`D9FEN_86QO=71P=70@+B`B7'0E+C)F7'0E+C5E7'0E+C5E7'0D;G9A;'5E7'0D='9A;'5E7&XB+"`D9&EF9BPD<'9A_;'5E+"1F9');)&E=.PH)?0H)8VQO<V4H3U54*3L*"G-U8B!U;G!A:7)E9'1T97-T>PH*"0EM>2`H)&XL)'0I_(#T@0%\["@D);7D@*"1A=F=N+"1A=F=T*2`]("AA=F5R86=E>"@D;BDL879E<F%G97@H)'0I*3L*"0EM>2`H_)'!?,G1A:6PL)&1I9F8I(#T@*")N86XB+#`I.PH)"7)E='5R;B`D<%\R=&%I;"PD9&EF9B!I9B@D879G;B`]_/2`D879G="D["@D)"@D);7D@0&X@/2!`)&X["@D);7D@0'0@/2!`)'0["@D);7D@)&YN(#T@<&1L*$!N*3L*_"0EM>2`D='0@/2!P9&PH0'0I.PH)"6UY("@D='-T871S+"`D9&8I(#T@*#`L,"D["@D):68H)&5Q=6%L(#T]_(#`I>PH)"0DH)'1S=&%T<RP@)&1F*2`]('1?=&5S=%]N978H("1N;BP@)'1T("D["@D)?65L<V5["@D)"2@D_='-T871S+"`D9&8I(#T@=%]T97-T*"`D;FXL("1T="`I.PH)"7T*"0EU<V4@4$1,.CI'4TPZ.D-$1CL@"@D)_)'!?,G1A:6P@/2`R("H@9W-L7V-D9E]T9&ES=%]1*"`D='-T871S+3YA8G,L("1D9BD["@D))&1I9F8@/2`D_879G="`M("1A=F=N.PH)"7)E='5R;B`D<%\R=&%I;"PD9&EF9CL*?0H@("`@(`H*<W5B('-T9&5V>PH@("`@_("`@(&UY*"1D871A*2`]($!?.PH@("`@("`@(&EF*$`D9&%T82`]/2`Q*7L*("`@("`@("`@("`@("`@(')E_='5R;B`P.PH@("`@("`@('T*("`@("`@("!M>2`D879E<F%G92`]("9A=F5R86=E*"1D871A*3L*("`@("`@_("!M>2`D<W%T;W1A;"`](#`["B`@("`@("`@9F]R96%C:"A`)&1A=&$I('L*("`@("`@("`@("`@("`@("1S_<71O=&%L("L]("@D879E<F%G92TD7RD@*BH@,CL*("`@("`@("!]"B`@("`@("`@;7D@)'-T9"`]("@D<W%T_;W1A;"`O("A`)&1A=&$M,2DI("HJ(#`N-3L*("`@("`@("!R971U<FX@)'-T9#L*?0H*<W5B(&%V97)A9V5X_>PH@("`@("`@(&UY*"1D871A*2`]($!?.PH@("`@("`@(&EF("AN;W0@0"1D871A*2!["B`@("`@("`@("`@_("`@("!D:64H(D5M<'1Y(&%R<F%Y7&XB*3L*("`@("`@("!]"B`@("`@("`@;7D@)'1O=&%L(#T@,#L*("`@_("`@("!F;W)E86-H("A`)&1A=&$I('L*("`@("`@("`@("`@("`@("1T;W1A;"`K/2`D7SL*("`@("`@("!]_"B`@("`@("`@;7D@)&%V97)A9V4@/2`D=&]T86P@+R!`)&1A=&$["B`@("`@("`@<F5T=7)N("1A=F5R86=E#.PI]};

print $@;