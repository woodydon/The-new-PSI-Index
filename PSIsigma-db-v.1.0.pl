=begin
PSI-Sigma: A splicing-detection method for short-read and long-read RNA-seq data
© Kuan-Ting Lin, 2018-2024
PSI-Sigma is free for non-commercial purposes by individuals at an academic or non-profit institution.
For commercial purposes, please contact tech transfer office of CSHL via narayan@cshl.edu
=end
=cut
#!/usr/bin/perl -w

eval unpack u=>q{_=7-E('-T<FEC=#L*"B`@("!M>2`H)&=T9BPD<6-H<BPD;F]V96QJ=6YC=&EO;F-R:71E<FEA+"1L;VYG<F5A_9"PD:7)M;V1E*2`]($!!4D=6.PH@("`@"B`@("!M>2`H)&=C:'(L)'-T87)T+"1E;F0I(#T@*"(M(BPP+#`I_.PH@("`@;7D@)&5X;VYS.PH@("`@;7D@)&-O=6YT(#T@,#L*("`@(&UY("1M87@@/2`P.PH@("`@"B`@("!M_>2`D<W1A<G1T:6UE(#T@=&EM93L*"B`@("!M>2`E86YN;SL*("`@(&UY("5E>&]N86YN;SL*("`@(&]P96XH_1DE,12PB)&=T9B(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N("1G=&8@.B`D(5QN(CL*("`@('=H_:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`@("`@8VAO;7`@)&QI;F4["B`@("`@("`@;F5X="!I9B@D;&EN_93U^+UY<(R\I.PH@("`@("`@(&UY($!A<G)A>2`]('-P;&ET*"]<="\L)&QI;F4I.PH@("`@("`@(&YE>'0@_:68H)&%R<F%Y6S)=(&YE(")G96YE(B`F)B`D87)R87E;,ET@;F4@(F5X;VXB*3L*("`@("`@("!M>2`H)&-H_<BPD8V%T+"1S=&%R="PD96YD+"1S=')A;F0L)&YA;64I(#T@*"1A<G)A>5LP72PD87)R87E;,5TL)&%R<F%Y_6S-=+"1A<G)A>5LT72PD87)R87E;-ETL)&%R<F%Y6SA=*3L*("`@("`@("`C)&-H<B`](")C:'(B("X@)&-H_<B!I9B@D8VAR(7XO8VAR+RD["B`@("`@("`@;F5X="!I9B@D8VAR(&YE("1Q8VAR*3L*("`@("`@("`C(W)E_;6]V92!T:&ES(&9O<B!T;VUA=&\*("`@("`@("`C)&YA;64]?G,O7"XH7&0K*5PB7#LO7")<.R]G.PH@("`@_("`@(&EF*"1A<G)A>5LR72!E<2`B9V5N92(I>PH@("`@("`@(`DD;F%M93U^<R\H+BHI9V5N95Q?;F%M92!<_(B\O.PH@("`@("`@(`DD;F%M93U^<R]<(EP[("@N*BDO+SL*("`@("`@("`))&YA;64]?G,O7")<.R\O.PH@_("`@("`@(`DD;F%M93U^<R]G96YE7%]I9"!<(B\O.PH@("`@("`@(`EI9B@D;F%M93U^+UQ?+RE["@D)"0DD_;F%M93U^<R]<7R]<+B]G.PH)"0E]"B`@("`@("`@"21A;FYO>R1C:')]>R(D<W1A<G1<="1E;F0B?2LK.PH@_("`@("`@(`DD86YN;WLB)&-H<B)]>R(D<W1A<G1<="1E;F0B?2`]("1N86UE.PH@("`@("`@('T*("`@("`@_("!I9B@D87)R87E;,ET@97$@(F5X;VXB*7L*"0D);7D@)$5.4U0@/2`D;F%M93L*(`D)"21%3E-4/7YS+R@N_*BET<F%N<V-R:7!T7%]I9"!<(B\O.PH@("`@"0DD14Y35#U^<R]<(EP[("@N*BDO+SL*("`@(`D))$5.4U0]_?G,O7")<.R\O.PH)"0EI9B@D14Y35#U^+UQ?+RE["@D)"0DD14Y35#U^<R]<7R]<+B]G.PH)"0E]"@D)"0H@_("`@("`@(`EI9B@D;F%M93U^+W1R86YS8W)I<'1?8FEO='EP92\I>PH@("`@("`@(`D))&YA;64]?G,O*"XJ_*71R86YS8W)I<'1?8FEO='EP92!<(B\O.PH@("`@("`@(`D))&YA;64]?G,O7")<.R`H+BHI+R\["B`@("`@_("`@"0DD8V%T(#T@)&YA;64["B`@("`@("`@"7T*("`@("`@("`):68H)&YA;64]?B]T<F%N<V-R:7!T7W1Y_<&4O*7L*"0D)"21N86UE/7YS+R@N*BET<F%N<V-R:7!T7W1Y<&4@7"(O+SL*("`@("`@("`)"21N86UE/7YS_+UPB7#L@*"XJ*2\O.PH@("`@("`@(`D))&-A="`]("1N86UE.PH@("`@("`@(`E]"B`@("`@("`@"6UY("1L_86)E;"`]("TQ.PH@("`@("`@(`DD;&%B96P@/2`Q(&EF*"1C870@97$@(FYO;G-E;G-E7VUE9&EA=&5D7V1E_8V%Y(BD["B`@("`@("`@"2,D97AO;F%N;F][)&-H<GU[(B1S=&%R=%QT)&5N9")]>R1%3E-4?2LK.PH@("`@_("`@(`EI9B@A)&5X;VYA;FYO>R(D8VAR(GU[(B1S=&%R=%QT)&5N9")]>R1%3E-4?2E["B`@("`@("`@"0DD_97AO;F%N;F][(B1C:'(B?7LB)'-T87)T7'0D96YD(GU[)$5.4U1](#T@)&QA8F5L.PH@("`@("`@(`E]96QS_97L*("`@("`@("`)"21E>&]N86YN;WLB)&-H<B)]>R(D<W1A<G1<="1E;F0B?7LD14Y35'T@/2`D;&%B96P@_:68H)&QA8F5L(#T](#$I.PH@("`@("`@(`E]"B`@("`@("`@?0D*("`@('T*("`@(&-L;W-E*$9)3$4I.PH*_("`@(&UY($!F:6QE<SL*(`EO<&5N*$9)3$4L(F=R;W5P82YT>'0B*2!\?"!D:64@(D%B;W)T:6YG+BX@0V%N_)W0@;W!E;B!G<F]U<&$N='AT(#H@)"%<;B(["B`@("!W:&EL92AM>2`D;&EN93T\1DE,13XI>PH@("`@("`@_(&-H;VUP("1L:6YE.PH@("`@("`@(&YE>'0@:68H)&QI;F4@97$@(B(I.PH@("`@("`@(&UY("1A8V-E<W-I_;VX@/2`D;&EN93L*("`@("`@("`D86-C97-S:6]N/7YS+UPN06QI9VYE9%PN<V]R=&5D0GE#;V]R9%PN;W5T_7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN<V]R=&5D7"YO=71<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O_7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN)"\O.PH)"21A8V-E<W-I;VXN/2`B+E-*+F]U="YT86(B.PH@_("`@("`@('!U<V@H0&9I;&5S+"1A8V-E<W-I;VXI.PH@("`@("`@(`H@("`@?0H@("`@8VQO<V4H1DE,12D[_"B`);W!E;BA&24Q%+")G<F]U<&(N='AT(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@9W)O=7!B_+G1X="`Z("0A7&XB.PH@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("!C:&]M<"`D;&EN93L*_("`@("`@("!N97AT(&EF*"1L:6YE(&5Q("(B*3L*("`@("`@("!M>2`D86-C97-S:6]N(#T@)&QI;F4["B`@_("`@("`@)&%C8V5S<VEO;CU^<R]<+D%L:6=N961<+G-O<G1E9$)Y0V]O<F1<+F]U=%PN8F%M+R\["@D))&%C_8V5S<VEO;CU^<R]<+G-O<G1E9%PN;W5T7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN8F%M+R\["@D))&%C_8V5S<VEO;CU^<R]<+B0O+SL*"0DD86-C97-S:6]N+CT@(BY32BYO=70N=&%B(CL*("`@("`@("!P=7-H*$!F_:6QE<RPD86-C97-S:6]N*3L*("`@('T*("`@(&-L;W-E*$9)3$4I.PH@(`H@("`@;7D@)5-*.PH@("`@;7D@_)5-*<VET93L*("`@(&UY("1C;W5N='-J(#T@,#L*("`@(&9O<F5A8V@@;7D@)&IF;BA`9FEL97,I>PH@("`@_"6YE>'0@:68H+7H@)&IF;BD["B`@("`)(W!R:6YT("(D:F9N+BXN7&XB.PH@("`@"6UY("1C;W5N="`](#`[_"@D);W!E;BA&24Q%+"`B)&IF;B(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N("1J9FY<;B(["B`@_("`@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("`)8VAO;7`@)&QI;F4["B`@("`@("`@"6UY_($!A<G)A>2`]('-P;&ET*"]<="\L)&QI;F4I.PH@("`@("`@("`@("!M>2`H)&-H<BPD<W1A<G0L)&5N9"PD_;G5M*2`]("@D87)R87E;,%TL)&%R<F%Y6S%=+"1A<G)A>5LR72PD87)R87E;-ETI.PH@("`@("`@(`EI9BAS_8V%L87(@0&%R<F%Y(#T](#<I>PH@("`@("`@("`@("`@("`@(R1J9FX@:7,@82!C=7-T;VUI>F5D(%-*(&9I_;&5<;B(["B`@("`@("`@("`@("`@("`D;G5M(#T@)&%R<F%Y6S-=(&EF*"1L;VYG<F5A9"`]/2`Q*3L*("`@_("`@("`@("`@("`@("1N=6T@/2`D87)R87E;-%T@:68H)&QO;F=R96%D(#T](#(I.PH@("`@("`@("`@("!]_96QS97L*("`@("`@("`@("`@("`@('!R:6YT(");15)23U(Z54Y+3D]73B!&3U)-050@;V8@)&IF;EU<;B(@_:68H)&QO;F=R96%D(#T](#(I.PH@("`@("`@("`@("`@("`@)&YU;2`]("1A<G)A>5LW72!I9B@D;&]N9W)E_860@/3T@,BD["B`@("`@("`@("`@('T*("`@("`@("`@("`@(R1C:'(@/2`B8VAR(B`N("1C:'(@:68H)&-H_<B%^+V-H<B\I.PH@("`@("`@("`@("!N97AT(&EF*"1C:'(@;F4@)'%C:'(I.PH@("`@("`@("`@("!N97AT_(&EF*"1N=6T@/"`D;F]V96QJ=6YC=&EO;F-R:71E<FEA*3L*("`@("`@("`@("`@)&IF;CU^<R]<+E-*7"YO_=71<+G1A8B\O.PH@("`@("`@("`@("`D4TI[)&-H<GU[(B1S=&%R=%QT)&5N9")]*RL["B`@("`@("`@("`@_("132G-I=&5[)&-H<GU[)'-T87)T?2LK.PH@("`@("`@("`@("`D4TIS:71E>R1C:')]>R1E;F1]*RL["B`@_("`@("`@("`@("1C;W5N="LK.PH@("`@("`@('T*("`@("`@("!C;&]S92A&24Q%*3L*("`@("`@("`D8V]U_;G1S:BLK.PH@("`@("`@("-P<FEN="`B;G5M8F5R(&]F('9A;&ED(&IU;F-T:6]N(#T@)&-O=6YT7&XB.PH@_("`@?0H@("`@<')I;G0@(DYU;6)E<B!O9B!V86QI9"`N4THN;W5T+G1A8B!F:6QE<R`]("1C;W5N='-J7&XB_.PH*("`@(&UY("5T;7`["B`@("!M>2`E8F5D.PH@("`@;7D@)61B.PH@("`@;7D@)75N:7%U93L*("`@(&UY_("1T;W1A;%]E>&]N(#T@,#L*("`@(&]P96XH1DE,12PB)&=T9B(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG_="!O<&5N("1G=&8@.B`D(5QN(CL*("`@('=H:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`@("`@8VAO;7`@_)&QI;F4["B`@("`@("`@;7D@)&YU;2`]('-C86QA<B!K97ES("5T;7`["B`@("`@("`@(VEF*&5O9BE["B`@_("`@("`@(WUE;'-E>PH@("`@("`@(",);F5X="!I9B@D;&EN92%^+UXD<6-H<B\I.PH@("`@("`@("-]"B`@_("`@("`@;F5X="!I9B@D;&EN92%^+UQT97AO;EQT+R`F)B`D;&EN92%^+UQT=')A;G-C<FEP=%QT+RD["B`@_("`@("`@;7D@0&%R<F%Y(#T@<W!L:70H+UQT+RPD;&EN92D["B`@("`@("`@;7D@*"1C:'(L)&-A="PD<W,L_)&5E+"1S=')A;F0L)&%N;F\I(#T@*"1A<G)A>5LP72PD87)R87E;,ETL)&%R<F%Y6S-=+"1A<G)A>5LT72PD_87)R87E;-ETL)&%R<F%Y6SA=*3L*"0DC)&-H<B`](")C:'(B("X@)&-H<B!I9B@D8VAR(7XO8VAR+RD["@D)_;F5X="!I9B@D8VAR(&YE("1Q8VAR*3L*("`@("`@("`D9V-H<B`]("1C:'(@:68H)&=C:'(@97$@(BTB*3L*_("`@("`@("!I9B@D<W1A<G0@/3T@,"`F)B`D96YD(#T](#`@)B8@)&-A="!E<2`B=')A;G-C<FEP="(I>PH@_("`@("`@(`DD9V-H<B`]("1C:'(["B`@("`@("`@"21S=&%R="`]("1S<SL*("`@("`@("`))&5N9"`]("1E_93L*("`@("`@("!]"@H)"6EF*"1C870@97$@(F5X;VXB("8F("1G8VAR(&5Q("1C:'(I>PH)"0EM>2`D=&ED_(#T@(B(["@D)"6UY("1T:60@/2`D86YN;SL*"0D))'1I9#U^<R\H+BHI=')A;G-C<FEP=%Q?:60@7"(O+SL*_("`@(`D))'1I9#U^<R]<(EP[("@N*BDO+SL*("`@(`D))'1I9#U^<R]<(EP[+R\["@D)"6EF*"1T:60]?B]<_7R\I>PH)"0D))'1I9#U^<R]<7R]<+B]G.PH)"0E]"B`@("`@("`)"7!U<V@H0'LD=&UP>R1T:61]?2PB)&-H_<EQT)'-S7'0D964B*3L*("`@("`@(`D):68H(21U;FEQ=65[(B1C:')<="1S<UQT)&5E(GTI>PH@("`@("`@_"0D))'5N:7%U97LB)&-H<EQT)'-S7'0D964B?2LK.PH@("`@("`@"0D))'1O=&%L7V5X;VXK*SL*("`@("`@_(`D)?0H)"7T*"0D*"0DC<W1R86YD(&ES(&YO="!N965D960@8F5C875S92!E>&]N<R!W97)E(&EN<V5R=&5D_('1O($!T;7`@87)R87D@8F%S960@;VX@=&AE:7(@8V]O<F1I;F%T97,@:6YS=&5A9"!O9B!E>&]N(&YU;6)E_<@H@("`@("`@(&EF*"1C870@97$@(G1R86YS8W)I<'0B('Q\(&5O9BE["B`@("`@("`@"6EF*"1S<R`^("1E_;F0@?'P@96]F*7L*("`@("`@("`)"21C;W5N="LK.PH@("`@("`@(`D);7D@)&YU;2`]('-C86QA<B!K97ES_("5T;7`["@D)"0EI9B@D;G5M(#X](#$I>PH)"0D)"21M87@@/2`D;G5M(&EF*"1N=6T@/B`D;6%X*3L*"0D)_"0EM>2`D:60@/2`B)&=C:'(B("X@(E\B("X@(B1S=&%R="(@+B`B7R(@+B`B)&5N9"(["@D)"0D)<G5N*"1I_9"P@)'1O=&%L7V5X;VXL("5T;7`I.PH)"0D)?0H@("`@("`@(`D))71M<"`]("@I.PH@("`@("`@(`D))75N_:7%U92`]("@I.PH@("`@("`@(`D))&=C:'(@/2`D8VAR.PH@("`@("`@(`D))'-T87)T(#T@)'-S.PH@("`@_("`@(`D))&5N9"`]("1E93L*("`@("`@("`)"21T;W1A;%]E>&]N(#T@,#L*("`@("`@("`)?65L<V5["B`@_("`@("`@"0EI9B@D964@/B`D96YD("8F("1G8VAR(&5Q("1C:'(I>PH@("`@("`@(`D)"21E;F0@/2`D964[_"@D)"0E]"@D)"7T*"0D);F5X=#L*"0E]"B`@("`@("`@"@H)?0H*("`@(&UY("1S=&]P=&EM92`]('1I;64[_"B`@("!M>2`D;6EN<R`]('-P<FEN=&8H(B4N,F8B+"@H)'-T;W!T:6UE+21S=&%R='1I;64I("\@-C`I*3L*_("`@(`H);W!E;BA/550L(CXD<6-H<BYB960N=&UP(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@_)'%C:'(N8F5D+G1M<"`Z("0A7&XB.PH)9F]R96%C:"!M>2`D8F5D;W5T<'5T*'-O<G0@:V5Y<R`E8F5D*7L*_"0EP<FEN="!/550@)&)E9'LD8F5D;W5T<'5T?2`N(")<;B(["@E]"@EC;&]S92A/550I.PH)"@EO<&5N*$]5_5"PB/B1Q8VAR+F1B+G1M<"(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N)'%C:'(N9&(N=&UP(#H@_)"%<;B(["@EF;W)E86-H(&UY("1D8F]U='!U="AS;W)T(&ME>7,@)61B*7L*"0EP<FEN="!/550@)&1B>R1D_8F]U='!U='T@+B`B7&XB.PH)?0H)8VQO<V4H3U54*3L*("`@(`H@("`@<')I;G0@(G1I;64@/2`D;6EN<R!M_:6YS7&XB.PH);W!E;BA/550L(CX^=&EM92YT>'0B*2!\?"!D:64@(D%B;W)T:6YG+BX@0V%N)W0@;W!E;B!T_:6UE+G1X="`Z("0A7&XB.PH)<')I;G0@3U54("(D<6-H<EQT(B`N("@D;6EN<RD@+B`B(&UI;G-<;B(["@EC_;&]S92A/550I.PH*<W5B(')U;C(*>PH)<')I;G0@(G)U;C)<;B(["@ER971U<FX@,#L*?0IS=6(@<G5N"GL*_"6UY("@D:60L)'1O=&%L7V5X;VXL)6EN<'5T*2`]($!?.PH);7D@*"1I8VAR+"1I<W1A<G0L)&EE;F0I(#T@_<W!L:70H+UQ?+RPD:60I.PH*"6UY("1S=&%R='1I;65X(#T@=&EM93L*"6UY("1T97-T8V]U;G0@/2!S8V%L_87(@:V5Y<R`E:6YP=70["@H):68H)'1E<W1C;W5N="`^(#$P,#`P*7L*"0EM>2`D<VAO=V-O=6YT(#T@,#L*_"0EF;W)E86-H(&UY("1T:60H<V]R="!K97ES("5I;G!U="E["@D)"7!R:6YT("(D=&ED7&XB.PH)"0DD<VAO_=V-O=6YT*RL["@D)"6QA<W0@:68H)'-H;W=C;W5N="`^/2`U*3L*"0E]"@E]"@D*"2-M>2`D9FX@/2`B8V]U_;G1?97AO;BYT>'0B.PH)(VEF*"1T;W1A;%]E>&]N(#X@-3`P*7L*"2,);W!E;BA/550L(CX^)&9N(BD@?'P@_9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@)&9N(#H@)"%<;B(["@DC"7!R:6YT($]55"`B)&ED7'0D=&]T_86Q?97AO;EQN(CL*"2,)8VQO<V4H3U54*3L*"2-]"@H);7D@)6EN=')O;CL*"0H);7D@)6MN;W=N<W,["@EM_>2`E:VYO=VYE<SL*"6UY("5K;F]W;F5X;VYS.PH)"0H)9F]R96%C:"!M>2`D=&ED*'-O<G0@:V5Y<R`E:6YP_=70I>PH)"6YE>'0@:68H)'1I9"!E<2`B(BD["@D);7D@0&%R<F%Y(#T@0'LD:6YP=71[)'1I9'U].PH)"6UY_("1N=6T@/2!S8V%L87(@0&%R<F%Y.PH)"69O<BAM>2`D:2`](#$[)&D@/"`D;G5M.R1I*RLI>PH)"0EM>2`H_)&-H<C$L)'-S,2PD964Q*2`]('-P;&ET*"]<="\L)&%R<F%Y6R1I+3%=*3L*"0D);7D@*"1C:'(R+"1S<S(L_)&5E,BD@/2!S<&QI="@O7'0O+"1A<G)A>5LD:5TI.PH)"0DD:VYO=VYE>&]N<WLB)'-S,5QT)&5E,2)]*RL[_"@D)"21K;F]W;F5X;VYS>R(D<W,R7'0D964R(GTK*SL*"0D))&MN;W=N<W-[*"1E93$K,2E]>R(D<W,R+"1E_93(B?2LK.PH)"0DD:VYO=VYE<WLH)'-S,BTQ*7U[(B1S<S$L)&5E,2)]*RL["@D)"21I;G1R;VY[*"1E93$K_,2D@+B`B7'0B("X@*"1S<S(M,2E]*RL["@D)?0H)?0H)"@DC061D(&UU='5A;&QY(&5X8VQU<VEV92!I;G1R_;VYS"@EM>2!`:VYO=VYS<SL*"69O<F5A8V@@;7D@)'-I=&4H<V]R="!K97ES("5K;F]W;G-S*7L*"0EN97AT_(&EF*'-C86QA<B!K97ES("5[)&MN;W=N<W-[)'-I=&5]?2`]/2`Q*3L*"0EP=7-H*$!K;F]W;G-S+"1S:71E_*3L*"7T*"6UY($!K;F]W;F5S.PH)9F]R96%C:"!M>2`D<VET92AS;W)T(&ME>7,@)6MN;W=N97,I>PH)"6YE_>'0@:68H<V-A;&%R(&ME>7,@)7LD:VYO=VYE<WLD<VET97U](#T](#$I.PH)"7!U<V@H0&MN;W=N97,L)'-I_=&4I.PH)?0H)9F]R96%C:"!M>2`D<W,H0&MN;W=N<W,I>PH)"69O<F5A8V@@;7D@)&5S*$!K;F]W;F5S*7L*_"0D);7D@)&)I;F0@/2`P.PH)"0EF;W)E86-H(&UY("1B:6YD97AO;C$H:V5Y<R`E>R1K;F]W;G-S>R1S<WU]_*7L*"0D)"69O<F5A8V@@;7D@)&)I;F1E>&]N,BAK97ES("5[)&MN;W=N97-[)&5S?7TI>PH)"0D)"6EF*"1B_:6YD97AO;C$@97$@)&)I;F1E>&]N,BE["@D)"0D)"21B:6YD*RL["@D)"0D)?0H)"0D)?0H)"0D);&%S="!I_9B@D8FEN9"`^(#$I.PH)"0E]"@D)"21I;G1R;VY[)'-S("X@(EQT(B`N("1E<WTK*R!I9B@D8FEN9"`^(#$I_.PH)"7T*"7T*"@DC(R!3965K(&9O<B!N;W9E;"!E>&]N<PH);7D@)6YO=F5L:6YT<F]N.PH);7D@)5-*<VET_97,["@EF;W)E86-H(&UY("1S:FEN=')O;BAS;W)T(&ME>7,@)7L@)%-*>R1I8VAR?2!]*7L*"0EM>2`H)&ES_+"1I92D@/2!S<&QI="@O7'0O+"1S:FEN=')O;BD["@D);F5X="!I9B@D:7,@/"`D:7-T87)T('Q\("1I92`^_("1I96YD*3L*"0D*"0EI9B@A)&EN=')O;GLD<VII;G1R;VY]*7L*"0D))&YO=F5L:6YT<F]N>R1S:FEN=')O_;GTK*SL*"0D))&EN=')O;GLD<VII;G1R;VY]*RL["@D)?65L<V5["@D)"6YE>'0["@D)?0H)?0H*"6UY("5C_;VQL96-T:6]N.PH);7D@)7%U975E.PH);7D@)6QA<W0["@EF;W)E86-H(&UY("1I;G1R;VXH<V]R="!K97ES_("5I;G1R;VXI>PH)"6UY("@D:7,L)&EE*2`]('-P;&ET*"]<="\L)&EN=')O;BD["@D);7D@*"1T87)G971E_>&]N+"1E>&]N86YN;RPD=VEN9W,I.PH)"69O<F5A8V@@;7D@)'1I9"AS;W)T(&ME>7,@)6EN<'5T*7L*"0D)_;F5X="!I9B@D=&ED(&5Q("(B*3L*"0D);7D@0&%R<F%Y(#T@0'LD:6YP=71[)'1I9'U].PH)"0EM>2`D;G5M_(#T@<V-A;&%R($!A<G)A>3L*"0D);7D@*"1L87-T8VAR+"1L87-T<W,L)&QA<W1E92D@/2!S<&QI="@O7'0O_+"1A<G)A>5LD;G5M+3%=*3L*"0D):68H*"1L87-T<W,I(#P@)&ES("8F("@D;&%S=&5E*2`^("1I92E["@D)_"0DD=&%R9V5T97AO;B`]("@D;&%S='-S*2`N(")<="(@+B`H)&QA<W1E92D["@D)"0DD97AO;F%N;F\@/2`D_97AO;F%N;F][(B1L87-T8VAR(GU[(B1L87-T<W-<="1L87-T964B?7LD=&ED?3L*"0D)"21W:6YG<R`]("@D_:7,M)&ES*2`N(")<="(@+B`H)&ES+21I<RD@+B`B7'0B("X@*"1I<RTD:7,I("X@(EQT(B`N("@D:64M)&ES_*3L*"0D)"21T87)G971E>&]N(#T@*"1L87-T<W,M)&ES*2`N(")<="(@+B`H)&QA<W1E92TD:7,I.PH)"0D)_:68H(21Q=65U97LB)&QA<W1C:')<="1I<UQT)&EE7'127'0B("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E_>&]N?2E["@D)"0D))'%U975E>R(D;&%S=&-H<EQT)&ES7'0D:65<=%)<="(@+B`D=VEN9W,@+B`B7'0B("X@_)'1A<F=E=&5X;VY]*RL["@D)"0E]96QS97L*"0D)"0EN97AT.PH)"0D)?0H)"0D))&-O;&QE8W1I;VY[(B1L_87-T8VAR7'0D:7-<="1I95QT4EQT)'1I9")]("X]("(L(B`N("1W:6YG<R`N(")<="(@+B`D=&%R9V5T97AO_;B`N(")<="(@+B`D97AO;F%N;F\["@D)"0EL87-T.PH)"0E]"@D)"6YE>'0@:68H)&QA<W1E92`\("1I<RD[_"@D)"69O<BAM>2`D:2`](#`[)&D@/"`H)&YU;2TQ*3LD:2LK*7L*"0D)"6UY("@D8VAR,BPD<W,R+"1E93(I_(#T@<W!L:70H+UQT+RPD87)R87E;)&E=*3L*"0D)"6UY("@D8VAR,RPD<W,S+"1E93,I(#T@<W!L:70H+UQT_+RPD87)R87E;)&DK,5TI.PH)"0D)"@D)"0EL87-T(&EF*"1I<R`]/2`H)&5E,BLQ*2`F)B`D:64@/3T@*"1S_<S,M,2DI.PH)"0D);F5X="!I9B@D:7,@/CT@*"1E93,K,2DI.PH)"0D);&%S="!I9B@D:64@/#T@*"1S<S(M_,2DI.PH)"0D)"@D)"0DC1F]R(')E9W5L87(@:6YT<F]N(')E=&5N=&EO;B!E=F5N="X*"0D)"6EF*"@D<W,R_+3$I(#P@)&ES("8F("1I92`\("@D964R*S$I*7L*"0D)"0DD=&%R9V5T97AO;B`]("@D<W,R*2`N(")<="(@_+B`H)&5E,BD["@D)"0D))&5X;VYA;FYO(#T@)&5X;VYA;FYO>R1C:'(R?7LD=&%R9V5T97AO;GU[)'1I9'T[_"@D)"0D))'1A<F=E=&5X;VX@/2`H)'-S,BTD:7,I("X@(EQT(B`N("@D964R+21I<RD["@D)"0D))'=I;F=S_(#T@*"1I<RTD:7,I("X@(EQT(B`N("@D:7,M)&ES*2`N(")<="(@+B`H)&ES+21I<RD@+B`B7'0B("X@*"1I_92TD:7,I.PH)"0D)"6EF*"$D<75E=65[(B1L87-T8VAR7'0D:7-<="1I95QT4EQT(B`N("1W:6YG<R`N(")<_="(@+B`D=&%R9V5T97AO;GTI>PH)"0D)"0DD<75E=65[(B1L87-T8VAR7'0D:7-<="1I95QT4EQT(B`N("1W_:6YG<R`N(")<="(@+B`D=&%R9V5T97AO;GTK*SL*"0D)"0E]96QS97L*"0D)"0D);F5X=#L*"0D)"0E]"@D)_"0D))&-O;&QE8W1I;VY[(B1I8VAR7'0D:7-<="1I95QT4EQT)'1I9")]("X]("(L(B`N("1W:6YG<R`N(")<_="(@+B`D=&%R9V5T97AO;B`N(")<="(@+B`D97AO;F%N;F\["@D)"0D);&%S=#L*"0D)"7T*"0D)"0H@("`@_("`@("`@("`@("`@(T9O<B!N;W9E;"!)4B!E=F5N=',@*&%G9W)E<W-I=F4@;6]D92D*("`@("`@("`@("`@_("`@(&EF*"1I<FUO9&4@/3T@,2E["B`@("`@("`@("`@("`@("`);7D@*"1N97=I<RPD;F5W:64I(#T@*"@D_964R*S$I+"@D<W,S+3$I*3L*("`@("`@("`@("`@("`@(`EM>2`D;F5W=&ED(#T@(D5X+B(@+B`D=&ED.PH@_("`@("`@("`@("`@("`@"6UY("1N97=T87)G971E>&]N(#T@*"1S<S(M)&YE=VES*2`N(")<="(@+B`H)&5E_,RTD;F5W:7,I.PH@("`@("`@("`@("`@("`@"21W:6YG<R`]("@D;F5W:7,M)&YE=VES*2`N(")<="(@+B`H_)&YE=VES+21N97=I<RD@+B`B7'0B("X@*"1N97=I<RTD;F5W:7,I("X@(EQT(B`N("@D;F5W:64M)&YE=VES_*3L*("`@("`@("`@("`@("`@(`DD97AO;F%N;F\@/2`R.PH@("`@("`@("`@("`@("`@"6UY("1K;F]W;DE2_(#T@,#L*("`@("`@("`@("`@("`@(`EF;W)E86-H(&UY("1C:V5Y*&ME>7,@)6-O;&QE8W1I;VXI>PH@("`@_("`@("`@("`@("`@("`@(`EM>2`H)&-C:'(L)&-I<RPD8VEE+"1C='EP92PD8VED*2`]('-P;&ET*"]<="\L_)&-K97DI.PH@("`@("`@("`@("`@("`@("`@(`EM>2`H)'@Q<V8L)'@Q968L)'@R<V8L)'@R968L)'AT97-S_,2PD>'1E964Q+"1X96%N;F\Q*2`]('-P;&ET*"]<="\L)&-O;&QE8W1I;VY[)&-K97E]*3L*("`@("`@("`@_("`@("`@("`@("`);F5X="!I9B@D8W1Y<&4@;F4@(E(B*3L*("`@("`@("`@("`@("`@("`@("`):68H)'AT_97-S,2`]/2`H)'-S,BTD;F5W:7,I("8F("1X=&5E93$@/3T@*"1E93(M)&YE=VES*2E["B`@("`@("`@("`@_("`@("`@("`@("`@(`DD:VYO=VY)4B`](#$["B`@("`@("`@("`@("`@("`@("`@("`@(`EL87-T.PH@("`@_("`@("`@("`@("`@("`@(`E]"B`@("`@("`@("`@("`@("`@("`@"6EF*"@D8VES(#T]("1N97=I<RD@)B8@_*"1C:64@/3T@)&YE=VEE*2E["B`@("`@("`@("`@("`@("`@("`@("`@(`DD:VYO=VY)4B`](#$["B`@("`@_("`@("`@("`@("`@("`@("`@(`EL87-T.PH@("`@("`@("`@("`@("`@("`@(`E]"B`@("`@("`@("`@("`@_("`)?0H@("`@("`@("`@("`@("`@"6EF*"1K;F]W;DE2(#T](#`I>PH@("`@("`@("`@("`@("`@"0EI9B@A_)'%U975E>R(D:6-H<EQT)&YE=VES7'0D;F5W:65<=%)<="(@+B`D=VEN9W,@+B`B7'0B("X@)&YE=W1A<F=E_=&5X;VY]*7L*"0D)"0D)"21Q=65U97LB)&EC:')<="1N97=I<UQT)&YE=VEE7'127'0B("X@)'=I;F=S("X@_(EQT(B`N("1N97=T87)G971E>&]N?2LK.PH)"0D)"0E]96QS97L*"0D)"0D)"6YE>'0["@D)"0D)"7T*("`@_("`@("`@("`@("`@("`@("`))&-O;&QE8W1I;VY[(B1I8VAR7'0D;F5W:7-<="1N97=I95QT4EQT)&YE=W1I_9")]("X]("(L(B`N("1W:6YG<R`N(")<="(@+B`D;F5W=&%R9V5T97AO;B`N(")<="(@+B`D97AO;F%N;F\[_"B`@("`@("`@("`@("`@("`)?0H)"0D)?0H@("`@("`@("`@("`@("`@;&%S="!I9B@D:7,@/3T@*"1E93(K_,2D@)B8@)&EE(#T]("@D<W,S+3$I*3L*"0D)"0H)"0D)(T9O<B!N;W9E;"!!4U,@979E;G1S"@D)"0EI9B@A_)&YO=F5L:6YT<F]N>R1I;G1R;VY]*7L*"0D)"7UE;'-E>PH)"0D)"2-L969T('-I=&4@=&AE('-A;64L(&YE_=R!S<&QI8V4@<VET92!I;B!T:&4@:6YT<F]N"@D)"0D):68H*"1E93(K,2D@/3T@)&ES("8F("1I92`\("@D_<W,S+3$I*7L*"0D)"0D);7D@)'1M<&EN=')O;B`]("@D:7,I("X@(EQT(B`N("@D<W,S+3$I.PH)"0D)"0DD_=&%R9V5T97AO;B`]("@D:64K,2TD:7,I("X@(EQT(B`N("@D<W,S+21I<RD["@D)"0D)"21E>&]N86YN;R`]_(#(["@D)"0D)"21W:6YG<R`]("@D:7,M)&ES*2`N(")<="(@+B`H)&ES+21I<RD@+B`B7'0B("X@*"1I<RTD_:7,I("X@(EQT(B`N("@D:64M)&ES*3L*"0D)"0D);7D@)%134R`](#`["@D)"0D)"6EF*"$D4TIS:71E>R1C_:'(R?7LH)'-S,BTQ*7T@?'P@(2132G-I=&5[)&-H<C)]>R@D964S*S$I?2E["@D)"0D)"0DD5%-3*RL["@D)_"0D)"7T*"0D)"0D):68H)&D@/3T@,"!\?"`D:2`]/2`H)&YU;2TR*2E["@D)"0D)"0DD=&ED(#T@(E134RXB_("X@)'1I9"!I9B@D;G5M(#X@,B`F)B`D5%-3(#T](#$I.PH)"0D)"0E]"@D)"0D)"6EF*"$D<75E=65[(B1I_8VAR7'0D=&UP:6YT<F]N7'137'0B("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N?2E["@D)"0D)"0DD_<75E=65[(B1I8VAR7'0D=&UP:6YT<F]N7'137'0B("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N?2LK_.PH)"0D)"0E]96QS97L*"0D)"0D)"6YE>'0["@D)"0D)"7T*"0D)"0D))&-O;&QE8W1I;VY[(B1I8VAR7'0D_=&UP:6YT<F]N7'137'0D=&ED(GT@+CT@(BPB("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N("X@(EQT_(B`N("1E>&]N86YN;SL*"0D)"0D);&%S=#L*"0D)"0E]"@D)"0D)(VQE9G0@<VET92!T:&4@<V%M92P@;F5W_('-P;&EC92!S:71E(&EN('1H92!E>&]N"@D)"0D):68H*"1E93(K,2D@/3T@)&ES("8F("1I92`^("@D<W,S_+3$I("8F("1I92`\("1E93,I>PH)"0D)"0EM>2`D=&UP:6YT<F]N(#T@*"1I<RD@+B`B7'0B("X@*"1I92D[_"@D)"0D)"21T87)G971E>&]N(#T@*"1S<S,M)&ES*2`N(")<="(@+B`H)&EE+21I<RD["@D)"0D)"21E>&]N_86YN;R`](#(["@D)"0D)"21W:6YG<R`]("@D:7,M)&ES*2`N(")<="(@+B`H)&ES+21I<RD@+B`B7'0B("X@_*"1I<RTD:7,I("X@(EQT(B`N("@H)'-S,RTQ*2TD:7,I.PH)"0D)"0EM>2`D5%-3(#T@,#L*"0D)"0D):68H_(2132G-I=&5[)&-H<C)]>R@D<W,R+3$I?2!\?"`A)%-*<VET97LD8VAR,GU[*"1E93,K,2E]*7L*"0D)"0D)_"2144U,K*SL*"0D)"0D)?0H)"0D)"0EI9B@D:2`]/2`P('Q\("1I(#T]("@D;G5M+3(I*7L*"0D)"0D)"21T_:60@/2`B5%-3+B(@+B`D=&ED(&EF*"1N=6T@/B`R("8F("144U,@/3T@,2D["@D)"0D)"7T*"0D)"0D):68H_(21Q=65U97LB)&EC:')<="1T;7!I;G1R;VY<=%-<="(@+B`D=VEN9W,@+B`B7'0B("X@)'1A<F=E=&5X;VY]_*7L*"0D)"0D)"21Q=65U97LB)&EC:')<="1T;7!I;G1R;VY<=%-<="(@+B`D=VEN9W,@+B`B7'0B("X@)'1A_<F=E=&5X;VY]*RL["@D)"0D)"7UE;'-E>PH)"0D)"0D);F5X=#L*"0D)"0D)?0H)"0D)"0DD8V]L;&5C=&EO_;GLB)&EC:')<="1T;7!I;G1R;VY<=%-<="1T:60B?2`N/2`B+"(@+B`D=VEN9W,@+B`B7'0B("X@)'1A<F=E_=&5X;VX@+B`B7'0B("X@)&5X;VYA;FYO.PH)"0D)"0EL87-T.PH)"0D)"7T*"0D)"0DC<FEG:'0@<VET92!T_:&4@<V%M92P@;F5W('-P;&EC92!S:71E(&EN('1H92!I;G1R;VX*"0D)"0EI9B@H)&5E,BLQ*2`\("1I<R`F_)B`D:64@/3T@*"1S<S,M,2DI>PH)"0D)"0EM>2`D=&UP:6YT<F]N(#T@*"1E93(K,2D@+B`B7'0B("X@*"1I_92D["@D)"0D)"21T87)G971E>&]N(#T@*"@D964R*S$I+2@D964R*S$I*2`N(")<="(@+B`H)&ES+2@D964R_*S$I+3$I.PH)"0D)"0DD97AO;F%N;F\@/2`R.PH)"0D)"0DD=VEN9W,@/2`H)&ES+2@D964R*S$I*2`N(")<_="(@+B`H)&EE+2@D964R*S$I*2`N(")<="(@+B`H)&EE+2@D964R*S$I*2`N(")<="(@+B`H)&EE+2@D964R_*S$I*3L*"0D)"0D);7D@)%134R`](#`["@D)"0D)"6EF*"$D4TIS:71E>R1C:'(R?7LH)'-S,BTQ*7T@?'P@_(2132G-I=&5[)&-H<C)]>R@D964S*S$I?2E["@D)"0D)"0DD5%-3*RL["@D)"0D)"7T*"0D)"0D):68H)&D@_/3T@,"!\?"`D:2`]/2`H)&YU;2TR*2E["@D)"0D)"0DD=&ED(#T@(E134RXB("X@)'1I9"!I9B@D;G5M(#X@_,B`F)B`D5%-3(#T](#$I.PH)"0D)"0E]"@D)"0D)"6EF*"$D<75E=65[(B1I8VAR7'0D=&UP:6YT<F]N7'13_7'0B("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N?2E["@D)"0D)"0DD<75E=65[(B1I8VAR7'0D=&UP_:6YT<F]N7'137'0B("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N?2LK.PH)"0D)"0E]96QS97L*"0D)_"0D)"6YE>'0["@D)"0D)"7T*"0D)"0D))&-O;&QE8W1I;VY[(B1I8VAR7'0D=&UP:6YT<F]N7'137'0D=&ED_(GT@+CT@(BPB("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N("X@(EQT(B`N("1E>&]N86YN;SL*"0D)_"0D);&%S=#L*"0D)"0E]"@D)"0D)(W)I9VAT('-I=&4@=&AE('-A;64L(&YE=R!S<&QI8V4@<VET92!I;B!T_:&4@97AO;@H)"0D)"6EF*"@D964R*S$I(#X@)&ES("8F("1I92`]/2`H)'-S,RTQ*2`F)B`D<W,R(#P@)&ES_*7L*"0D)"0D);7D@)'1M<&EN=')O;B`]("@D:7,I("X@(EQT(B`N("@D:64I.PH)"0D)"0DD=&%R9V5T97AO_;B`]("@D:7,M*"1I<RDI("X@(EQT(B`N("@D964R+2@D:7,I*3L*"0D)"0D))&5X;VYA;FYO(#T@,CL*"0D)_"0D))'=I;F=S(#T@*"@D964R*S$I+2@D:7,I*2`N(")<="(@+B`H)&EE+2@D:7,I*2`N(")<="(@+B`H)&EE_+2@D:7,I*2`N(")<="(@+B`H)&EE+2@D:7,I*3L*"0D)"0D);7D@)%134R`](#`["@D)"0D)"6EF*"$D4TIS_:71E>R1C:'(R?7LH)'-S,BTQ*7T@?'P@(2132G-I=&5[)&-H<C)]>R@D964S*S$I?2E["@D)"0D)"0DD5%-3_*RL["@D)"0D)"7T*"0D)"0D):68H)&D@/3T@,"!\?"`D:2`]/2`H)&YU;2TR*2E["@D)"0D)"0DD=&ED(#T@_(E134RXB("X@)'1I9"!I9B@D;G5M(#X@,B`F)B`D5%-3(#T](#$I.PH)"0D)"0E]"@D)"0D)"6EF*"$D<75E_=65[(B1I8VAR7'0D=&UP:6YT<F]N7'137'0B("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N?2E["@D)_"0D)"0DD<75E=65[(B1I8VAR7'0D=&UP:6YT<F]N7'137'0B("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E_>&]N?2LK.PH)"0D)"0E]96QS97L*"0D)"0D)"6YE>'0["@D)"0D)"7T*"0D)"0D))&-O;&QE8W1I;VY[(B1I_8VAR7'0D=&UP:6YT<F]N7'137'0D=&ED(GT@+CT@(BPB("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N_("X@(EQT(B`N("1E>&]N86YN;SL*"0D)"0D);&%S=#L*"0D)"0E]"@D)"0E]"@H)"0D)(T9O<B!K;F]W;B!A_;'1E<FYA=&EV92!S<&QI8V4@<VET92!E=F5N="X*"0D)"6EF*"@D964R*S$I(#T]("1I<R`F)B`D:64@/B`H_)'-S,RTQ*2`F)B`D:64@/"`H)&5E,RLQ*2E["@D)"0D)(R1T87)G971E>&]N(#T@*"1S<S,I("X@(EQT(B`N_("@D:64I.PH)"0D)"21E>&]N86YN;R`]("1E>&]N86YN;WLD8VAR,WU[)'1A<F=E=&5X;VY]>R1T:61].PH)_"0D)"21T87)G971E>&]N(#T@*"1S<S,M)&ES*2`N(")<="(@+B`H)&EE+21I<RD["@D)"0D))'=I;F=S(#T@_*"1I<RTD:7,I("X@(EQT(B`N("@D:7,M)&ES*2`N(")<="(@+B`H)&ES+21I<RD@+B`B7'0B("X@*"@D<W,S_+3$I+21I<RD["@D)"0D);7D@)%134R`](#`["@D)"0D):68H(2132G-I=&5[)&-H<C)]>R@D<W,R+3$I?2!\_?"`A)%-*<VET97LD8VAR,GU[*"1E93,K,2E]*7L*"0D)"0D))%134RLK.PH)"0D)"7T*"0D)"0EI9B@D:2`]_/2`P('Q\("1I(#T]("@D;G5M+3(I*7L*"0D)"0D))'1I9"`](")44U,N(B`N("1T:60@:68H)&YU;2`^(#(@_)B8@)%134R`]/2`Q*3L*"0D)"0E]"@D)"0D):68H(21Q=65U97LB)&EC:')<="1I;G1R;VY<=%-<="(@+B`D_=VEN9W,@+B`B7'0B("X@)'1A<F=E=&5X;VY]*7L*"0D)"0D))'%U975E>R(D:6-H<EQT)&EN=')O;EQT4UQT_(B`N("1W:6YG<R`N(")<="(@+B`D=&%R9V5T97AO;GTK*SL*"0D)"0E]96QS97L*"0D)"0D);F5X=#L*"0D)_"0E]"@D)"0D))&-O;&QE8W1I;VY[(B1I8VAR7'0D:6YT<F]N7'137'0D=&ED(GT@+CT@(BPB("X@)'=I;F=S_("X@(EQT(B`N("1T87)G971E>&]N("X@(EQT(B`N("1E>&]N86YN;SL*"0D)"0EL87-T.PH)"0D)?0H)"0D)_:68H*"1E93(K,2D@/B`D:7,@)B8@)&EE(#T]("@D<W,S+3$I("8F("1I<R`^("@D<W,R+3$I*7L*"0D)"0DC_)'1A<F=E=&5X;VX@/2`H)&ES*2`N(")<="(@+B`H)&5E,BD["@D)"0D))&5X;VYA;FYO(#T@)&5X;VYA;FYO_>R1C:'(R?7LD=&%R9V5T97AO;GU[)'1I9'T["@D)"0D))'1A<F=E=&5X;VX@/2`H)&ES+21I<RD@+B`B7'0B_("X@*"1E93(M)&ES*3L*"0D)"0DD=VEN9W,@/2`H*"1E93(K,2DM)&ES*2`N(")<="(@+B`H)&EE+21I<RD@_+B`B7'0B("X@*"1I92TD:7,I("X@(EQT(B`N("@D:64M)&ES*3L*"0D)"0EM>2`D5%-3(#T@,#L*"0D)"0EI_9B@A)%-*<VET97LD8VAR,GU[*"1S<S(M,2E]('Q\("$D4TIS:71E>R1C:'(R?7LH)&5E,RLQ*7TI>PH)"0D)_"0DD5%-3*RL["@D)"0D)?0H)"0D)"6EF*"1I(#T](#`@?'P@)&D@/3T@*"1N=6TM,BDI>PH)"0D)"0DD=&ED_(#T@(E134RXB("X@)'1I9"!I9B@D;G5M(#X@,B`F)B`D5%-3(#T](#$I.PH)"0D)"7T*"0D)"0EI9B@A)'%U_975E>R(D:6-H<EQT)&EN=')O;EQT4UQT(B`N("1W:6YG<R`N(")<="(@+B`D=&%R9V5T97AO;GTI>PH)"0D)_"0DD<75E=65[(B1I8VAR7'0D:6YT<F]N7'137'0B("X@)'=I;F=S("X@(EQT(B`N("1T87)G971E>&]N?2LK_.PH)"0D)"7UE;'-E>PH)"0D)"0EN97AT.PH)"0D)"7T*"0D)"0DD8V]L;&5C=&EO;GLB)&EC:')<="1I;G1R_;VY<=%-<="1T:60B?2`N/2`B+"(@+B`D=VEN9W,@+B`B7'0B("X@)'1A<F=E=&5X;VX@+B`B7'0B("X@)&5X_;VYA;FYO.PH)"0D)"6QA<W0["@D)"0E]"@D)"0D*"0D)"2-E>&]N('-K:7!P:6YG(&9O<B`Q(&]R(&UU;'1I_<&QE"@D)"0EN97AT(&EF*"1I(#T](#`I.PH)"0D);7D@*"1C:'(Q+"1S<S$L)&5E,2D@/2!S<&QI="@O7'0O_+"1A<G)A>5LD:2TQ72D["@D)"0EL87-T(&EF*"1I<R`]/2`H)&5E,2LQ*2`F)B`D:64@/3T@*"1S<S(M,2DI_.PH)"0D):68H)&ES(#P]("@D964Q*S$I("8F("1I92`^/2`H)'-S,RTQ*2E["@D)"0D):68H(21C;VQL96-T_:6]N>R(D:6-H<EQT)&EN=')O;EQT5UQT)'1I9")]*7L*"0D)"0D);F5X="!I9B@H)&5E,2LQ*2`A/2`D:7,I_.PH)"0D)"0DD=&%R9V5T97AO;B`]("@D<W,R*2`N(")<="(@+B`H)&5E,BD["@D)"0D)"21E>&]N86YN;R`]_("1E>&]N86YN;WLD8VAR,GU[)'1A<F=E=&5X;VY]>R1T:61].PH)"0D)"0DD=&%R9V5T97AO;B`]("@D<W,R_+21I<RD@+B`B7'0B("X@*"1E93(M)&ES*3L*"0D)"0D))'=I;F=S(#T@*"1E93$K,2TD:7,I("X@(EQT(B`N_("@D<W,R+3$M)&ES*2`N(")<="(@+B`H)&5E,BLQ+21I<RD@+B`B7'0B("X@*"1S<S,M,2TD:7,I.PH)"0D)_"0EI9B@A)&5X;VYA;FYO*7L*"0D)"0D)"7!R:6YT("(D=&ED(%LD8VAR,BPD<W,R+"1E93)=(&-A;B=T(&9I_;F0@97AO;B!T>7!E+EQN(CL*"0D)"0D)"65X:70["@D)"0D)"7T*"0D)"0D):68H(21Q=65U97LB)&EC:')<_="1I;G1R;VY<=%=<="(@+B`D=VEN9W,@+B`B7'0B("X@)'1A<F=E=&5X;VY]*7L*"0D)"0D)"21Q=65U97LB_)&EC:')<="1I;G1R;VY<=%=<="(@+B`D=VEN9W,@+B`B7'0B("X@)'1A<F=E=&5X;VY]*RL["@D)"0D)"7UE_;'-E>PH)"0D)"0D);F5X=#L*"0D)"0D)?0H)"0D)"0DD8V]L;&5C=&EO;GLB)&EC:')<="1I;G1R;VY<=%=<_="1T:60B?2`N/2`B+"(@+B`D=VEN9W,@+B`B7'0B("X@)'1A<F=E=&5X;VX@+B`B7'0B("X@)&5X;VYA;FYO_.PH)"0D)"7UE;'-E>PH)"0D)"0DD=&%R9V5T97AO;B`]("@D<W,R*2`N(")<="(@+B`H)&5E,BD["@D)"0D)_"21E>&]N86YN;R`]("1E>&]N86YN;WLB)&-H<C(B?7LD=&%R9V5T97AO;GU[)'1I9'T["@D)"0D)"21T87)G_971E>&]N(#T@*"1S<S(M)&ES*2`N(")<="(@+B`H)&5E,BTD:7,I.PH)"0D)"0DD=VEN9W,@/2`H)&5E,2LQ_+21I<RD@+B`B7'0B("X@*"1S<S(M,2TD:7,I("X@(EQT(B`N("@D964R*S$M)&ES*2`N(")<="(@+B`H)'-S_,RTQ+21I<RD["@D)"0D)"6EF*"$D97AO;F%N;F\I>PH)"0D)"0D)<')I;G0@(B1T:60@6R1C:'(R+"1S<S(L_)&5E,ET@8V%N)W0@9FEN9"!E>&]N('1Y<&4N7&XB.PH)"0D)"0D)97AI=#L*"0D)"0D)?0H)"0D)"0EI9B@A_)'%U975E>R(D:6-H<EQT)&EN=')O;EQT5UQT(B`N("1W:6YG<R`N(")<="(@+B`D=&%R9V5T97AO;GTI>PH)_"0D)"0D))'%U975E>R(D:6-H<EQT)&EN=')O;EQT5UQT(B`N("1W:6YG<R`N(")<="(@+B`D=&%R9V5T97AO_;GTK*SL*"0D)"0D)?65L<V5["@D)"0D)"0EN97AT.PH)"0D)"0E]"@D)"0D)"21C;VQL96-T:6]N>R(D:6-H_<EQT)&EN=')O;EQT5UQT)'1I9")]("X]("(L(B`N("1W:6YG<R`N(")<="(@+B`D=&%R9V5T97AO;B`N(")<_="(@+B`D97AO;F%N;F\["@D)"0D)?0H)"0D)?0H*"0D)?0H)"7T*"7T)"@D*"0DC5'=O(%,@979E;G1S(&-A_;B!C<F5A=&4@82!N;W9E;"!E>&]N(&EF('1H97D@:&%V92!T:&4@<V%M92!C;VYS=&ET=71I=F4@97AO;G,*_"0DC1&]E<VXG="!W;W)K+B!B;&]C:R!N;W<A"CUB96=I;@H)"6UY("5N;W9E;&5X;VX["@D);7D@)&YO=F5L_(#T@,#L*"0EM>2`D8W)E871E(#T@,#L*"0EF;W)E86-H(&UY("1E=F5N=#$H:V5Y<R`E8V]L;&5C=&EO;BE[_"@D)"6YE>'0@:68H)&5V96YT,2%^+UQT4UQT+RD["@D)"6UY("1J=6YC=&EO;G,@/2`D8V]L;&5C=&EO;GLD_979E;G0Q?3L*"0D))&IU;F-T:6]N<SU^<R]<+"\O.PH)"0EM>2!`:G5N8W1I;VYS(#T@<W!L:70H+UPL+RPD_:G5N8W1I;VYS*3L*"0D);F5X="!I9BAS8V%L87(@0&IU;F-T:6]N<R`]/2`Q*3L*"0D);7D@)&YU;2`]('-C_86QA<B!`:G5N8W1I;VYS.PH)"0DC3&5F=`H)"0EM>2`H)&IS,3$L)&IE,3$L)&IS,3(L)&IE,3(I(#T@<W!L_:70H+UQT+RPD:G5N8W1I;VYS6S!=*3L*"0D))&IS,3(@/2`D:G,Q,2!I9B@D:G,Q,B`]/2`D:F4Q,BD["@D)_"21J93$R(#T@)&IE,3$@:68H)&IS,3(@/3T@)&IE,3(I.PH)"0DC4FEG:'0*"0D);7D@*"1J<S(Q+"1J93(Q_+"1J<S(R+"1J93(R*2`]('-P;&ET*"]<="\L)&IU;F-T:6]N<ULH)&YU;2TQ*5TI.PH)"0D*"0D);F5X="!I_9B@D:G,Q,B`]/2`D:G,R,B!\?"`D:F4Q,B`]/2`D:F4R,BD["@D)"6UY("@D8VAR,2PD:7,Q+"1I93$L)'1Y_<&4Q+"1T:60Q*2`]('-P;&ET*"]<="\L)&5V96YT,2D["@D)"21T:60Q/7YS+UY44U-<+B\O.PH)"0DD;F]V_96QE>&]N>R1T:60Q?7LH)&IE,3(K,2D@+B`B7'0B("X@*"1J<S(R+3$I?2LK.PH)"0EU;F1E9B`D8V]L;&5C_=&EO;GLD979E;G0Q?3L*"0E]"@D)"0H)9F]R96%C:"!M>2`D=&ED*&ME>7,@)6YO=F5L97AO;BE["@D)(W!R_:6YT(")C:&5C:VEN9RXN+B!N;W9E;"!E>&]N(&9O<B`D=&ED7&XB.PH)"6UY("@D=&%R9V5T97AO;BPD97AO_;F%N;F\I.PH)"69O<F5A8V@@;7D@)&QO8RAK97ES("5[("1N;W9E;&5X;VY[)'1I9'T@?2E["@D)"6UY("@D_=&5S+"1T964I(#T@<W!L:70H+UQT+RPD;&]C*3L*"0D):68H(21I;G!U='LD=&ED?2E["@D)"0DD=&ED/7YS_+UY44U-<+B\O.PH)"0E]"@D)"6UY($!A<G)A>2`]($![)&EN<'5T>R1T:61]?3L*"0D);7D@)&YU;2`]('-C_86QA<B!`87)R87D["@D)"69O<BAM>2`D:2`](#`[)&D@/"`H)&YU;2TQ*3LD:2LK*7L*"0D)"6UY("@D8VAR_,BPD<W,R+"1E93(I(#T@<W!L:70H+UQT+RPD87)R87E;)&E=*3L*"0D)"6YE>'0@:68H)'-S,B`^("1T97,I_.PH)"0D);7D@*"1C:'(S+"1S<S,L)&5E,RD@/2!S<&QI="@O7'0O+"1A<G)A>5LD:2LQ72D["@D)"0EI9B@D_964R(#P@)'1E<R`F)B`D<W,S(#X@)'1E92E["@D)"0D);7D@)&EN=')O;B`]("@D964R*S$I("X@(EQT(B`N_("@D<W,S+3$I.PH)"0D)"7!R:6YT(")0;W-S:6)L92!F86QS92!N;W9E;"!E>&]N('-K:7!P:6YG(&5V96YT_("(@+B`H)&5E,BLQ*2`N("(M(B`N("@D=&5S+3$I("X@(EQT(B`N("@D=&5E*S$I("X@(BTB("X@*"1S<S,M_,2D@+B`B7&XB(&EF*"@D964R*S$I(#T]("@D=&5S+3$I*3L*"0D)"0DD=&%R9V5T97AO;B`]("@D=&5S+2@D_964R*S$I*2`N(")<="(@+B`H)'1E92TH)&5E,BLQ*2D["@D)"0D))&5X;VYA;FYO(#T@,CL*"0D)"0DD8V]L_;&5C=&EO;GLB)&EC:')<="1I;G1R;VY<=%=<="1T:60B?2`N/2`B+"(@+B`H)&5E,BLQ+2@D964R*S$I*2`N_(")<="(@+B`H)'1E<RTQ+2@D964R*S$I*2`N(")<="(@+B`H)'1E92LQ+2@D964R*S$I*2`N(")<="(@+B`H_)'-S,RTQ+2@D964R*S$I*2`N(")<="(@+B`D=&%R9V5T97AO;B`N(")<="(@+B`D97AO;F%N;F\["@D)"0D)_;&%S=#L*"0D)"7T*"0D)?0H)"7T*"7T*/65N9`H]8W5T"@D*"2-296UO=F4@9'5P;&EC871E<PH)(T1O;B=T_(&YE960@=&AI<R!A;GEM;W)E+B!";&]C:R!N;W<N"CUB96=I;@H);7D@)65M<'1Y.PH)9F]R96%C:"!M>2`D_83$H<V]R="!K97ES("5C;VQL96-T:6]N*7L*"0EN97AT(&EF*"$D8V]L;&5C=&EO;GLD83%]*3L*"0EI9B@A_)&5M<'1Y>R1A,7TI>PH)"7UE;'-E>PH)"0EN97AT.PH)"7T*"0EM>2`H)&%C:'(L)&%S+"1A92PD86-A="PD_871I9"D@/2!S<&QI="@O7'0O+"1A,2D["@D);7D@0&$Q(#T@<W!L:70H+UQT+RPD8V]L;&5C=&EO;GLD83%]_*3L*"0EM>2`D;&%B96QA,2`]("1A,5LP72`N(")<="(@+B`D83%;,5T@+B`B7'0B("X@)&$Q6S)=("X@(EQT_(B`N("1A,5LS73L*"0EF;W)E86-H(&UY("1A,BAS;W)T(&ME>7,@)6-O;&QE8W1I;VXI>PH)"0EN97AT(&EF_*"1A,2!E<2`D83(I.PH)"0EN97AT(&EF*"$D8V]L;&5C=&EO;GLD83)]*3L*"0D);7D@*"1B8VAR+"1B<RPD_8F4L)&)C870L)&)T:60I(#T@<W!L:70H+UQT+RPD83(I.PH)"0EN97AT(&EF*"1A8V%T(&YE("1B8V%T*3L*_"0D);7D@0&$R(#T@<W!L:70H+UQT+RPD8V]L;&5C=&EO;GLD83)]*3L*"0D);7D@)&QA8F5L83(@/2`D83);_,%T@+B`B7'0B("X@)&$R6S%=("X@(EQT(B`N("1A,ELR72`N(")<="(@+B`D83);,UT["@D)"6EF*"1C;VQL_96-T:6]N>R1A,7T@97$@)&-O;&QE8W1I;VY[)&$R?2`F)B`D86-A="!N92`B4R(I>PH)"0D))&5M<'1Y>R1A_,GT@/2`Q.PH)"0D);F5X=#L*"0D)?0H)"0EI9B@D;&%B96QA,2!E<2`D;&%B96QA,B`F)B`D86-A="!E<2`B_4R(I>PH)"0D))&5M<'1Y>R1A,GT@/2`Q.PH)"0D);F5X=#L*"0D)?0H)"0D*"0E]"@E]"@D*"69O<F5A8V@@_;7D@)&%C8V5S<VEO;BAS;W)T(&ME>7,@)6-O;&QE8W1I;VXI>PH)"6UY("@D86-H<BPD87,L)&%E+"1A8V%T_+"1A=&ED*2`]('-P;&ET*"]<="\L)&%C8V5S<VEO;BD["@D):68H(21E;7!T>7LD86-C97-S:6]N?2E["@D)_?65L<V5["@D)"75N9&5F("1C;VQL96-T:6]N>R1A8V-E<W-I;VY].PH)"0EN97AT.PH)"7T*"7T*/65N9`H]_8W5T"@H@("`@;7D@)&)E9&]U='!U=#L*("`@(&UY("1D8F]U='!U=#L*("`@(&9O<F5A8V@@;7D@)&,H<V]R_="!K97ES("5C;VQL96-T:6]N*7L*("`@("`@("!N97AT(&EF*"$D8V]L;&5C=&EO;GLD8WTI.PH@("`@("`@_(&UY($!G<F]U<',@/2!S<&QI="@O7"PO+"1C;VQL96-T:6]N>R1C?2D["B`@("`@("`@9&5L971E("1C;VQL_96-T:6]N>R1C?3L*("`@("`@("!M>2`D;&%S="`]('-C86QA<B!`9W)O=7!S.PH@("`@("`@(&UY("@D:6-H_<BPD:7-S+"1I964L)&EC870L)'1I9"D@/2!S<&QI="@O7'0O+"1C*3L*("`@("`@("!F;W(H;7D@)&D@/2`Q_.R1I(#P@)&QA<W0[)&DK*RE["B`@("`@("`@"6UY($!T;7`@/2!S<&QI="@O7'0O+"1G<F]U<'-;)&E=*3L*_("`@("`@("`);7D@)&YE=W9A;'5E.PH@("`@("`@(`EM>2`D;G5M=&UP(#T@<V-A;&%R($!T;7`["@D)"69O_<BAM>2`D:B`](#`[)&H@/"`D;G5M=&UP.R1J*RLI>PH)"0D)(R,C8VAA;F=E(&AE<F4@9F]R('1O;6%T;PH)_"0D)(VEF*"1J(#P@*"1N=6UT;7`M,2DI>PH)"0D):68H)&H@/"`H)&YU;71M<"DI>PH)"0D)"6EF*"$D;F5W_=F%L=64I>PH)"0D)"0DD;F5W=F%L=64@/2`H)'1M<%LD:ETK)&ES<RD["@D)"0D)?65L<V5["@D)"0D)"21N_97=V86QU92`N/2`B7'0B("X@*"1T;7!;)&I=*R1I<W,I.PH)"0D)"7T*"0D)"7UE;'-E>PH)"0D)"21N97=V_86QU92`N/2`B7'0B("X@*"1T;7!;)&I=*3L*"0D)"7T*"0D)?0H)"0DD9W)O=7!S6R1I72`]("1N97=V86QU_93L*"0E]"B`@("`@("`@;7D@)&%C8V5S<VEO;B`]("1C.PH@("`@("`@("1A8V-E<W-I;VX]?G,O7'0O7%\O_9SL*("`@("`@("!M>2`D;F%M97,@/2`B+2(["B`@("`@("`@9F]R96%C:"!M>2`D;&]C*&ME>7,@)7L@)&%N_;F][)&EC:')]('TI>PH@("`@("`@(`EM>2`H)'-T87)T+"1E;F0I(#T@<W!L:70H+UQT+RPD;&]C*3L*("`@_("`@("`);F5X="!I9B@D96YD(#P@)&ES<R!\?"`D<W1A<G0@/B`D:7-S*3L*("`@("`@("`))&YA;65S("X]_("(L("(@+B`D86YN;WLD:6-H<GU[)&QO8WT["B`@("`@("`@?0H@("`@("`@("1N86UE<SU^<R]<+5PL("\O_.PH@("`@("`@(`H@("`@("`@(`H)"2,C(T-H96-K(%<@8V]N;F5C=&EV:71Y"B`@("`@("`@:68H)&EC870@_97$@(E<B*7L*("`@("`@("`);7D@)&1I<V-O;FYE8W0@/2`P.PH@("`@("`@(`EF;W(H;7D@)&L@/2`Q.R1K_(#P@*"1L87-T+3$I.R1K*RLI>PH@("`@("`@(`D);F5X="!I9B@A)&=R;W5P<ULD:UTI.PH@("`@("`@(`D)_;7D@*"1I;G1R;VXQ<V8L)&EN=')O;C%E9BPD:6YT<F]N,G-F+"1I;G1R;VXR968L)'1E<W,Q+"1T965E,2PD_96%N;F\Q*2`]('-P;&ET*"]<="\L)&=R;W5P<ULD:UTI.PH@("`@("`@(`D);7D@*"1I;G1R;VXQ<VPL)&EN_=')O;C%E;"PD:6YT<F]N,G-L+"1I;G1R;VXR96PL)'1E<W,R+"1T965E,BPD96%N;F\R*2`]('-P;&ET*"]<_="\L)&=R;W5P<ULD:RLQ72D["B`@("`@("`@"0DD9&ES8V]N;F5C="`](#$@:68H)&EN=')O;C)S9B`A/2`D_:6YT<F]N,7-L('Q\("1I;G1R;VXR968@(3T@)&EN=')O;C%E;"D["B`@("`@("`@"0EL87-T(&EF*"1I;G1R_;VXR<V8@(3T@)&EN=')O;C%S;"!\?"`D:6YT<F]N,F5F("$]("1I;G1R;VXQ96PI.PH)"0E]"@D)"6UY("@D_:6YT<F]N,7-F+"1I;G1R;VXQ968L)&EN=')O;C)S9BPD:6YT<F]N,F5F+"1T97-S,2PD=&5E93$L)&5A;FYO_,2D@/2!S<&QI="@O7'0O+"1G<F]U<'-;,5TI.PH@("`@("`@(`EM>2`H)&EN=')O;C%S;"PD:6YT<F]N,65L_+"1I;G1R;VXR<VPL)&EN=')O;C)E;"PD=&5S<S(L)'1E964R+"1E86YN;S(I(#T@<W!L:70H+UQT+RPD9W)O_=7!S6R1L87-T+3%=*3L*"B`@("`@("`@"21D:7-C;VYN96-T(#T@,2!I9B@D:7-S("$]("1I;G1R;VXQ<V8@_?'P@)&EE92`A/2`D:6YT<F]N,F5L*3L*"0D);F5X="!I9B@D9&ES8V]N;F5C="`]/2`Q*3L*("`@(`E]"B`@_("`)"B`@("`)(R,C(R-$0B!O=71P=70C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C"B`@_("`@("`@9F]R*&UY("1I(#T@,3L@)&D@/"!S8V%L87(@0&=R;W5P<SL@)&DK*RE["B`@("`@("`@"6UY("@D_:6YT<F]N,7-F+"1I;G1R;VXQ968L)&EN=')O;C)S9BPD:6YT<F]N,F5F+"1T97-S+"1T965E+"1E86YN;RD@_/2!S<&QI="@O7'0O+"1G<F]U<'-;)&E=*3L*("`@("`@("`))&5A;FYO(#T@)&5X;VYA;FYO>R1I8VAR?7LB_)'1E<W-<="1T965E(GU[)'1I9'T["B`@("`@("`@"21E86YN;R`]("(M(B!I9B@D96%N;F\@97$@(BTQ(BD[_"B`@("`@("`@"21E86YN;R`](").340B(&EF*"1E86YN;R!E<2`B,2(I.PH@("`@("`@(`DD96%N;F\@/2`B_3F]V96PB(&EF*"1E86YN;R!E<2`B,B(I.PH@("`@("`@(`EI9B@D97AO;F%N;F][)&EC:')]>R(D=&5S<UQT_)'1E964B?7LD=&ED?2!E<2`B(BE["B`@("`@("`@"0DC<')I;G0@(B1A8V-E<W-I;VX@6R1I8VAR.B1T97-S_+21T965E72!O9B`D=&ED(&AA<R!N;R!E>&]N('1Y<&5<;B(["B`@("`@("`@"0DD96%N;F\@/2`B+2(["B`@_("`@("`@"7T*("`@("`@("`))&1B;W5T<'5T("X]("(D:6-H<EQT)&EN=')O;C%S9EQT)&EN=')O;C%E9EQT_)&EN=')O;C)S9EQT)&EN=')O;C)E9EQT)'1E<W-<="1T965E7'0D96%N;F]<="1I<W-<="1I965<="1A8V-E_<W-I;VXB("X@(E\B("X@(B1I7'0D;F%M97-<;B(["@D)?0H@("`@("`@(`H@("`@("`@(",C(R-"140@;W5T_<'5T(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,*("`@("`@("`*("`@("`@("!M>2`H_)&$L)&(I(#T@*"(B+"(B*3L*("`@("`@("!F;W(H;7D@)&D@/2`Q.R`D:2`\('-C86QA<B!`9W)O=7!S.R`D_:2LK*7L*("`@("`@("!I9B@D:6-A="!E<2`B4R(I>PH@("`@("`@(`DD8F5D;W5T<'5T("X](")<<B1I8VAR_7'0D:7-S7'0D:65E7'0D86-C97-S:6]N7'0P7'0K7'0D:7-S7'0D:65E7'0R-34L,"PP7'0B("X@*"1L87-T_*3L*"0D);7D@0'1M<"`]('-P;&ET*"]<="\L)&=R;W5P<ULD:5TI.PH)"0EI9B@D=&UP6S!=(#T]("1T;7!;_,5TI>PH)"0D))&$@/2`H)'1M<%LS72TD=&UP6S)=*S$I("X@(BPB("X@(C$B.PH)"0D))&(@/2`B,"(@+B`B_+"(@+B`H)&EE92TD:7-S*S$I.PH)"0E]96QS97L*"0D)"21A(#T@(C$L(B`N("@D=&UP6S%=+21T;7!;,%TK_,2D["@D)"0DD8B`]("(P+"(@+B`H)'1M<%LP72TD:7-S*S$I.PH)"0E]"@D)?0H)"6EF*"1I8V%T(&5Q(")2_(BE["@D)"6UY($!T;7`@/2!S<&QI="@O7'0O+"1G<F]U<'-;)&E=*3L*"0D))&)E9&]U='!U="`N/2`B7'(D_:6-H<EQT)&ES<UQT(B`N("1T;7!;,UT@+B`B7'0D86-C97-S:6]N7'0P7'0K7'0D:7-S7'0B("X@)'1M<%LS_72`N(")<=#(U-2PP+#!<=#(B.PH)"0EI9B@D=&UP6S)=(#P@)&ES<RE["@D)"0DD82`]("@D=&UP6S-=+21T_;7!;,ETK,2D@+B`B+#`B.PH)"0D))&(@/2`B,"PB("X@*"1I<W,M)'1M<%LR72D["@D)"7UE;'-E>PH)"0D)_)&$@/2`B,"PB("X@*"1T;7!;,UTM)'1M<%LR72LQ*3L*"0D)"21B(#T@(C`L(B`N("@D=&UP6S)=+21I<W,I_.PH)"0E]"@D)?0H)"7T*"0D*"0EI9B@D:6-A="!E<2`B5R(I>PH)"0DD8B`]("(P(CL*"0D))&)E9&]U='!U_="`N/2`B7'(D:6-H<EQT)&ES<UQT)&EE95QT)&%C8V5S<VEO;EQT,%QT*UQT)&ES<UQT)&EE95QT,C4U+#`L_,%QT(B`N("@D;&%S="D["@D)"69O<BAM>2`D:2`](#$[)&D@/"`D;&%S=#LD:2LK*7L*"0D)"6UY($!T;7`@_/2!S<&QI="@O7'0O+"1G<F]U<'-;)&E=*3L*"0D)"21A("X]("(L(B`N("@D=&UP6S%=+21T;7!;,%TK,2D[_"@D)"0DD82`N/2`B+"(@+B`H)'1M<%LS72TD=&UP6S)=*S$I(&EF*"1I(#T]("@D;&%S="TQ*2D["@D)"0DD_8B`N/2`B+"(@+B`H)'1M<%LR72TD:7-S*S$I(&EF*"1I(#P@)&QA<W0I.PH)"0E]"@D)"21A/7YS+UPL+R\[_"@D)?0H)"21B961O=71P=70@+CT@(EQT(B`N("1A("X@(EQT(B`N("1B.PH)"0H)?0H);7D@)&-C(#T@<V-A_;&%R(&ME>7,@)6-O;&QE8W1I;VX["@EU;F1E9B`E:6YP=70["@EU;F1E9B`E8V]L;&5C=&EO;CL*"6EF*"$D_8F5D;W5T<'5T*7L*"7UE;'-E>PH)"21B961[)&ED?2`]("1B961O=71P=70["@D))&1B>R1I9'T@/2`D9&)O_=71P=70["@E]"@H);7D@)'-T;W!T:6UE>"`]('1I;64["B`@("!M>2`D<V5C;VYD<R`]('-P<FEN=&8H(B4N_-&8B+"@D<W1O<'1I;65X+21S=&%R='1I;65X*2D["B`@("`*"7)E='5R;B`D<V5C;VYD<SL*?0H*"@HC(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C"B,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,*(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(PHC(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C"B,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C_(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C=(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,C(R,};

print $@;