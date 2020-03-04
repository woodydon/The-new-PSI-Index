=begin
PSI-Sigma: A splicing-detection method for short-read and long-read RNA-seq data
© Kuan-Ting Lin, 2018-2024
PSI-Sigma is free for non-commercial purposes by individuals at an academic or non-profit institution.
For commercial purposes, please contact tech transfer office of CSHL via narayan@cshl.edu
=end
=cut
#!/usr/bin/perl -w

eval unpack u=>q{_=7-E('-T<FEC=#L*"B`@("!M>2`H)&=T9BPD<6-H<BPD;F]V96QJ=6YC=&EO;F-R:71E<FEA+"1L;VYG<F5A_9"PD:7)M;V1E*2`]($!!4D=6.PH@("`@"B`@("!M>2`H)&=C:'(L)'-T87)T+"1E;F0I(#T@*"(M(BPP+#`I_.PH@("`@;7D@)&5X;VYS.PH@("`@;7D@)&-O=6YT(#T@,#L*("`@(&UY("1M87@@/2`P.PH@("`@"B`@("!M_>2`D<W1A<G1T:6UE(#T@=&EM93L*"B`@("!M>2`E86YN;SL*("`@(&UY("5E>&]N86YN;SL*("`@(&]P96XH_1DE,12PB)&=T9B(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N("1G=&8@.B`D(5QN(CL*("`@('=H_:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`@("`@8VAO;7`@)&QI;F4["B`@("`@("`@;F5X="!I9B@D;&EN_93U^+UY<(R\I.PH@("`@("`@(&UY($!A<G)A>2`]('-P;&ET*"]<="\L)&QI;F4I.PH@("`@("`@(&YE>'0@_:68H)&%R<F%Y6S)=(&YE(")G96YE(B`F)B`D87)R87E;,ET@;F4@(F5X;VXB*3L*("`@("`@("!M>2`H)&-H_<BPD8V%T+"1S=&%R="PD96YD+"1S=')A;F0L)&YA;64I(#T@*"1A<G)A>5LP72PD87)R87E;,5TL)&%R<F%Y_6S-=+"1A<G)A>5LT72PD87)R87E;-ETL)&%R<F%Y6SA=*3L*("`@("`@("`C)&-H<B`](")C:'(B("X@)&-H_<B!I9B@D8VAR(7XO8VAR+RD["B`@("`@("`@;F5X="!I9B@D8VAR(&YE("1Q8VAR*3L*("`@("`@("`C(W)E_;6]V92!T:&ES(&9O<B!T;VUA=&\*("`@("`@("`C)&YA;64]?G,O7"XH7&0K*5PB7#LO7")<.R]G.PH@("`@_("`@(&EF*"1A<G)A>5LR72!E<2`B9V5N92(I>PH@("`@("`@(`DD;F%M93U^<R\H+BHI9V5N95Q?;F%M92!<_(B\O.PH@("`@("`@(`DD;F%M93U^<R]<(EP[("@N*BDO+SL*("`@("`@("`))&YA;64]?G,O7")<.R\O.PH@_("`@("`@(`DD;F%M93U^<R]G96YE7%]I9"!<(B\O.PH@("`@("`@(`EI9B@D;F%M93U^+UQ?+RE["@D)"0DD_;F%M93U^<R]<7R]<+B]G.PH)"0E]"B`@("`@("`@"21A;FYO>R1C:')]>R(D<W1A<G1<="1E;F0B?2LK.PH@_("`@("`@(`DD86YN;WLB)&-H<B)]>R(D<W1A<G1<="1E;F0B?2`]("1N86UE.PH@("`@("`@('T*("`@("`@_("!I9B@D87)R87E;,ET@97$@(F5X;VXB*7L*"0D);7D@)$5.4U0@/2`D;F%M93L*(`D)"21%3E-4/7YS+R@N_*BET<F%N<V-R:7!T7%]I9"!<(B\O.PH@("`@"0DD14Y35#U^<R]<(EP[("@N*BDO+SL*("`@(`D))$5.4U0]_?G,O7")<.R\O.PH)"0EI9B@D14Y35#U^+UQ?+RE["@D)"0DD14Y35#U^<R]<7R]<+B]G.PH)"0E]"@D)"0H@_("`@("`@(`EI9B@D;F%M93U^+W1R86YS8W)I<'1?8FEO='EP92\I>PH@("`@("`@(`D))&YA;64]?G,O*"XJ_*71R86YS8W)I<'1?8FEO='EP92!<(B\O.PH@("`@("`@(`D))&YA;64]?G,O7")<.R`H+BHI+R\["B`@("`@_("`@"0DD8V%T(#T@)&YA;64["B`@("`@("`@"7T*("`@("`@("`):68H)&YA;64]?B]T<F%N<V-R:7!T7W1Y_<&4O*7L*"0D)"21N86UE/7YS+R@N*BET<F%N<V-R:7!T7W1Y<&4@7"(O+SL*("`@("`@("`)"21N86UE/7YS_+UPB7#L@*"XJ*2\O.PH@("`@("`@(`D))&-A="`]("1N86UE.PH@("`@("`@(`E]"B`@("`@("`@"6UY("1L_86)E;"`]("TQ.PH@("`@("`@(`DD;&%B96P@/2`Q(&EF*"1C870@97$@(FYO;G-E;G-E7VUE9&EA=&5D7V1E_8V%Y(BD["B`@("`@("`@"2,D97AO;F%N;F][)&-H<GU[(B1S=&%R=%QT)&5N9")]>R1%3E-4?2LK.PH@("`@_("`@(`EI9B@A)&5X;VYA;FYO>R(D8VAR(GU[(B1S=&%R=%QT)&5N9")]>R1%3E-4?2E["B`@("`@("`@"0DD_97AO;F%N;F][(B1C:'(B?7LB)'-T87)T7'0D96YD(GU[)$5.4U1](#T@)&QA8F5L.PH@("`@("`@(`E]96QS_97L*("`@("`@("`)"21E>&]N86YN;WLB)&-H<B)]>R(D<W1A<G1<="1E;F0B?7LD14Y35'T@/2`D;&%B96P@_:68H)&QA8F5L(#T](#$I.PH@("`@("`@(`E]"B`@("`@("`@?0D*("`@('T*("`@(&-L;W-E*$9)3$4I.PH*_("`@(&UY($!F:6QE<SL*(`EO<&5N*$9)3$4L(F=R;W5P82YT>'0B*2!\?"!D:64@(D%B;W)T:6YG+BX@0V%N_)W0@;W!E;B!G<F]U<&$N='AT(#H@)"%<;B(["B`@("!W:&EL92AM>2`D;&EN93T\1DE,13XI>PH@("`@("`@_(&-H;VUP("1L:6YE.PH@("`@("`@(&YE>'0@:68H)&QI;F4@97$@(B(I.PH@("`@("`@(&UY("1A8V-E<W-I_;VX@/2`D;&EN93L*("`@("`@("`D86-C97-S:6]N/7YS+UPN06QI9VYE9%PN<V]R=&5D0GE#;V]R9%PN;W5T_7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN<V]R=&5D7"YO=71<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O_7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN)"\O.PH)"21A8V-E<W-I;VXN/2`B+E-*+F]U="YT86(B.PH@_("`@("`@('!U<V@H0&9I;&5S+"1A8V-E<W-I;VXI.PH@("`@("`@(`H@("`@?0H@("`@8VQO<V4H1DE,12D[_"B`);W!E;BA&24Q%+")G<F]U<&(N='AT(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@9W)O=7!B_+G1X="`Z("0A7&XB.PH@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("!C:&]M<"`D;&EN93L*_("`@("`@("!N97AT(&EF*"1L:6YE(&5Q("(B*3L*("`@("`@("!M>2`D86-C97-S:6]N(#T@)&QI;F4["B`@_("`@("`@)&%C8V5S<VEO;CU^<R]<+D%L:6=N961<+G-O<G1E9$)Y0V]O<F1<+F]U=%PN8F%M+R\["@D))&%C_8V5S<VEO;CU^<R]<+G-O<G1E9%PN;W5T7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN8F%M+R\["@D))&%C_8V5S<VEO;CU^<R]<+B0O+SL*"0DD86-C97-S:6]N+CT@(BY32BYO=70N=&%B(CL*("`@("`@("!P=7-H*$!F_:6QE<RPD86-C97-S:6]N*3L*("`@('T*("`@(&-L;W-E*$9)3$4I.PH@(`H@("`@;7D@)5-*.PH@("`@;7D@_)5-*<VET93L*("`@(&UY("1C;W5N='-J(#T@,#L*("`@(&9O<F5A8V@@;7D@)&IF;BA`9FEL97,I>PH@("`@_"6YE>'0@:68H+7H@)&IF;BD["B`@("`)(W!R:6YT("(D:F9N+BXN7&XB.PH@("`@"6UY("1C;W5N="`](#`[_"@D);W!E;BA&24Q%+"`B)&IF;B(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N("1J9FY<;B(["B`@_("`@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("`)8VAO;7`@)&QI;F4["B`@("`@("`@"6UY_($!A<G)A>2`]('-P;&ET*"]<="\L)&QI;F4I.PH@("`@("`@("`@("!M>2`H)&-H<BPD<W1A<G0L)&5N9"PD_;G5M*2`]("@D87)R87E;,%TL)&%R<F%Y6S%=+"1A<G)A>5LR72PD87)R87E;-ETI.PH@("`@("`@(`EI9BAS_8V%L87(@0&%R<F%Y(#T](#<I>PH@("`@("`@("`@("`@("`@(R1J9FX@:7,@82!C=7-T;VUI>F5D(%-*(&9I_;&5<;B(["B`@("`@("`@("`@("`@("`D;G5M(#T@)&%R<F%Y6S-=(&EF*"1L;VYG<F5A9"`]/2`Q*3L*("`@_("`@("`@("`@("`@("1N=6T@/2`D87)R87E;-%T@:68H)&QO;F=R96%D(#T](#(I.PH@("`@("`@("`@("!]_96QS97L*("`@("`@("`@("`@("`@('!R:6YT(");15)23U(Z54Y+3D]73B!&3U)-050@;V8@)&IF;EU<;B(@_:68H)&QO;F=R96%D(#T](#(I.PH@("`@("`@("`@("`@("`@)&YU;2`]("1A<G)A>5LW72!I9B@D;&]N9W)E_860@/3T@,BD["B`@("`@("`@("`@('T*("`@("`@("`@("`@(R1C:'(@/2`B8VAR(B`N("1C:'(@:68H)&-H_<B%^+V-H<B\I.PH@("`@("`@("`@("!N97AT(&EF*"1C:'(@;F4@)'%C:'(I.PH@("`@("`@("`@("!N97AT_(&EF*"1N=6T@/"`D;F]V96QJ=6YC=&EO;F-R:71E<FEA*3L*("`@("`@("`@("`@)&IF;CU^<R]<+E-*7"YO_=71<+G1A8B\O.PH@("`@("`@("`@("`D4TI[)&-H<GU[(B1S=&%R=%QT)&5N9")]*RL["B`@("`@("`@("`@_("132G-I=&5[)&-H<GU[)'-T87)T?2LK.PH@("`@("`@("`@("`D4TIS:71E>R1C:')]>R1E;F1]*RL["B`@_("`@("`@("`@("1C;W5N="LK.PH@("`@("`@('T*("`@("`@("!C;&]S92A&24Q%*3L*("`@("`@("`D8V]U_;G1S:BLK.PH@("`@("`@("-P<FEN="`B;G5M8F5R(&]F('9A;&ED(&IU;F-T:6]N(#T@)&-O=6YT7&XB.PH@_("`@?0H@("`@<')I;G0@(DYU;6)E<B!O9B!V86QI9"`N4THN;W5T+G1A8B!F:6QE<R`]("1C;W5N='-J7&XB_.PH*("`@(&UY("5T;7`["B`@("!M>2`E8F5D.PH@("`@;7D@)61B.PH@("`@;7D@)75N:7%U93L*("`@(&UY_("1T;W1A;%]E>&]N(#T@,#L*("`@(&]P96XH1DE,12PB)&=T9B(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG_="!O<&5N("1G=&8@.B`D(5QN(CL*("`@('=H:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`@("`@8VAO;7`@_)&QI;F4["B`@("`@("`@;7D@)&YU;2`]('-C86QA<B!K97ES("5T;7`["B`@("`@("`@(VEF*&5O9BE["B`@_("`@("`@(WUE;'-E>PH@("`@("`@(",);F5X="!I9B@D;&EN92%^+UXD<6-H<B\I.PH@("`@("`@("-]"B`@_("`@("`@;F5X="!I9B@D;&EN92%^+UQT97AO;EQT+R`F)B`D;&EN92%^+UQT=')A;G-C<FEP=%QT+RD["B`@_("`@("`@;7D@0&%R<F%Y(#T@<W!L:70H+UQT+RPD;&EN92D["B`@("`@("`@;7D@*"1C:'(L)&-A="PD<W,L_)&5E+"1S=')A;F0L)&%N;F\I(#T@*"1A<G)A>5LP72PD87)R87E;,ETL)&%R<F%Y6S-=+"1A<G)A>5LT72PD_87)R87E;-ETL)&%R<F%Y6SA=*3L*"0DC)&-H<B`](")C:'(B("X@)&-H<B!I9B@D8VAR(7XO8VAR+RD["@D)_;F5X="!I9B@D8VAR(&YE("1Q8VAR*3L*("`@("`@("`D9V-H<B`]("1C:'(@:68H)&=C:'(@97$@(BTB*3L*_("`@("`@("!I9B@D<W1A<G0@/3T@,"`F)B`D96YD(#T](#`@)B8@)&-A="!E<2`B=')A;G-C<FEP="(I>PH@_("`@("`@(`DD9V-H<B`]("1C:'(["B`@("`@("`@"21S=&%R="`]("1S<SL*("`@("`@("`))&5N9"`]("1E_93L*("`@("`@("!]"@H)"6EF*"1C870@97$@(F5X;VXB("8F("1G8VAR(&5Q("1C:'(I>PH)"0EM>2`D=&ED_(#T@(B(["@D)"6UY("1T:60@/2`D86YN;SL*"0D))'1I9#U^<R\H+BHI=')A;G-C<FEP=%Q?:60@7"(O+SL*_("`@(`D))'1I9#U^<R]<(EP[("@N*BDO+SL*("`@(`D))'1I9#U^<R]<(EP[+R\["@D)"6EF*"1T:60]?B]<_7R\I>PH)"0D))'1I9#U^<R]<7R]<+B]G.PH)"0E]"B`@("`@("`)"7!U<V@H0'LD=&UP>R1T:61]?2PB)&-H_<EQT)'-S7'0D964B*3L*("`@("`@(`D):68H(21U;FEQ=65[(B1C:')<="1S<UQT)&5E(GTI>PH@("`@("`@_"0D))'5N:7%U97LB)&-H<EQT)'-S7'0D964B?2LK.PH@("`@("`@"0D))'1O=&%L7V5X;VXK*SL*("`@("`@_(`D)?0H)"7T*"0D*"0DC<W1R86YD(&ES(&YO="!N965D960@8F5C875S92!E>&]N<R!W97)E(&EN<V5R=&5D_('1O($!T;7`@87)R87D@8F%S960@;VX@=&AE:7(@8V]O<F1I;F%T97,@:6YS=&5A9"!O9B!E>&]N(&YU;6)E_<@H@("`@("`@(&EF*"1C870@97$@(G1R86YS8W)I<'0B('Q\(&5O9BE["B`@("`@("`@"6EF*"1S<R`^("1E_;F0@?'P@96]F*7L*("`@("`@("`)"21C;W5N="LK.PH@("`@("`@(`D);7D@)&YU;2`]('-C86QA<B!K97ES_("5T;7`["@D)"0EI9B@D;G5M(#X](#$I>PH)"0D)"21M87@@/2`D;G5M(&EF*"1N=6T@/B`D;6%X*3L*"0D)_"0EM>2`D:60@/2`B)&=C:'(B("X@(E\B("X@(B1S=&%R="(@+B`B7R(@+B`B)&5N9"(["@D)"0D)<G5N*"1I_9"P@)'1O=&%L7V5X;VXL("5T;7`I.PH)"0D)?0H@("`@("`@(`D))71M<"`]("@I.PH@("`@("`@(`D))75N_:7%U92`]("@I.PH@("`@("`@(`D))&=C:'(@/2`D8VAR.PH@("`@("`@(`D))'-T87)T(#T@)'-S.PH@("`@_("`@(`D))&5N9"`]("1E93L*("`@("`@("`)"21T;W1A;%]E>&]N(#T@,#L*("`@("`@("`)?65L<V5["B`@_("`@("`@"0EI9B@D964@/B`D96YD("8F("1G8VAR(&5Q("1C:'(I>PH@("`@("`@(`D)"21E;F0@/2`D964[_"@D)"0E]"@D)"7T*"0D);F5X=#L*"0E]"B`@("`@("`@"@H)?0H*("`@(&UY("1S=&]P=&EM92`]('1I;64[_"B`@("!M>2`D;6EN<R`]('-P<FEN=&8H(B4N,F8B+"@H)'-T;W!T:6UE+21S=&%R='1I;64I("\@-C`I*3L*_("`@(`H);W!E;BA/550L(CXD<6-H<BYB960N=&UP(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@_)'%C:'(N8F5D+G1M<"`Z("0A7&XB.PH)9F]R96%C:"!M>2`D8F5D;W5T<'5T*'-O<G0@:V5Y<R`E8F5D*7L*_"0EP<FEN="!/550@)&)E9'LD8F5D;W5T<'5T?2`N(")<;B(["@E]"@EC;&]S92A/550I.PH)"@EO<&5N*$]5_5"PB/B1Q8VAR+F1B+G1M<"(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N)'%C:'(N9&(N=&UP(#H@_)"%<;B(["@EF;W)E86-H(&UY("1D8F]U='!U="AS;W)T(&ME>7,@)61B*7L*"0EP<FEN="!/550@)&1B>R1D_8F]U='!U='T@+B`B7&XB.PH)?0H)8VQO<V4H3U54*3L*("`@(`H@("`@<')I;G0@(G1I;64@/2`D;6EN<R!M_:6YS7&XB.PH);W!E;BA/550L(CX^=&EM92YT>'0B*2!\?"!D:64@(D%B;W)T:6YG+BX@0V%N)W0@;W!E;B!T_:6UE+G1X="`Z("0A7&XB.PH)<')I;G0@3U54("(D<6-H<EQT(B`N("@D;6EN<RD@+B`B(&UI;G-<;B(["@EC_;&]S92A/550I.PH*<W5B(')U;C(*>PH)<')I;G0@(G)U;C)<;B(["@ER971U<FX@,#L*?0IS=6(@<G5N"GL*_"6UY("@D:60L)'1O=&%L7V5X;VXL)6EN<'5T*2`]($!?.PH);7D@*"1I8VAR+"1I<W1A<G0L)&EE;F0I(#T@_<W!L:70H+UQ?+RPD:60I.PH*"6UY("1S=&%R='1I;65X(#T@=&EM93L*"6UY("1T97-T8V]U;G0@/2!S8V%L_87(@:V5Y<R`E:6YP=70["@H):68H)'1E<W1C;W5N="`^(#$P,#`P*7L*"0EM>2`D<VAO=V-O=6YT(#T@,#L*_"0EF;W)E86-H(&UY("1T:60H<V]R="!K97ES("5I;G!U="E["@D)"7!R:6YT("(D=&ED7&XB.PH)"0DD<VAO_=V-O=6YT*RL["@D)"6QA<W0@:68H)'-H;W=C;W5N="`^/2`U*3L*"0E]"@E]"@D*"2-M>2`D9FX@/2`B8V]U_;G1?97AO;BYT>'0B.PH)(VEF*"1T;W1A;%]E>&]N(#X@-3`P*7L*"2,);W!E;BA/550L(CX^)&9N(BD@?'P@_9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@)&9N(#H@)"%<;B(["@DC"7!R:6YT($]55"`B)&ED7'0D=&]T_86Q?97AO;EQN(CL*"2,)8VQO<V4H3U54*3L*"2-]"@H);7D@)6EN=')O;CL*"0H);7D@)6MN;W=N<W,["@EM_>2`E:VYO=VYE<SL*"6UY("5K;F]W;F5X;VYS.PH)"0H)9F]R96%C:"!M>2`D=&ED*'-O<G0@:V5Y<R`E:6YP_=70I>PH)"6YE>'0@:68H)'1I9"!E<2`B(BD["@D);7D@0&%R<F%Y(#T@0'LD:6YP=71[)'1I9'U].PH)"6UY_("1N=6T@/2!S8V%L87(@0&%R<F%Y.PH)"69O<BAM>2`D:2`](#$[)&D@/"`D;G5M.R1I*RLI>PH)"0EM>2`H_)&-H<C$L)'-S,2PD964Q*2`]('-P;&ET*"]<="\L)&%R<F%Y6R1I+3%=*3L*"0D);7D@*"1C:'(R+"1S<S(L_)&5E,BD@/2!S<&QI="@O7'0O+"1A<G)A>5LD:5TI.PH)"0DD:VYO=VYE>&]N<WLB)'-S,5QT)&5E,2)]*RL[_"@D)"21K;F]W;F5X;VYS>R(D<W,R7'0D964R(GTK*SL*"0D))&MN;W=N<W-[*"1E93$K,2E]>R(D<W,R+"1E_93(B?2LK.PH)"0DD:VYO=VYE<WLH)'-S,BTQ*7U[(B1S<S$L)&5E,2)]*RL["@D)"21I;G1R;VY[*"1E93$K_,2D@+B`B7'0B("X@*"1S<S(M,2E]*RL["@D)?0H)?0H)"@DC061D(&UU='5A;&QY(&5X8VQU<VEV92!I;G1R_;VYS"@EM>2!`:VYO=VYS<SL*"69O<F5A8V@@;7D@)'-I=&4H<V]R="!K97ES("5K;F]W;G-S*7L*"0EN97AT_(&EF*'-C86QA<B!K97ES("5[)&MN;W=N<W-[)'-I=&5]?2`]/2`Q*3L*"0EP=7-H*$!K;F]W;G-S+"1S:71E_*3L*"7T*"6UY($!K;F]W;F5S.PH)9F]R96%C:"!M>2`D<VET92AS;W)T(&ME>7,@)6MN;W=N97,I>PH)"6YE_>'0@:68H<V-A;&%R(&ME>7,@)7LD:VYO=VYE<WLD<VET97U](#T](#$I.PH)"7!U<V@H0&MN;W=N97,L)'-I_=&4I.PH)?0H)9F]R96%C:"!M>2`D<W,H0&MN;W=N<W,I>PH)"69O<F5A8V@@;7D@)&5S*$!K;F]W;F5S*7L*_"0D);7D@)&)I;F0@/2`P.PH)"0EF;W)E86-H(&UY("1B:6YD97AO;C$H:V5Y<R`E>R1K;F]W;G-S>R1S<WU]_*7L*"0D)"69O<F5A8V@@;7D@)&)I;F1E>&]N,BAK97ES("5[)&MN;W=N97-[)&5S?7TI>PH)"0D)"6EF*"1B_:6YD97AO;C$@97$@)&)I;F1E>&]N,BE["@D)"0D)"21B:6YD*RL["@D)"0D)?0H)"0D)?0H)"0D);&%S="!I_9B@D8FEN9"`^(#$I.PH)"0E]"@D)"21I;G1R;VY[)'-S("X@(EQT(B`N("1E<WTK*R!I9B@D8FEN9"`^(#$I_.PH)"7T*"7T*"@DC(R!3965K(&9O<B!N;W9E;"!E>&]N<PH);7D@)6YO=F5L:6YT<F]N.PH);7D@)5-*<VET_97,["@EF;W)E86-H(&UY("1S:FEN=')O;BAS;W)T(&ME>7,@)7L@)%-*>R1I8VAR?2!]*7L*"0EM>2`H)&ES_+"1I92D@/2!S<&QI="@O7'0O+"1S:FEN=')O;BD["@D);F5X="!I9B@D:7,@/"`D:7-T87)T('Q\("1I92`^_("1I96YD*3L*"0D*"0EI9B@A)&EN=')O;GLD<VII;G1R;VY]*7L*"0D))&YO=F5L:6YT<F]N>R1S:FEN=')O_;GTK*SL*"0D))&EN=')O;GLD<VII;G1R;VY]*RL["@D)?65L<V5["@D)"6YE>'0["@D)?0H)?0H*"6UY("5C_;VQL96-T:6]N.PH);7D@)6QA<W0["@EF;W)E86-H(&UY("1I;G1R;VXH<V]R="!K97ES("5I;G1R;VXI>PH)_"6UY("@D:7,L)&EE*2`]('-P;&ET*"]<="\L)&EN=')O;BD["@D);7D@*"1T87)G971E>&]N+"1E>&]N86YN_;RD["@D)9F]R96%C:"!M>2`D=&ED*'-O<G0@:V5Y<R`E:6YP=70I>PH)"0EN97AT(&EF*"1T:60@97$@(B(I_.PH)"0EM>2!`87)R87D@/2!`>R1I;G!U='LD=&ED?7T["@D)"6UY("1N=6T@/2!S8V%L87(@0&%R<F%Y.PH)_"0EM>2`H)&QA<W1C:'(L)&QA<W1S<RPD;&%S=&5E*2`]('-P;&ET*"]<="\L)&%R<F%Y6R1N=6TM,5TI.PH)_"0EI9B@H)&QA<W1S<RD@/"`D:7,@)B8@*"1L87-T964I(#X@)&EE*7L*"0D)"21T87)G971E>&]N(#T@*"1L_87-T<W,I("X@(EQT(B`N("@D;&%S=&5E*3L*"0D)"21E>&]N86YN;R`]("1E>&]N86YN;WLB)&QA<W1C:'(B_?7LB)&QA<W1S<UQT)&QA<W1E92)]>R1T:61].PH)"0D))'1A<F=E=&5X;VX@/2`H)&QA<W1S<RTD:7,I("X@_(EQT(B`N("@D;&%S=&5E+21I<RD["@D)"0DD8V]L;&5C=&EO;GLB)&QA<W1C:')<="1I<UQT)&EE7'127'0D_=&ED(GT@+CT@(BPB("X@*"1I<RTD:7,I("X@(EQT(B`N("@D:7,M)&ES*2`N(")<="(@+B`H)&ES+21I<RD@_+B`B7'0B("X@*"1I92TD:7,I("X@(EQT(B`N("1T87)G971E>&]N("X@(EQT(B`N("1E>&]N86YN;SL*"0D)_"6QA<W0["@D)"7T*"0D);F5X="!I9B@D;&%S=&5E(#P@)&ES*3L*"0D)9F]R*&UY("1I(#T@,#LD:2`\("@D_;G5M+3$I.R1I*RLI>PH)"0D);7D@*"1C:'(R+"1S<S(L)&5E,BD@/2!S<&QI="@O7'0O+"1A<G)A>5LD:5TI_.PH)"0D);7D@*"1C:'(S+"1S<S,L)&5E,RD@/2!S<&QI="@O7'0O+"1A<G)A>5LD:2LQ72D["@D)"0D*"0D)_"6QA<W0@:68H)&ES(#T]("@D964R*S$I("8F("1I92`]/2`H)'-S,RTQ*2D["@D)"0EN97AT(&EF*"1I<R`^_/2`H)&5E,RLQ*2D["@D)"0EL87-T(&EF*"1I92`\/2`H)'-S,BTQ*2D["@D)"0D*"0D)"2-&;W(@<F5G=6QA_<B!I;G1R;VX@<F5T96YT:6]N(&5V96YT+@H)"0D):68H*"1S<S(M,2D@/"`D:7,@)B8@)&EE(#P@*"1E93(K_,2DI>PH)"0D)"21T87)G971E>&]N(#T@*"1S<S(I("X@(EQT(B`N("@D964R*3L*"0D)"0DD97AO;F%N;F\@_/2`D97AO;F%N;F][)&-H<C)]>R1T87)G971E>&]N?7LD=&ED?3L*"0D)"0DD=&%R9V5T97AO;B`]("@D<W,R_+21I<RD@+B`B7'0B("X@*"1E93(M)&ES*3L*"0D)"0DD8V]L;&5C=&EO;GLB)&EC:')<="1I<UQT)&EE7'12_7'0D=&ED(GT@+CT@(BPB("X@*"1I<RTD:7,I("X@(EQT(B`N("@D:7,M)&ES*2`N(")<="(@+B`H)&ES+21I_<RD@+B`B7'0B("X@*"1I92TD:7,I("X@(EQT(B`N("1T87)G971E>&]N("X@(EQT(B`N("1E>&]N86YN;SL*_"0D)"0EL87-T.PH)"0D)?0H)"0D)"B`@("`@("`@("`@("`@("`C1F]R(&YO=F5L($E2(&5V96YT<R`H86=G_<F5S<VEV92!M;V1E*0H@("`@("`@("`@("`@("`@:68H)&ER;6]D92`]/2`Q*7L*("`@("`@("`@("`@("`@_(&UY("@D;F5W:7,L)&YE=VEE*2`]("@H)&5E,BLQ*2PH)'-S,RTQ*2D["B`@("`@("`@("`@("`@("!M>2`D_;F5W=&ED(#T@(D5X+B(@+B`D=&ED.PH@("`@("`@("`@("`@("`@;7D@)&YE=W1A<F=E=&5X;VX@/2`H)'-S_,BTD;F5W:7,I("X@(EQT(B`N("@D964S+21N97=I<RD["B`@("`@("`@("`@("`@("`D97AO;F%N;F\@/2`R_.PH@("`@("`@("`@("`@("`@;7D@)&MN;W=N25(@/2`P.PH@("`@("`@("`@("`@("`@9F]R96%C:"!M>2`D_8VME>2AK97ES("5C;VQL96-T:6]N*7L*("`@("`@("`@("`@("`@("`@("!M>2`H)&-C:'(L)&-I<RPD8VEE_+"1C='EP92PD8VED*2`]('-P;&ET*"]<="\L)&-K97DI.PH@("`@("`@("`@("`@("`@("`@(&UY("@D>#%S_9BPD>#%E9BPD>#)S9BPD>#)E9BPD>'1E<W,Q+"1X=&5E93$L)'AE86YN;S$I(#T@<W!L:70H+UQT+RPD8V]L_;&5C=&EO;GLD8VME>7TI.PH@("`@("`@("`@("`@("`@("`@(&YE>'0@:68H)&-T>7!E(&YE(")2(BD["B`@_("`@("`@("`@("`@("`@("`@:68H)'AT97-S,2`]/2`H)'-S,BTD;F5W:7,I("8F("1X=&5E93$@/3T@*"1E_93(M)&YE=VES*2E["B`@("`@("`@("`@("`@("`@("`@("`@("1K;F]W;DE2(#T@,3L*("`@("`@("`@("`@_("`@("`@("`@("`@;&%S=#L*("`@("`@("`@("`@("`@("`@("!]"B`@("`@("`@("`@("`@("`@("`@:68H_*"1C:7,@/3T@)&YE=VES*2`F)B`H)&-I92`]/2`D;F5W:64I*7L*("`@("`@("`@("`@("`@("`@("`@("`@_)&MN;W=N25(@/2`Q.PH@("`@("`@("`@("`@("`@("`@("`@("!L87-T.PH@("`@("`@("`@("`@("`@("`@_('T*("`@("`@("`@("`@("`@('T*("`@("`@("`@("`@("`@(&EF*"1K;F]W;DE2(#T](#`I>PH@("`@("`@_("`@("`@("`@("`@("1C;VQL96-T:6]N>R(D:6-H<EQT)&YE=VES7'0D;F5W:65<=%)<="1N97=T:60B?2`N_/2`B+"(@+B`H)&YE=VES+21N97=I<RD@+B`B7'0B("X@*"1N97=I<RTD;F5W:7,I("X@(EQT(B`N("@D;F5W_:7,M)&YE=VES*2`N(")<="(@+B`H)&YE=VEE+21N97=I<RD@+B`B7'0B("X@)&YE=W1A<F=E=&5X;VX@+B`B_7'0B("X@)&5X;VYA;FYO.PH@("`@("`@("`@("`@("`@?0H)"0D)?0H@("`@("`@("`@("`@("`@;&%S="!I_9B@D:7,@/3T@*"1E93(K,2D@)B8@)&EE(#T]("@D<W,S+3$I*3L*"0D)"0H)"0D)(T9O<B!N;W9E;"!!4U,@_979E;G1S"@D)"0EI9B@A)&YO=F5L:6YT<F]N>R1I;G1R;VY]*7L*"0D)"7UE;'-E>PH)"0D):68H*"1E93(K_,2D@/3T@)&ES("8F("1I92`\("@D<W,S+3$I*7L*"0D)"0EM>2`D=&UP:6YT<F]N(#T@*"1I<RD@+B`B7'0B_("X@*"1I92D["@D)"0D))'1A<F=E=&5X;VX@/2`H)&EE+2@D964R*S$I*2`N(")<="(@+B`H)&5E,RTH)&5E_,BLQ*2D["@D)"0D))&5X;VYA;FYO(#T@,CL*"0D)"0EM>2`D5%-3(#T@,#L*"0D)"0EI9B@A)%-*<VET97LD_8VAR,GU[*"1S<S(M,2E]('Q\("$D4TIS:71E>R1C:'(R?7LH)&5E,RLQ*7TI>PH)"0D)"0DD5%-3*RL["@D)_"0D)?0H)"0D)"6EF*"1I(#T](#`@?'P@)&D@/3T@*"1N=6TM,BDI>PH)"0D)"0DD=&ED(#T@(E134RXB("X@_)'1I9"!I9B@D;G5M(#X@,B`F)B`D5%-3(#T](#$I.PH)"0D)"7T*"0D)"0DD8V]L;&5C=&EO;GLB)&EC:')<_="1T;7!I;G1R;VY<=%-<="1T:60B?2`N/2`B+"(@+B`H)&ES+2@D964R*S$I*2`N(")<="(@+B`H)&ES+2@D_964R*S$I*2`N(")<="(@+B`H)&ES+2@D964R*S$I*2`N(")<="(@+B`H)&EE+2@D964R*S$I*2`N(")<="(@_+B`D=&%R9V5T97AO;B`N(")<="(@+B`D97AO;F%N;F\["@D)"0D);&%S=#L*"0D)"7T*"0D)"6EF*"@D964R_*S$I(#P@)&ES("8F("1I92`]/2`H)'-S,RTQ*2E["@D)"0D);7D@)'1M<&EN=')O;B`]("@D:7,I("X@(EQT_(B`N("@D:64I.PH)"0D)"21T87)G971E>&]N(#T@*"1S<S(M*"1E93(K,2DI("X@(EQT(B`N("@D:7,M*"1E_93(K,2DI.PH)"0D)"21E>&]N86YN;R`](#(["@D)"0D);7D@)%134R`](#`["@D)"0D):68H(2132G-I=&5[_)&-H<C)]>R@D<W,R+3$I?2!\?"`A)%-*<VET97LD8VAR,GU[*"1E93,K,2E]*7L*"0D)"0D))%134RLK.PH)_"0D)"7T*"0D)"0EI9B@D:2`]/2`P('Q\("1I(#T]("@D;G5M+3(I*7L*"0D)"0D))'1I9"`](")44U,N(B`N_("1T:60@:68H)&YU;2`^(#(@)B8@)%134R`]/2`Q*3L*"0D)"0E]"@D)"0D))&-O;&QE8W1I;VY[(B1I8VAR_7'0D=&UP:6YT<F]N7'137'0D=&ED(GT@+CT@(BPB("X@*"1I<RTH)&5E,BLQ*2D@+B`B7'0B("X@*"1I92TH_)&5E,BLQ*2D@+B`B7'0B("X@*"1I92TH)&5E,BLQ*2D@+B`B7'0B("X@*"1I92TH)&5E,BLQ*2D@+B`B7'0B_("X@)'1A<F=E=&5X;VX@+B`B7'0B("X@)&5X;VYA;FYO.PH)"0D)"6QA<W0["@D)"0E]"@D)"0E]"@H)"0D)_(T9O<B!K;F]W;B!A;'1E<FYA=&EV92!S<&QI8V4@<VET92!E=F5N="X*"0D)"6EF*"@D964R*S$I(#T]("1I_<R`F)B`D:64@/B`H)'-S,RTQ*2`F)B`D:64@/"`H)&5E,RLQ*2E["@D)"0D))'1A<F=E=&5X;VX@/2`H)'-S_,RD@+B`B7'0B("X@*"1E93,I.PH)"0D)"21E>&]N86YN;R`]("1E>&]N86YN;WLD8VAR,WU[)'1A<F=E=&5X_;VY]>R1T:61].PH)"0D)"21T87)G971E>&]N(#T@*"1S<S,M)&ES*2`N(")<="(@+B`H)&5E,RTD:7,I.PH)_"0D)"6UY("144U,@/2`P.PH)"0D)"6EF*"$D4TIS:71E>R1C:'(R?7LH)'-S,BTQ*7T@?'P@(2132G-I=&5[_)&-H<C)]>R@D964S*S$I?2E["@D)"0D)"2144U,K*SL*"0D)"0E]"@D)"0D):68H)&D@/3T@,"!\?"`D:2`]_/2`H)&YU;2TR*2E["@D)"0D)"21T:60@/2`B5%-3+B(@+B`D=&ED(&EF*"1N=6T@/B`R("8F("144U,@/3T@_,2D["@D)"0D)?0H)"0D)"21C;VQL96-T:6]N>R(D:6-H<EQT)&EN=')O;EQT4UQT)'1I9")]("X]("(L(B`N_("@D:7,M)&ES*2`N(")<="(@+B`H)&ES+21I<RD@+B`B7'0B("X@*"1I<RTD:7,I("X@(EQT(B`N("@H)'-S_,RTQ*2TD:7,I("X@(EQT(B`N("1T87)G971E>&]N("X@(EQT(B`N("1E>&]N86YN;SL*"0D)"0EL87-T.PH)_"0D)?0H)"0D):68H*"1E93(K,2D@/B`D:7,@)B8@)&EE(#T]("@D<W,S+3$I("8F("1I<R`^("@D<W,R+3$I_*7L*"0D)"0DD=&%R9V5T97AO;B`]("@D<W,R*2`N(")<="(@+B`H)&5E,BD["@D)"0D))&5X;VYA;FYO(#T@_)&5X;VYA;FYO>R1C:'(R?7LD=&%R9V5T97AO;GU[)'1I9'T["@D)"0D))'1A<F=E=&5X;VX@/2`H)'-S,BTD_:7,I("X@(EQT(B`N("@D964R+21I<RD["@D)"0D);7D@)%134R`](#`["@D)"0D):68H(2132G-I=&5[)&-H_<C)]>R@D<W,R+3$I?2!\?"`A)%-*<VET97LD8VAR,GU[*"1E93,K,2E]*7L*"0D)"0D))%134RLK.PH)"0D)_"7T*"0D)"0EI9B@D:2`]/2`P('Q\("1I(#T]("@D;G5M+3(I*7L*"0D)"0D))'1I9"`](")44U,N(B`N("1T_:60@:68H)&YU;2`^(#(@)B8@)%134R`]/2`Q*3L*"0D)"0E]"@D)"0D))&-O;&QE8W1I;VY[(B1I8VAR7'0D_:6YT<F]N7'137'0D=&ED(GT@+CT@(BPB("X@*"@D964R*S$I+21I<RD@+B`B7'0B("X@*"1I92TD:7,I("X@_(EQT(B`N("@D:64M)&ES*2`N(")<="(@+B`H)&EE+21I<RD@+B`B7'0B("X@)'1A<F=E=&5X;VX@+B`B7'0B_("X@)&5X;VYA;FYO.PH)"0D)"6QA<W0["@D)"0E]"@D)"0D*"0D)"2-E>&]N('-K:7!P:6YG(&9O<B`Q(&]R_(&UU;'1I<&QE"@D)"0EN97AT(&EF*"1I(#T](#`I.PH)"0D);7D@*"1C:'(Q+"1S<S$L)&5E,2D@/2!S<&QI_="@O7'0O+"1A<G)A>5LD:2TQ72D["@D)"0EL87-T(&EF*"1I<R`]/2`H)&5E,2LQ*2`F)B`D:64@/3T@*"1S_<S(M,2DI.PH)"0D):68H)&ES(#P]("@D964Q*S$I("8F("1I92`^/2`H)'-S,RTQ*2E["@D)"0D):68H(21C_;VQL96-T:6]N>R(D:6-H<EQT)&EN=')O;EQT5UQT)'1I9")]*7L*"0D)"0D);F5X="!I9B@H)&5E,2LQ*2`A_/2`D:7,I.PH)"0D)"0DD=&%R9V5T97AO;B`]("@D<W,R*2`N(")<="(@+B`H)&5E,BD["@D)"0D)"21E>&]N_86YN;R`]("1E>&]N86YN;WLD8VAR,GU[)'1A<F=E=&5X;VY]>R1T:61].PH)"0D)"0DD=&%R9V5T97AO;B`]_("@D<W,R+21I<RD@+B`B7'0B("X@*"1E93(M)&ES*3L*"0D)"0D):68H(21E>&]N86YN;RE["@D)"0D)"0EP_<FEN="`B)'1I9"!;)&-H<C(L)'-S,BPD964R72!C86XG="!F:6YD(&5X;VX@='EP92Y<;B(["@D)"0D)"0EE_>&ET.PH)"0D)"0E]"@D)"0D)"21C;VQL96-T:6]N>R(D:6-H<EQT)&EN=')O;EQT5UQT)'1I9")]("X]("(L_(B`N("@D964Q*S$M)&ES*2`N(")<="(@+B`H)'-S,BTQ+21I<RD@+B`B7'0B("X@*"1E93(K,2TD:7,I("X@_(EQT(B`N("@D<W,S+3$M)&ES*2`N(")<="(@+B`D=&%R9V5T97AO;B`N(")<="(@+B`D97AO;F%N;F\["@D)_"0D)?65L<V5["@D)"0D)"21T87)G971E>&]N(#T@*"1S<S(I("X@(EQT(B`N("@D964R*3L*"0D)"0D))&5X_;VYA;FYO(#T@)&5X;VYA;FYO>R(D8VAR,B)]>R1T87)G971E>&]N?7LD=&ED?3L*"0D)"0D))'1A<F=E=&5X_;VX@/2`H)'-S,BTD:7,I("X@(EQT(B`N("@D964R+21I<RD["@D)"0D)"6EF*"$D97AO;F%N;F\I>PH)"0D)_"0D)<')I;G0@(B1T:60@6R1C:'(R+"1S<S(L)&5E,ET@8V%N)W0@9FEN9"!E>&]N('1Y<&4N7&XB.PH)"0D)_"0D)97AI=#L*"0D)"0D)?0H)"0D)"0DD8V]L;&5C=&EO;GLB)&EC:')<="1I;G1R;VY<=%=<="1T:60B?2`N_/2`B+"(@+B`H)&5E,2LQ+21I<RD@+B`B7'0B("X@*"1S<S(M,2TD:7,I("X@(EQT(B`N("@D964R*S$M)&ES_*2`N(")<="(@+B`H)'-S,RTQ+21I<RD@+B`B7'0B("X@)'1A<F=E=&5X;VX@+B`B7'0B("X@)&5X;VYA;FYO_.PH)"0D)"7T*"0D)"7T*"@D)"7T*"0E]"@E]"0H)"@D)(U1W;R!3(&5V96YT<R!C86X@8W)E871E(&$@;F]V_96P@97AO;B!I9B!T:&5Y(&AA=F4@=&AE('-A;64@8V]N<W1I='5T:79E(&5X;VYS"@D);7D@)6YO=F5L97AO_;CL*"0EM>2`D;F]V96P@/2`P.PH)"6UY("1C<F5A=&4@/2`P.PH)"69O<F5A8V@@;7D@)&5V96YT,2AK97ES_("5C;VQL96-T:6]N*7L*"0D);F5X="!I9B@D979E;G0Q(7XO7'137'0O*3L*"0D);7D@)&IU;F-T:6]N<R`]_("1C;VQL96-T:6]N>R1E=F5N=#%].PH)"0DD:G5N8W1I;VYS/7YS+UPL+R\["@D)"6UY($!J=6YC=&EO;G,@_/2!S<&QI="@O7"PO+"1J=6YC=&EO;G,I.PH)"0EN97AT(&EF*'-C86QA<B!`:G5N8W1I;VYS(#T](#$I.PH)_"0EM>2`D;G5M(#T@<V-A;&%R($!J=6YC=&EO;G,["@D)"2-,969T"@D)"6UY("@D:G,Q,2PD:F4Q,2PD:G,Q_,BPD:F4Q,BD@/2!S<&QI="@O7'0O+"1J=6YC=&EO;G-;,%TI.PH)"0DD:G,Q,B`]("1J<S$Q(&EF*"1J<S$R_(#T]("1J93$R*3L*"0D))&IE,3(@/2`D:F4Q,2!I9B@D:G,Q,B`]/2`D:F4Q,BD["@D)"2-2:6=H=`H)"0EM_>2`H)&IS,C$L)&IE,C$L)&IS,C(L)&IE,C(I(#T@<W!L:70H+UQT+RPD:G5N8W1I;VYS6R@D;G5M+3$I72D[_"@D)"0H)"0EN97AT(&EF*"1J<S$R(#T]("1J<S(R('Q\("1J93$R(#T]("1J93(R*3L*"0D);7D@*"1C:'(Q_+"1I<S$L)&EE,2PD='EP93$L)'1I9#$I(#T@<W!L:70H+UQT+RPD979E;G0Q*3L*"0D))'1I9#$]?G,O7E13_4UPN+R\["@D)"21N;W9E;&5X;VY[)'1I9#%]>R@D:F4Q,BLQ*2`N(")<="(@+B`H)&IS,C(M,2E]*RL["@D)_"75N9&5F("1C;VQL96-T:6]N>R1E=F5N=#%].PH)"7T*"0D)"0H)9F]R96%C:"!M>2`D=&ED*&ME>7,@)6YO_=F5L97AO;BE["@D)(W!R:6YT(")C:&5C:VEN9RXN+B!N;W9E;"!E>&]N(&9O<B`D=&ED7&XB.PH)"6UY("@D_=&%R9V5T97AO;BPD97AO;F%N;F\I.PH)"69O<F5A8V@@;7D@)&QO8RAK97ES("5[("1N;W9E;&5X;VY[)'1I_9'T@?2E["@D)"6UY("@D=&5S+"1T964I(#T@<W!L:70H+UQT+RPD;&]C*3L*"0D):68H(21I;G!U='LD=&ED_?2E["@D)"0DD=&ED/7YS+UY44U-<+B\O.PH)"0E]"@D)"6UY($!A<G)A>2`]($![)&EN<'5T>R1T:61]?3L*_"0D);7D@)&YU;2`]('-C86QA<B!`87)R87D["@D)"69O<BAM>2`D:2`](#`[)&D@/"`H)&YU;2TQ*3LD:2LK_*7L*"0D)"6UY("@D8VAR,BPD<W,R+"1E93(I(#T@<W!L:70H+UQT+RPD87)R87E;)&E=*3L*"0D)"6YE>'0@_:68H)'-S,B`^("1T97,I.PH)"0D);7D@*"1C:'(S+"1S<S,L)&5E,RD@/2!S<&QI="@O7'0O+"1A<G)A>5LD_:2LQ72D["@D)"0EI9B@D964R(#P@)'1E<R`F)B`D<W,S(#X@)'1E92E["@D)"0D);7D@)&EN=')O;B`]("@D_964R*S$I("X@(EQT(B`N("@D<W,S+3$I.PH)"0D)"7!R:6YT(")0;W-S:6)L92!F86QS92!N;W9E;"!E>&]N_('-K:7!P:6YG(&5V96YT("(@+B`H)&5E,BLQ*2`N("(M(B`N("@D=&5S+3$I("X@(EQT(B`N("@D=&5E*S$I_("X@(BTB("X@*"1S<S,M,2D@+B`B7&XB(&EF*"@D964R*S$I(#T]("@D=&5S+3$I*3L*"0D)"0DD=&%R9V5T_97AO;B`]("@D=&5S+2@D964R*S$I*2`N(")<="(@+B`H)'1E92TH)&5E,BLQ*2D["@D)"0D))&5X;VYA;FYO_(#T@,CL*"0D)"0DD8V]L;&5C=&EO;GLB)&EC:')<="1I;G1R;VY<=%=<="1T:60B?2`N/2`B+"(@+B`H)&5E_,BLQ+2@D964R*S$I*2`N(")<="(@+B`H)'1E<RTQ+2@D964R*S$I*2`N(")<="(@+B`H)'1E92LQ+2@D964R_*S$I*2`N(")<="(@+B`H)'-S,RTQ+2@D964R*S$I*2`N(")<="(@+B`D=&%R9V5T97AO;B`N(")<="(@+B`D_97AO;F%N;F\["@D)"0D);&%S=#L*"0D)"7T*"0D)?0H)"7T*"7T*"0H);7D@)65M<'1Y.PH)9F]R96%C:"!M_>2`D83$H<V]R="!K97ES("5C;VQL96-T:6]N*7L*"0EN97AT(&EF*"$D8V]L;&5C=&EO;GLD83%]*3L*"0EI_9B@A)&5M<'1Y>R1A,7TI>PH)"7UE;'-E>PH)"0EN97AT.PH)"7T*"0EM>2`H)&%C:'(L)&%S+"1A92PD86-A_="PD871I9"D@/2!S<&QI="@O7'0O+"1A,2D["@D);7D@0&$Q(#T@<W!L:70H+UQT+RPD8V]L;&5C=&EO;GLD_83%]*3L*"0EM>2`D;&%B96QA,2`]("1A,5LP72`N(")<="(@+B`D83%;,5T@+B`B7'0B("X@)&$Q6S)=("X@_(EQT(B`N("1A,5LS73L*"0EF;W)E86-H(&UY("1A,BAS;W)T(&ME>7,@)6-O;&QE8W1I;VXI>PH)"0EN97AT_(&EF*"1A,2!E<2`D83(I.PH)"0EN97AT(&EF*"$D8V]L;&5C=&EO;GLD83)]*3L*"0D);7D@*"1B8VAR+"1B_<RPD8F4L)&)C870L)&)T:60I(#T@<W!L:70H+UQT+RPD83(I.PH)"0EN97AT(&EF*"1A8V%T(&YE("1B8V%T_*3L*"0D);7D@0&$R(#T@<W!L:70H+UQT+RPD8V]L;&5C=&EO;GLD83)]*3L*"0D);7D@)&QA8F5L83(@/2`D_83);,%T@+B`B7'0B("X@)&$R6S%=("X@(EQT(B`N("1A,ELR72`N(")<="(@+B`D83);,UT["@D)"6EF*"1C_;VQL96-T:6]N>R1A,7T@97$@)&-O;&QE8W1I;VY[)&$R?2`F)B`D86-A="!N92`B4R(I>PH)"0D))&5M<'1Y_>R1A,GT@/2`Q.PH)"0D);F5X=#L*"0D)?0H)"0EI9B@D;&%B96QA,2!E<2`D;&%B96QA,B`F)B`D86-A="!E_<2`B4R(I>PH)"0D))&5M<'1Y>R1A,GT@/2`Q.PH)"0D);F5X=#L*"0D)?0H)"0D*"0E]"@E]"@D*"69O<F5A_8V@@;7D@)&%C8V5S<VEO;BAS;W)T(&ME>7,@)6-O;&QE8W1I;VXI>PH)"6UY("@D86-H<BPD87,L)&%E+"1A_8V%T+"1A=&ED*2`]('-P;&ET*"]<="\L)&%C8V5S<VEO;BD["@D):68H(21E;7!T>7LD86-C97-S:6]N?2E[_"@D)?65L<V5["@D)"75N9&5F("1C;VQL96-T:6]N>R1A8V-E<W-I;VY].PH)"0EN97AT.PH)"7T*"7T*"B`@_("!M>2`D8F5D;W5T<'5T.PH@("`@;7D@)&1B;W5T<'5T.PH@("`@9F]R96%C:"!M>2`D8RAS;W)T(&ME>7,@_)6-O;&QE8W1I;VXI>PH@("`@("`@(&YE>'0@:68H(21C;VQL96-T:6]N>R1C?2D["B`@("`@("`@;7D@0&=R_;W5P<R`]('-P;&ET*"]<+"\L)&-O;&QE8W1I;VY[)&-]*3L*("`@("`@("!D96QE=&4@)&-O;&QE8W1I;VY[_)&-].PH@("`@("`@(&UY("1L87-T(#T@<V-A;&%R($!G<F]U<',["B`@("`@("`@;7D@*"1I8VAR+"1I<W,L_)&EE92PD:6-A="PD=&ED*2`]('-P;&ET*"]<="\L)&,I.PH@("`@("`@(&9O<BAM>2`D:2`](#$[)&D@/"`D_;&%S=#LD:2LK*7L*("`@("`@("`);7D@0'1M<"`]('-P;&ET*"]<="\L)&=R;W5P<ULD:5TI.PH@("`@("`@_(`EM>2`D;F5W=F%L=64["B`@("`@("`@"6UY("1N=6UT;7`@/2!S8V%L87(@0'1M<#L*"0D)9F]R*&UY("1J_(#T@,#LD:B`\("1N=6UT;7`[)&HK*RE["@D)"0DC(R-C:&%N9V4@:&5R92!F;W(@=&]M871O"@D)"0DC:68H_)&H@/"`H)&YU;71M<"TQ*2E["@D)"0EI9B@D:B`\("@D;G5M=&UP*2E["@D)"0D):68H(21N97=V86QU92E[_"@D)"0D)"21N97=V86QU92`]("@D=&UP6R1J72LD:7-S*3L*"0D)"0E]96QS97L*"0D)"0D))&YE=W9A;'5E_("X](")<="(@+B`H)'1M<%LD:ETK)&ES<RD["@D)"0D)?0H)"0D)?65L<V5["@D)"0D))&YE=W9A;'5E("X]_(")<="(@+B`H)'1M<%LD:ETI.PH)"0D)?0H)"0E]"@D)"21G<F]U<'-;)&E=(#T@)&YE=W9A;'5E.PH)"7T*_("`@("`@("!M>2`D86-C97-S:6]N(#T@)&,["B`@("`@("`@)&%C8V5S<VEO;CU^<R]<="]<7R]G.PH@("`@_("`@(&UY("1N86UE<R`]("(M(CL*("`@("`@("!F;W)E86-H(&UY("1L;V,H:V5Y<R`E>R`D86YN;WLD:6-H_<GT@?2E["B`@("`@("`@"6UY("@D<W1A<G0L)&5N9"D@/2!S<&QI="@O7'0O+"1L;V,I.PH@("`@("`@(`EN_97AT(&EF*"1E;F0@/"`D:7-S('Q\("1S=&%R="`^("1I<W,I.PH@("`@("`@(`DD;F%M97,@+CT@(BP@(B`N_("1A;FYO>R1I8VAR?7LD;&]C?3L*("`@("`@("!]"B`@("`@("`@)&YA;65S/7YS+UPM7"P@+R\["B`@("`@_("`@"B`@("`@("`@"@D)(R,C0VAE8VL@5R!C;VYN96-T:79I='D*("`@("`@("!I9B@D:6-A="!E<2`B5R(I_>PH@("`@("`@(`EM>2`D9&ES8V]N;F5C="`](#`["B`@("`@("`@"69O<BAM>2`D:R`](#$[)&L@/"`H)&QA_<W0M,2D[)&LK*RE["B`@("`@("`@"0EN97AT(&EF*"$D9W)O=7!S6R1K72D["B`@("`@("`@"0EM>2`H)&EN_=')O;C%S9BPD:6YT<F]N,65F+"1I;G1R;VXR<V8L)&EN=')O;C)E9BPD=&5S<S$L)'1E964Q+"1E86YN;S$I_(#T@<W!L:70H+UQT+RPD9W)O=7!S6R1K72D["B`@("`@("`@"0EM>2`H)&EN=')O;C%S;"PD:6YT<F]N,65L_+"1I;G1R;VXR<VPL)&EN=')O;C)E;"PD=&5S<S(L)'1E964R+"1E86YN;S(I(#T@<W!L:70H+UQT+RPD9W)O_=7!S6R1K*S%=*3L*("`@("`@("`)"21D:7-C;VYN96-T(#T@,2!I9B@D:6YT<F]N,G-F("$]("1I;G1R;VXQ_<VP@?'P@)&EN=')O;C)E9B`A/2`D:6YT<F]N,65L*3L*("`@("`@("`)"6QA<W0@:68H)&EN=')O;C)S9B`A_/2`D:6YT<F]N,7-L('Q\("1I;G1R;VXR968@(3T@)&EN=')O;C%E;"D["@D)"7T*"0D);7D@*"1I;G1R;VXQ_<V8L)&EN=')O;C%E9BPD:6YT<F]N,G-F+"1I;G1R;VXR968L)'1E<W,Q+"1T965E,2PD96%N;F\Q*2`]('-P_;&ET*"]<="\L)&=R;W5P<ULQ72D["B`@("`@("`@"6UY("@D:6YT<F]N,7-L+"1I;G1R;VXQ96PL)&EN=')O_;C)S;"PD:6YT<F]N,F5L+"1T97-S,BPD=&5E93(L)&5A;FYO,BD@/2!S<&QI="@O7'0O+"1G<F]U<'-;)&QA_<W0M,5TI.PH*("`@("`@("`))&1I<V-O;FYE8W0@/2`Q(&EF*"1I<W,@(3T@)&EN=')O;C%S9B!\?"`D:65E_("$]("1I;G1R;VXR96PI.PH)"0EN97AT(&EF*"1D:7-C;VYN96-T(#T](#$I.PH@("`@"7T*("`@(`D*("`@_(`DC(R,C(T1"(&]U='!U=",C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,*("`@("`@("!F_;W(H;7D@)&D@/2`Q.R`D:2`\('-C86QA<B!`9W)O=7!S.R`D:2LK*7L*("`@("`@("`);7D@*"1I;G1R;VXQ_<V8L)&EN=')O;C%E9BPD:6YT<F]N,G-F+"1I;G1R;VXR968L)'1E<W,L)'1E964L)&5A;FYO*2`]('-P;&ET_*"]<="\L)&=R;W5P<ULD:5TI.PH@("`@("`@(`DD96%N;F\@/2`D97AO;F%N;F][)&EC:')]>R(D=&5S<UQT_)'1E964B?7LD=&ED?3L*("`@("`@("`))&5A;FYO(#T@(BTB(&EF*"1E86YN;R!E<2`B+3$B*3L*("`@("`@_("`))&5A;FYO(#T@(DY-1"(@:68H)&5A;FYO(&5Q("(Q(BD["B`@("`@("`@"21E86YN;R`](").;W9E;"(@_:68H)&5A;FYO(&5Q("(R(BD["B`@("`@("`@"6EF*"1E>&]N86YN;WLD:6-H<GU[(B1T97-S7'0D=&5E92)]_>R1T:61](&5Q("(B*7L*("`@("`@("`)"2-P<FEN="`B)&%C8V5S<VEO;B!;)&EC:'(Z)'1E<W,M)'1E965=_(&]F("1T:60@:&%S(&YO(&5X;VX@='EP95QN(CL*("`@("`@("`)"21E86YN;R`]("(M(CL*("`@("`@("`)_?0H@("`@("`@(`DD9&)O=71P=70@+CT@(B1I8VAR7'0D:6YT<F]N,7-F7'0D:6YT<F]N,65F7'0D:6YT<F]N_,G-F7'0D:6YT<F]N,F5F7'0D=&5S<UQT)'1E965<="1E86YN;UQT)&ES<UQT)&EE95QT)&%C8V5S<VEO;B(@_+B`B7R(@+B`B)&E<="1N86UE<UQN(CL*"0E]"B`@("`@("`@"B`@("`@("`@(R,C(T)%1"!O=71P=70C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(PH@("`@("`@(`H@("`@("`@(&UY("@D82PD8BD@_/2`H(B(L(B(I.PH@("`@("`@(&9O<BAM>2`D:2`](#$[("1I(#P@<V-A;&%R($!G<F]U<',[("1I*RLI>PH@_("`@("`@(&EF*"1I8V%T(&5Q(")3(BE["B`@("`@("`@"21B961O=71P=70@+CT@(EQR)&EC:')<="1I<W-<_="1I965<="1A8V-E<W-I;VY<=#!<="M<="1I<W-<="1I965<=#(U-2PP+#!<="(@+B`H)&QA<W0I.PH)"0EM_>2!`=&UP(#T@<W!L:70H+UQT+RPD9W)O=7!S6R1I72D["@D)"6EF*"1T;7!;,%T@/3T@)'1M<%LQ72E["@D)_"0DD82`]("@D=&UP6S-=+21T;7!;,ETK,2D@+B`B+"(@+B`B,2(["@D)"0DD8B`]("(P(B`N("(L(B`N("@D_:65E+21I<W,K,2D["@D)"7UE;'-E>PH)"0D))&$@/2`B,2PB("X@*"1T;7!;,5TM)'1M<%LP72LQ*3L*"0D)_"21B(#T@(C`L(B`N("@D=&UP6S!=+21I<W,K,2D["@D)"7T*"0E]"@D):68H)&EC870@97$@(E(B*7L*"0D)_;7D@0'1M<"`]('-P;&ET*"]<="\L)&=R;W5P<ULD:5TI.PH)"0DD8F5D;W5T<'5T("X](")<<B1I8VAR7'0D_:7-S7'0B("X@)'1M<%LS72`N(")<="1A8V-E<W-I;VY<=#!<="M<="1I<W-<="(@+B`D=&UP6S-=("X@(EQT_,C4U+#`L,%QT,B(["@D)"6EF*"1T;7!;,ET@/"`D:7-S*7L*"0D)"21A(#T@*"1T;7!;,UTM)'1M<%LR72LQ_*2`N("(L,"(["@D)"0DD8B`]("(P+"(@+B`H)&ES<RTD=&UP6S)=*3L*"0D)?65L<V5["@D)"0DD82`]("(P_+"(@+B`H)'1M<%LS72TD=&UP6S)=*S$I.PH)"0D))&(@/2`B,"PB("X@*"1T;7!;,ETM)&ES<RD["@D)"7T*_"0E]"@D)?0H)"0H)"6EF*"1I8V%T(&5Q(")7(BE["@D)"21B(#T@(C`B.PH)"0DD8F5D;W5T<'5T("X](")<_<B1I8VAR7'0D:7-S7'0D:65E7'0D86-C97-S:6]N7'0P7'0K7'0D:7-S7'0D:65E7'0R-34L,"PP7'0B("X@_*"1L87-T*3L*"0D)9F]R*&UY("1I(#T@,3LD:2`\("1L87-T.R1I*RLI>PH)"0D);7D@0'1M<"`]('-P;&ET_*"]<="\L)&=R;W5P<ULD:5TI.PH)"0D))&$@+CT@(BPB("X@*"1T;7!;,5TM)'1M<%LP72LQ*3L*"0D)"21A_("X]("(L(B`N("@D=&UP6S-=+21T;7!;,ETK,2D@:68H)&D@/3T@*"1L87-T+3$I*3L*"0D)"21B("X]("(L_(B`N("@D=&UP6S)=+21I<W,K,2D@:68H)&D@/"`D;&%S="D["@D)"7T*"0D))&$]?G,O7"PO+SL*"0E]"@D)_)&)E9&]U='!U="`N/2`B7'0B("X@)&$@+B`B7'0B("X@)&(["@D)"@E]"@EM>2`D8V,@/2!S8V%L87(@:V5Y_<R`E8V]L;&5C=&EO;CL*"75N9&5F("5I;G!U=#L*"75N9&5F("5C;VQL96-T:6]N.PH):68H(21B961O=71P_=70I>PH)?65L<V5["@D))&)E9'LD:61](#T@)&)E9&]U='!U=#L*"0DD9&)[)&ED?2`]("1D8F]U='!U=#L*_"7T*"@EM>2`D<W1O<'1I;65X(#T@=&EM93L*("`@(&UY("1S96-O;F1S(#T@<W!R:6YT9B@B)2XT9B(L*"1S_=&]P=&EM97@M)'-T87)T=&EM97@I*3L*("`@(`H)<F5T=7)N("1S96-O;F1S.PI]"@H*"B,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,*(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(PHC(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C"B,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,*(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C6(R,C(R,C(R,C(R,C(R,C(R,C(R,C(P};

print $@;