(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 32) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 64) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00e\00s\00o\00l\00v\00e\00-\00b\00i\00n\00a\00r\00y\00.\00t\00s")
 (data (i32.const 120) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 144) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002")
 (data (i32.const 217) "\10\00\00\01")
 (data (i32.const 229) "\10\00\00\00\00\00\00\00\a0\f6?")
 (data (i32.const 249) "\c8\b9\f2\82,\d6\bf\80V7($\b4\fa<\00\00\00\00\00\80\f6?")
 (data (i32.const 281) "\08X\bf\bd\d1\d5\bf \f7\e0\d8\08\a5\1c\bd\00\00\00\00\00`\f6?")
 (data (i32.const 313) "XE\17wv\d5\bfmP\b6\d5\a4b#\bd\00\00\00\00\00@\f6?")
 (data (i32.const 345) "\f8-\87\ad\1a\d5\bf\d5g\b0\9e\e4\84\e6\bc\00\00\00\00\00 \f6?")
 (data (i32.const 377) "xw\95_\be\d4\bf\e0>)\93i\1b\04\bd\00\00\00\00\00\00\f6?")
 (data (i32.const 409) "`\1c\c2\8ba\d4\bf\cc\84LH/\d8\13=\00\00\00\00\00\e0\f5?")
 (data (i32.const 441) "\a8\86\860\04\d4\bf:\0b\82\ed\f3B\dc<\00\00\00\00\00\c0\f5?")
 (data (i32.const 473) "HiUL\a6\d3\bf`\94Q\86\c6\b1 =\00\00\00\00\00\a0\f5?")
 (data (i32.const 505) "\80\98\9a\ddG\d3\bf\92\80\c5\d4MY%=\00\00\00\00\00\80\f5?")
 (data (i32.const 537) " \e1\ba\e2\e8\d2\bf\d8+\b7\99\1e{&=\00\00\00\00\00`\f5?")
 (data (i32.const 569) "\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00`\f5?")
 (data (i32.const 601) "\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00@\f5?")
 (data (i32.const 633) "x\cf\fbA)\d2\bfv\daS($Z\16\bd\00\00\00\00\00 \f5?")
 (data (i32.const 665) "\98i\c1\98\c8\d1\bf\04T\e7h\bc\af\1f\bd\00\00\00\00\00\00\f5?")
 (data (i32.const 697) "\a8\ab\ab\\g\d1\bf\f0\a8\823\c6\1f\1f=\00\00\00\00\00\e0\f4?")
 (data (i32.const 729) "H\ae\f9\8b\05\d1\bffZ\05\fd\c4\a8&\bd\00\00\00\00\00\c0\f4?")
 (data (i32.const 761) "\90s\e2$\a3\d0\bf\0e\03\f4~\eek\0c\bd\00\00\00\00\00\a0\f4?")
 (data (i32.const 793) "\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\a0\f4?")
 (data (i32.const 825) "\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\80\f4?")
 (data (i32.const 857) "@^m\18\b9\cf\bf\87<\99\ab*W\0d=\00\00\00\00\00`\f4?")
 (data (i32.const 889) "`\dc\cb\ad\f0\ce\bf$\af\86\9c\b7&+=\00\00\00\00\00@\f4?")
 (data (i32.const 921) "\f0*n\07\'\ce\bf\10\ff?TO/\17\bd\00\00\00\00\00 \f4?")
 (data (i32.const 953) "\c0Ok!\\\cd\bf\1bh\ca\bb\91\ba!=\00\00\00\00\00\00\f4?")
 (data (i32.const 985) "\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\00\f4?")
 (data (i32.const 1017) "\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\e0\f3?")
 (data (i32.const 1049) "\90-t\86\c2\cb\bf\8f\b7\8b1\b0N\19=\00\00\00\00\00\c0\f3?")
 (data (i32.const 1081) "\c0\80N\c9\f3\ca\bff\90\cd?cN\ba<\00\00\00\00\00\a0\f3?")
 (data (i32.const 1113) "\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\a0\f3?")
 (data (i32.const 1145) "\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\80\f3?")
 (data (i32.const 1177) "P\f4\9cZR\c9\bf\e3\d4\c1\04\d9\d1*\bd\00\00\00\00\00`\f3?")
 (data (i32.const 1209) "\d0 e\a0\7f\c8\bf\t\fa\db\7f\bf\bd+=\00\00\00\00\00@\f3?")
 (data (i32.const 1241) "\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00@\f3?")
 (data (i32.const 1273) "\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00 \f3?")
 (data (i32.const 1305) "\d0\19\e7\0f\d6\c6\bff\e2\b2\a3j\e4\10\bd\00\00\00\00\00\00\f3?")
 (data (i32.const 1337) "\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\00\f3?")
 (data (i32.const 1369) "\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\e0\f2?")
 (data (i32.const 1401) "\b0\a1\e3\e5&\c5\bf\8f[\07\90\8b\de \bd\00\00\00\00\00\c0\f2?")
 (data (i32.const 1433) "\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\c0\f2?")
 (data (i32.const 1465) "\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\a0\f2?")
 (data (i32.const 1497) "\90\1e \fcq\c3\bf:T\'M\86x\f1<\00\00\00\00\00\80\f2?")
 (data (i32.const 1529) "\f0\1f\f8R\95\c2\bf\08\c4q\170\8d$\bd\00\00\00\00\00`\f2?")
 (data (i32.const 1561) "`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00`\f2?")
 (data (i32.const 1593) "`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00@\f2?")
 (data (i32.const 1625) "\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00@\f2?")
 (data (i32.const 1657) "\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00 \f2?")
 (data (i32.const 1689) "\e0\db1\91\ec\bf\bf\f23\a3\\Tu%\bd\00\00\00\00\00\00\f2?")
 (data (i32.const 1722) "+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\00\f2?")
 (data (i32.const 1754) "+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\e0\f1?")
 (data (i32.const 1785) "\c0[\8fT^\bc\bf\06\be_XW\0c\1d\bd\00\00\00\00\00\c0\f1?")
 (data (i32.const 1817) "\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\c0\f1?")
 (data (i32.const 1849) "\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\a0\f1?")
 (data (i32.const 1881) "\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\a0\f1?")
 (data (i32.const 1913) "\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\80\f1?")
 (data (i32.const 1945) "`\e5\8a\d2\f0\b6\bf\das3\c97\97&\bd\00\00\00\00\00`\f1?")
 (data (i32.const 1977) " \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00`\f1?")
 (data (i32.const 2009) " \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00@\f1?")
 (data (i32.const 2041) "\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00@\f1?")
 (data (i32.const 2073) "\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00 \f1?")
 (data (i32.const 2105) "\80\a3\ee6e\b1\bf\t\a3\8fv^|\14=\00\00\00\00\00\00\f1?")
 (data (i32.const 2137) "\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\00\f1?")
 (data (i32.const 2169) "\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\e0\f0?")
 (data (i32.const 2201) "\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\e0\f0?")
 (data (i32.const 2233) "\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\c0\f0?")
 (data (i32.const 2265) "\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\c0\f0?")
 (data (i32.const 2297) "\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\a0\f0?")
 (data (i32.const 2329) "\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\a0\f0?")
 (data (i32.const 2361) "\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\80\f0?")
 (data (i32.const 2394) "x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00\80\f0?")
 (data (i32.const 2426) "x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00`\f0?")
 (data (i32.const 2457) "\80\d5\07\1b\b9\97\bf9\a6\fa\93T\8d(\bd\00\00\00\00\00@\f0?")
 (data (i32.const 2490) "\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00@\f0?")
 (data (i32.const 2522) "\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00 \f0?")
 (data (i32.const 2554) "\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00 \f0?")
 (data (i32.const 2586) "\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00\00\f0?")
 (data (i32.const 2638) "\f0?")
 (data (i32.const 2669) "\c0\ef?")
 (data (i32.const 2682) "\89u\15\10\80?\e8+\9d\99k\c7\10\bd\00\00\00\00\00\80\ef?")
 (data (i32.const 2713) "\80\93XV \90?\d2\f7\e2\06[\dc#\bd\00\00\00\00\00@\ef?")
 (data (i32.const 2746) "\c9(%I\98?4\0cZ2\ba\a0*\bd\00\00\00\00\00\00\ef?")
 (data (i32.const 2777) "@\e7\89]A\a0?S\d7\f1\\\c0\11\01=\00\00\00\00\00\c0\ee?")
 (data (i32.const 2810) ".\d4\aef\a4?(\fd\bdus\16,\bd\00\00\00\00\00\80\ee?")
 (data (i32.const 2841) "\c0\9f\14\aa\94\a8?}&Z\d0\95y\19\bd\00\00\00\00\00@\ee?")
 (data (i32.const 2873) "\c0\dd\cds\cb\ac?\07(\d8G\f2h\1a\bd\00\00\00\00\00 \ee?")
 (data (i32.const 2905) "\c0\06\c01\ea\ae?{;\c9O>\11\0e\bd\00\00\00\00\00\e0\ed?")
 (data (i32.const 2937) "`F\d1;\97\b1?\9b\9e\0dV]2%\bd\00\00\00\00\00\a0\ed?")
 (data (i32.const 2969) "\e0\d1\a7\f5\bd\b3?\d7N\db\a5^\c8,=\00\00\00\00\00`\ed?")
 (data (i32.const 3001) "\a0\97MZ\e9\b5?\1e\1d]<\06i,\bd\00\00\00\00\00@\ed?")
 (data (i32.const 3033) "\c0\ea\n\d3\00\b7?2\ed\9d\a9\8d\1e\ec<\00\00\00\00\00\00\ed?")
 (data (i32.const 3065) "@Y]^3\b9?\daG\bd:\\\11#=\00\00\00\00\00\c0\ec?")
 (data (i32.const 3097) "`\ad\8d\c8j\bb?\e5h\f7+\80\90\13\bd\00\00\00\00\00\a0\ec?")
 (data (i32.const 3129) "@\bc\01X\88\bc?\d3\acZ\c6\d1F&=\00\00\00\00\00`\ec?")
 (data (i32.const 3161) " \n\839\c7\be?\e0E\e6\afh\c0-\bd\00\00\00\00\00@\ec?")
 (data (i32.const 3193) "\e0\db9\91\e8\bf?\fd\n\a1O\d64%\bd\00\00\00\00\00\00\ec?")
 (data (i32.const 3225) "\e0\'\82\8e\17\c1?\f2\07-\cex\ef!=\00\00\00\00\00\e0\eb?")
 (data (i32.const 3257) "\f0#~+\aa\c1?4\998D\8e\a7,=\00\00\00\00\00\a0\eb?")
 (data (i32.const 3289) "\80\86\0ca\d1\c2?\a1\b4\81\cbl\9d\03=\00\00\00\00\00\80\eb?")
 (data (i32.const 3321) "\90\15\b0\fce\c3?\89rK#\a8/\c6<\00\00\00\00\00@\eb?")
 (data (i32.const 3353) "\b03\83=\91\c4?x\b6\fdTy\83%=\00\00\00\00\00 \eb?")
 (data (i32.const 3385) "\b0\a1\e4\e5\'\c5?\c7}i\e5\e83&=\00\00\00\00\00\e0\ea?")
 (data (i32.const 3417) "\10\8c\beNW\c6?x.<,\8b\cf\19=\00\00\00\00\00\c0\ea?")
 (data (i32.const 3449) "pu\8b\12\f0\c6?\e1!\9c\e5\8d\11%\bd\00\00\00\00\00\a0\ea?")
 (data (i32.const 3481) "PD\85\8d\89\c7?\05C\91p\10f\1c\bd\00\00\00\00\00`\ea?")
 (data (i32.const 3514) "9\eb\af\be\c8?\d1,\e9\aaT=\07\bd\00\00\00\00\00@\ea?")
 (data (i32.const 3546) "\f7\dcZZ\c9?o\ff\a0X(\f2\07=\00\00\00\00\00\00\ea?")
 (data (i32.const 3577) "\e0\8a<\ed\93\ca?i!VPCr(\bd\00\00\00\00\00\e0\e9?")
 (data (i32.const 3609) "\d0[W\d81\cb?\aa\e1\acN\8d5\0c\bd\00\00\00\00\00\c0\e9?")
 (data (i32.const 3641) "\e0;8\87\d0\cb?\b6\12TY\c4K-\bd\00\00\00\00\00\a0\e9?")
 (data (i32.const 3673) "\10\f0\c6\fbo\cc?\d2+\96\c5r\ec\f1\bc\00\00\00\00\00`\e9?")
 (data (i32.const 3705) "\90\d4\b0=\b1\cd?5\b0\15\f7*\ff*\bd\00\00\00\00\00@\e9?")
 (data (i32.const 3737) "\10\e7\ff\0eS\ce?0\f4A`\'\12\c2<\00\00\00\00\00 \e9?")
 (data (i32.const 3770) "\dd\e4\ad\f5\ce?\11\8e\bbe\15!\ca\bc\00\00\00\00\00\00\e9?")
 (data (i32.const 3801) "\b0\b3l\1c\99\cf?0\df\0c\ca\ec\cb\1b=\00\00\00\00\00\c0\e8?")
 (data (i32.const 3833) "XM`8q\d0?\91N\ed\16\db\9c\f8<\00\00\00\00\00\a0\e8?")
 (data (i32.const 3865) "`ag-\c4\d0?\e9\ea<\16\8b\18\'=\00\00\00\00\00\80\e8?")
 (data (i32.const 3897) "\e8\'\82\8e\17\d1?\1c\f0\a5c\0e!,\bd\00\00\00\00\00`\e8?")
 (data (i32.const 3929) "\f8\ac\cb\\k\d1?\81\16\a5\f7\cd\9a+=\00\00\00\00\00@\e8?")
 (data (i32.const 3961) "hZc\99\bf\d1?\b7\bdGQ\ed\a6,=\00\00\00\00\00 \e8?")
 (data (i32.const 3993) "\b8\0emE\14\d2?\ea\baF\ba\de\87\n=\00\00\00\00\00\e0\e7?")
 (data (i32.const 4025) "\90\dc|\f0\be\d2?\f4\04PJ\fa\9c*=\00\00\00\00\00\c0\e7?")
 (data (i32.const 4057) "`\d3\e1\f1\14\d3?\b8<!\d3z\e2(\bd\00\00\00\00\00\a0\e7?")
 (data (i32.const 4089) "\10\bevgk\d3?\c8w\f1\b0\cdn\11=\00\00\00\00\00\80\e7?")
 (data (i32.const 4121) "03wR\c2\d3?\\\bd\06\b6T;\18=\00\00\00\00\00`\e7?")
 (data (i32.const 4153) "\e8\d5#\b4\19\d4?\9d\e0\90\ec6\e4\08=\00\00\00\00\00@\e7?")
 (data (i32.const 4185) "\c8q\c2\8dq\d4?u\d6g\t\ce\'/\bd\00\00\00\00\00 \e7?")
 (data (i32.const 4217) "0\17\9e\e0\c9\d4?\a4\d8\n\1b\89 .\bd\00\00\00\00\00\00\e7?")
 (data (i32.const 4249) "\a08\07\ae\"\d5?Y\c7d\81p\be.=\00\00\00\00\00\e0\e6?")
 (data (i32.const 4281) "\d0\c8S\f7{\d5?\ef@]\ee\ed\ad\1f=\00\00\00\00\00\c0\e6?")
 (data (i32.const 4313) "`Y\df\bd\d5\d5?\dce\a4\08*\0b\n\bd")
 (data (i32.const 4328) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\e8\00\00\00\e8\00\00\00\00\10\00\00\00\02")
 (data (i32.const 4361) "\08\00\00\01")
 (data (i32.const 4373) "\08")
 (data (i32.const 4390) "\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\\\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\\\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\"PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\tm\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\n\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\n\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\"4\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\n\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\tf\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<\'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\0d\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\\{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da\'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\tT\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\t\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\"U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\"^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\t^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T\'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\t\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\"CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?\'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\n\e15\d2m<##\e3\19c\c8\ee?c\"b\"\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\n\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\t\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\\2\e3\8e<z\d0\ff_\ab \ef?\acY\t\d1\8f\e0\84<K\d1W.\f1\'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\0d\90\bc\f2\89\0d\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\"@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\0dG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<\'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?")
 (data (i32.const 6424) "\10\00\00\00\01\00\00\00\04\00\00\00\10\00\00\00\18\11\00\00\18\11\00\00\00\08\00\00\00\01")
 (data (i32.const 6456) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 6480) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 6504) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 6544) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 6576) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 7288) "\10\00\00\00\01\00\00\00\04\00\00\00\10\00\00\00\c0\19\00\00\c0\19\00\00\b8\02\00\00W")
 (data (i32.const 7320) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 7512) "\10\00\00\00\01\00\00\00\05\00\00\00\10\00\00\00\a8\1c\00\00\a8\1c\00\00\ae\00\00\00W")
 (data (i32.const 7544) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 7600) "\10\00\00\00\01\00\00\00\06\00\00\00\10\00\00\00\88\1d\00\00\88\1d\00\00(\00\00\00\n")
 (data (i32.const 7636) "\01\00\00\00\01")
 (data (i32.const 7648) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 7696) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\004\00.\000")
 (data (i32.const 7720) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\004")
 (data (i32.const 7744) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\003")
 (data (i32.const 7768) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\001")
 (data (i32.const 7792) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00l\00t")
 (data (i32.const 7816) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00g\00t")
 (data (i32.const 7840) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00l\00e")
 (data (i32.const 7864) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00g\00e")
 (data (i32.const 7888) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00e\00q")
 (data (i32.const 7912) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00n\00e")
 (data (i32.const 7936) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00d\00d")
 (data (i32.const 7960) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00u\00b")
 (data (i32.const 7984) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00m\00u\00l")
 (data (i32.const 8008) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00d\00i\00v")
 (data (i32.const 8032) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00r\00e\00m")
 (data (i32.const 8056) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00p\00o\00w")
 (global $resolve-binary/a (mut i32) (i32.const 0))
 (global $resolve-binary/f (mut f64) (f64.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/util/math/log_tail (mut f64) (f64.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $resolve-binary/foo (mut i32) (i32.const 0))
 (global $resolve-binary/bar (mut i32) (i32.const 0))
 (global $resolve-binary/bar2 (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/number/Bool#toString (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 24
  i32.const 48
  local.get $0
  select
 )
 (func $~lib/string/String#get:length (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 3 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  loop $continue|1
   block $break|1
    local.get $2
    local.tee $3
    i32.const 1
    i32.sub
    local.set $2
    local.get $3
    i32.eqz
    br_if $break|1
    local.get $1
    i32.load16_u
    local.tee $3
    local.get $0
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $4
     local.get $3
     i32.sub
     return
    else
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $continue|1
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $~lib/util/number/decimalCount32 (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 2
  local.get $0
  i32.const 10
  i32.lt_u
  select
  i32.const 3
  i32.const 4
  i32.const 5
  local.get $0
  i32.const 10000
  i32.lt_u
  select
  local.get $0
  i32.const 1000
  i32.lt_u
  select
  local.get $0
  i32.const 100
  i32.lt_u
  select
  i32.const 6
  i32.const 7
  local.get $0
  i32.const 1000000
  i32.lt_u
  select
  i32.const 8
  i32.const 9
  i32.const 10
  local.get $0
  i32.const 1000000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000000
  i32.lt_u
  select
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/rt/stub/maybeGrowMemory (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $2
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $4
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $4
  i32.store
  local.get $2
  i32.const -1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/util/number/utoa_simple<u32> (; 8 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $continue|0
   local.get $1
   i32.const 10
   i32.rem_u
   local.set $3
   local.get $1
   i32.const 10
   i32.div_u
   local.set $1
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   br_if $continue|0
  end
 )
 (func $~lib/util/number/itoa32 (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 160
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.tee $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.tee $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/util/math/pow_lut (; 10 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i64)
  (local $3 f64)
  (local $4 i64)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 52
  i64.shr_u
  local.tee $4
  i64.const 1
  i64.sub
  i64.const 2046
  i64.ge_u
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if
   local.get $2
   i64.const 1
   i64.shl
   i64.const 1
   i64.sub
   i64.const -9007199254740993
   i64.ge_u
   if
    local.get $0
    local.get $0
    f64.mul
    return
   end
   local.get $0
   f64.const 4503599627370496
   f64.mul
   i64.reinterpret_f64
   i64.const 9223372036854775807
   i64.and
   i64.const 234187180623265792
   i64.sub
   local.get $2
   i64.const 63
   i64.shr_u
   i64.const 0
   i64.ne
   if (result i64)
    local.get $4
    i64.const 2047
    i64.and
    local.set $4
    local.get $2
    i64.const 9223372036854775807
    i64.and
   else
    local.get $2
   end
   local.get $4
   i64.eqz
   select
   local.set $2
  end
  local.get $2
  local.get $2
  i64.const 4604531861337669632
  i64.sub
  local.tee $2
  i64.const -4503599627370496
  i64.and
  i64.sub
  local.tee $4
  i64.const 2147483648
  i64.add
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.set $0
  i32.const 4348
  i32.load
  local.get $2
  i64.const 45
  i64.shr_u
  i64.const 127
  i64.and
  i32.wrap_i64
  i32.const 5
  i32.shl
  i32.add
  local.tee $5
  f64.load
  local.set $1
  local.get $2
  i64.const 52
  i64.shr_s
  f64.convert_i64_s
  local.tee $7
  f64.const 0.6931471805598903
  f64.mul
  local.get $5
  f64.load offset=16
  f64.add
  local.tee $8
  local.get $0
  local.get $1
  f64.mul
  f64.const 1
  f64.sub
  local.tee $3
  local.get $4
  f64.reinterpret_i64
  local.get $0
  f64.sub
  local.get $1
  f64.mul
  local.tee $9
  f64.add
  local.tee $0
  f64.add
  local.tee $6
  local.get $3
  f64.const -0.5
  local.get $3
  f64.mul
  local.tee $10
  f64.mul
  local.tee $11
  f64.add
  local.set $1
  local.get $0
  local.get $0
  f64.const -0.5
  local.get $0
  f64.mul
  local.tee $12
  f64.mul
  local.tee $3
  f64.mul
  local.set $13
  local.get $1
  local.get $1
  local.get $7
  f64.const 5.497923018708371e-14
  f64.mul
  local.get $5
  f64.load offset=24
  f64.add
  local.get $8
  local.get $6
  f64.sub
  local.get $0
  f64.add
  f64.add
  local.get $9
  local.get $12
  local.get $10
  f64.add
  f64.mul
  f64.add
  local.get $6
  local.get $1
  f64.sub
  local.get $11
  f64.add
  f64.add
  local.get $13
  f64.const -0.6666666666666679
  local.get $0
  f64.const 0.5000000000000007
  f64.mul
  f64.add
  local.get $3
  f64.const 0.7999999995323976
  local.get $0
  f64.const -0.6666666663487739
  f64.mul
  f64.add
  local.get $3
  f64.const -1.142909628459501
  local.get $0
  f64.const 1.0000415263675542
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.tee $1
  f64.add
  local.tee $0
  f64.sub
  local.get $1
  f64.add
  global.set $~lib/util/math/log_tail
  block $~lib/util/math/exp_inline|inlined.0 (result f64)
   local.get $0
   local.get $0
   i64.reinterpret_f64
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.tee $0
   f64.sub
   global.get $~lib/util/math/log_tail
   f64.add
   local.set $1
   f64.const 0
   local.get $0
   f64.mul
   f64.const 2
   local.get $1
   f64.mul
   f64.add
   local.set $3
   f64.const 2
   local.get $0
   f64.mul
   local.tee $1
   i64.reinterpret_f64
   local.tee $2
   i64.const 52
   i64.shr_u
   i32.wrap_i64
   i32.const 2047
   i32.and
   local.tee $5
   i32.const 969
   i32.sub
   i32.const 63
   i32.ge_u
   if
    f64.const 1
    local.get $5
    i32.const 969
    i32.sub
    i32.const -2147483648
    i32.ge_u
    br_if $~lib/util/math/exp_inline|inlined.0
    drop
    f64.const 0
    f64.const inf
    local.get $2
    i64.const 63
    i64.shr_u
    i64.const 0
    i64.ne
    select
    local.get $5
    i32.const 1033
    i32.ge_u
    br_if $~lib/util/math/exp_inline|inlined.0
    drop
    i32.const 0
    local.set $5
   end
   f64.const 184.6649652337873
   local.get $1
   f64.mul
   f64.const 6755399441055744
   f64.add
   local.tee $6
   f64.const 6755399441055744
   f64.sub
   local.set $0
   i32.const 6444
   i32.load
   local.get $6
   i64.reinterpret_f64
   local.tee $4
   i64.const 127
   i64.and
   i64.const 1
   i64.shl
   i32.wrap_i64
   i32.const 3
   i32.shl
   i32.add
   local.tee $14
   i64.load offset=8
   local.get $4
   i64.const 0
   i64.add
   i64.const 45
   i64.shl
   i64.add
   local.set $2
   local.get $1
   local.get $0
   f64.const -0.005415212348111709
   f64.mul
   f64.add
   local.get $0
   f64.const -1.2864023111638346e-14
   f64.mul
   f64.add
   local.get $3
   f64.add
   local.tee $0
   local.get $0
   f64.mul
   local.set $1
   local.get $14
   i64.load
   f64.reinterpret_i64
   local.get $0
   f64.add
   local.get $1
   f64.const 0.49999999999996786
   local.get $0
   f64.const 0.16666666666665886
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $1
   local.get $1
   f64.mul
   f64.const 0.0416666808410674
   local.get $0
   f64.const 0.008333335853059549
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $1
   local.get $5
   i32.eqz
   if
    block $~lib/util/math/specialcase|inlined.0 (result f64)
     local.get $4
     i64.const 2147483648
     i64.and
     i64.eqz
     if
      f64.const 5486124068793688683255936e279
      local.get $2
      i64.const 4544132024016830464
      i64.sub
      f64.reinterpret_i64
      local.tee $0
      local.get $0
      local.get $1
      f64.mul
      f64.add
      f64.mul
      br $~lib/util/math/specialcase|inlined.0
     end
     local.get $2
     i64.const 4602678819172646912
     i64.add
     local.tee $2
     f64.reinterpret_i64
     local.tee $3
     local.get $3
     local.get $1
     f64.mul
     f64.add
     local.tee $0
     f64.abs
     f64.const 1
     f64.lt
     if
      f64.const 1
      local.get $0
      f64.copysign
      local.tee $6
      local.get $0
      f64.add
      local.tee $7
      local.get $6
      local.get $7
      f64.sub
      local.get $0
      f64.add
      local.get $3
      local.get $0
      f64.sub
      local.get $3
      local.get $1
      f64.mul
      f64.add
      f64.add
      f64.add
      local.get $6
      f64.sub
      local.tee $0
      f64.const 0
      f64.eq
      if
       local.get $2
       i64.const -9223372036854775808
       i64.and
       f64.reinterpret_i64
       local.set $0
      end
     end
     local.get $0
     f64.const 2.2250738585072014e-308
     f64.mul
    end
    br $~lib/util/math/exp_inline|inlined.0
   end
   local.get $2
   f64.reinterpret_i64
   local.tee $0
   local.get $0
   local.get $1
   f64.mul
   f64.add
  end
 )
 (func $~lib/util/number/genDigits (; 11 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  local.get $3
  local.get $1
  i64.sub
  local.set $9
  i64.const 1
  i32.const 0
  local.get $4
  i32.sub
  local.tee $10
  i64.extend_i32_s
  i64.shl
  local.tee $11
  i64.const 1
  i64.sub
  local.tee $14
  local.get $3
  i64.and
  local.set $12
  local.get $3
  local.get $10
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.tee $7
  call $~lib/util/number/decimalCount32
  local.set $4
  i32.const 7620
  i32.load
  local.set $13
  loop $continue|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
    block $break|1
     block $case10|1
      block $case9|1
       block $case8|1
        block $case7|1
         block $case6|1
          block $case5|1
           block $case4|1
            block $case3|1
             block $case2|1
              block $case1|1
               local.get $4
               i32.const 10
               i32.ne
               if
                local.get $4
                i32.const 9
                i32.eq
                br_if $case1|1
                block $tablify|0
                 local.get $4
                 i32.const 1
                 i32.sub
                 br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $tablify|0
                end
                br $case10|1
               end
               local.get $7
               i32.const 1000000000
               i32.div_u
               local.set $8
               local.get $7
               i32.const 1000000000
               i32.rem_u
               local.set $7
               br $break|1
              end
              local.get $7
              i32.const 100000000
              i32.div_u
              local.set $8
              local.get $7
              i32.const 100000000
              i32.rem_u
              local.set $7
              br $break|1
             end
             local.get $7
             i32.const 10000000
             i32.div_u
             local.set $8
             local.get $7
             i32.const 10000000
             i32.rem_u
             local.set $7
             br $break|1
            end
            local.get $7
            i32.const 1000000
            i32.div_u
            local.set $8
            local.get $7
            i32.const 1000000
            i32.rem_u
            local.set $7
            br $break|1
           end
           local.get $7
           i32.const 100000
           i32.div_u
           local.set $8
           local.get $7
           i32.const 100000
           i32.rem_u
           local.set $7
           br $break|1
          end
          local.get $7
          i32.const 10000
          i32.div_u
          local.set $8
          local.get $7
          i32.const 10000
          i32.rem_u
          local.set $7
          br $break|1
         end
         local.get $7
         i32.const 1000
         i32.div_u
         local.set $8
         local.get $7
         i32.const 1000
         i32.rem_u
         local.set $7
         br $break|1
        end
        local.get $7
        i32.const 100
        i32.div_u
        local.set $8
        local.get $7
        i32.const 100
        i32.rem_u
        local.set $7
        br $break|1
       end
       local.get $7
       i32.const 10
       i32.div_u
       local.set $8
       local.get $7
       i32.const 10
       i32.rem_u
       local.set $7
       br $break|1
      end
      local.get $7
      local.set $8
      i32.const 0
      local.set $7
      br $break|1
     end
     i32.const 0
     local.set $8
    end
    local.get $6
    local.get $8
    i32.or
    if
     local.get $6
     local.tee $2
     i32.const 1
     i32.add
     local.set $6
     local.get $2
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $8
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    i64.extend_i32_u
    local.get $10
    i64.extend_i32_s
    i64.shl
    local.get $12
    i64.add
    local.tee $1
    local.get $5
    i64.gt_u
    br_if $continue|0
    global.get $~lib/util/number/_K
    local.get $4
    i32.add
    global.set $~lib/util/number/_K
    local.get $4
    i32.const 2
    i32.shl
    local.get $13
    i32.add
    i64.load32_u
    local.get $10
    i64.extend_i32_s
    i64.shl
    local.set $3
    local.get $6
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.tee $2
    i32.load16_u
    local.set $4
    loop $continue|2
     i32.const 1
     local.get $9
     local.get $1
     i64.sub
     local.get $1
     local.get $3
     i64.add
     local.get $9
     i64.sub
     i64.gt_u
     local.get $1
     local.get $3
     i64.add
     local.get $9
     i64.lt_u
     select
     i32.const 0
     local.get $5
     local.get $1
     i64.sub
     local.get $3
     i64.ge_u
     i32.const 0
     local.get $1
     local.get $9
     i64.lt_u
     select
     select
     if
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      local.get $1
      local.get $3
      i64.add
      local.set $1
      br $continue|2
     end
    end
    local.get $2
    local.get $4
    i32.store16
    local.get $6
    return
   end
  end
  loop $continue|3 (result i32)
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $12
   i64.const 10
   i64.mul
   local.tee $3
   local.get $10
   i64.extend_i32_s
   i64.shr_u
   local.tee $1
   local.get $6
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $6
    local.tee $2
    i32.const 1
    i32.add
    local.set $6
    local.get $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $4
   i32.const 1
   i32.sub
   local.set $4
   local.get $3
   local.get $14
   i64.and
   local.tee $12
   local.get $5
   i64.ge_u
   br_if $continue|3
   global.get $~lib/util/number/_K
   local.get $4
   i32.add
   global.set $~lib/util/number/_K
   local.get $12
   local.set $1
   i32.const 0
   local.get $4
   i32.sub
   i32.const 2
   i32.shl
   local.get $13
   i32.add
   i64.load32_u
   local.get $9
   i64.mul
   local.set $3
   local.get $6
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.tee $2
   i32.load16_u
   local.set $4
   loop $continue|4
    i32.const 1
    local.get $3
    local.get $1
    i64.sub
    local.get $1
    local.get $11
    i64.add
    local.get $3
    i64.sub
    i64.gt_u
    local.get $1
    local.get $11
    i64.add
    local.get $3
    i64.lt_u
    select
    i32.const 0
    local.get $5
    local.get $1
    i64.sub
    local.get $11
    i64.ge_u
    i32.const 0
    local.get $1
    local.get $3
    i64.lt_u
    select
    select
    if
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     local.get $1
     local.get $11
     i64.add
     local.set $1
     br $continue|4
    end
   end
   local.get $2
   local.get $4
   i32.store16
   local.get $6
  end
 )
 (func $~lib/memory/memory.copy (; 12 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/util/number/prettify (; 13 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 3145774
   i32.store
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $1
  local.get $2
  i32.add
  local.tee $3
  i32.le_s
  if (result i32)
   local.get $3
   i32.const 21
   i32.le_s
  else
   i32.const 0
  end
  if (result i32)
   loop $loop|0
    block $break|0
     local.get $1
     local.get $3
     i32.ge_s
     br_if $break|0
     local.get $1
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     i32.const 48
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $3
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 3145774
   i32.store
   local.get $3
   i32.const 2
   i32.add
  else
   local.get $3
   i32.const 21
   i32.le_s
   i32.const 0
   local.get $3
   i32.const 0
   i32.gt_s
   select
   if (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.tee $0
    i32.const 2
    i32.add
    local.get $0
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    i32.const 46
    i32.store16
    local.get $1
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 0
    i32.le_s
    i32.const 0
    i32.const -6
    local.get $3
    i32.lt_s
    select
    if (result i32)
     i32.const 2
     local.get $3
     i32.sub
     local.tee $3
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 3014704
     i32.store
     i32.const 2
     local.set $2
     loop $loop|1
      block $break|1
       local.get $2
       local.get $3
       i32.ge_s
       br_if $break|1
       local.get $2
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.const 48
       i32.store16
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $loop|1
      end
     end
     local.get $1
     local.get $3
     i32.add
    else
     local.get $1
     i32.const 1
     i32.eq
     if (result i32)
      local.get $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.tee $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $2
      i32.const 0
      i32.lt_s
      local.tee $1
      if
       i32.const 0
       local.get $2
       i32.sub
       local.set $2
      end
      local.get $2
      local.get $2
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $2
      call $~lib/util/number/utoa_simple<u32>
      local.get $0
      i32.const 45
      i32.const 43
      local.get $1
      select
      i32.store16
      local.get $2
      i32.const 2
      i32.add
     else
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $1
      i32.const 1
      i32.shl
      local.tee $2
      i32.const 2
      i32.sub
      call $~lib/memory/memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $2
      i32.add
      local.tee $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.tee $2
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $3
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa_simple<u32>
      local.get $2
      i32.const 45
      i32.const 43
      local.get $3
      select
      i32.store16
      local.get $0
      local.get $1
      i32.add
      i32.const 2
      i32.add
     end
    end
   end
  end
 )
 (func $~lib/util/number/dtoa_core (; 14 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  f64.const 0
  f64.lt
  local.tee $10
  if
   local.get $0
   i32.const 45
   i32.store16
   local.get $1
   f64.neg
   local.set $1
  end
  local.get $1
  i64.reinterpret_f64
  local.tee $2
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.tee $11
  i32.const 0
  i32.ne
  local.set $7
  local.get $2
  i64.const 4503599627370495
  i64.and
  local.get $7
  i64.extend_i32_u
  i64.const 52
  i64.shl
  i64.add
  local.tee $5
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $2
  i64.clz
  i32.wrap_i64
  local.set $3
  local.get $2
  local.get $3
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $11
  i32.const 1
  local.get $7
  select
  i32.const 1075
  i32.sub
  local.tee $7
  i32.const 1
  i32.sub
  local.get $3
  i32.sub
  local.set $3
  local.get $5
  local.get $5
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $11
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $7
  local.get $11
  i32.sub
  local.get $3
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $3
  global.set $~lib/util/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/util/number/_exp
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.tee $1
  i32.trunc_f64_s
  local.tee $3
  local.get $3
  f64.convert_i32_s
  local.get $1
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $3
  i32.const 3
  i32.shl
  i32.sub
  global.set $~lib/util/number/_K
  i32.const 7308
  i32.load
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  i32.const 7532
  i32.load
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  global.get $~lib/util/number/_frc_pow
  local.tee $6
  i64.const 4294967295
  i64.and
  local.set $2
  global.get $~lib/util/number/_frc_plus
  local.tee $8
  i64.const 4294967295
  i64.and
  local.tee $4
  local.get $6
  i64.const 32
  i64.shr_u
  local.tee $6
  i64.mul
  local.get $8
  i64.const 32
  i64.shr_u
  local.tee $8
  local.get $2
  i64.mul
  local.get $2
  local.get $4
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $4
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $6
  local.get $8
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  i64.const 1
  i64.sub
  local.tee $8
  local.get $6
  global.get $~lib/util/number/_frc_minus
  local.tee $4
  i64.const 4294967295
  i64.and
  local.tee $9
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  local.tee $4
  local.get $2
  i64.mul
  local.get $2
  local.get $9
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $9
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $4
  local.get $6
  i64.mul
  local.get $9
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  i64.const 1
  i64.add
  i64.sub
  local.set $4
  local.get $10
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.get $0
  local.get $6
  local.get $5
  local.get $5
  i64.clz
  i32.wrap_i64
  local.tee $0
  i64.extend_i32_s
  i64.shl
  local.tee $5
  i64.const 4294967295
  i64.and
  local.tee $9
  i64.mul
  local.get $5
  i64.const 32
  i64.shr_u
  local.tee $5
  local.get $2
  i64.mul
  local.get $2
  local.get $9
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $2
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $5
  local.get $6
  i64.mul
  local.get $2
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  global.get $~lib/util/number/_exp_pow
  local.tee $3
  local.get $7
  local.get $0
  i32.sub
  i32.add
  i32.const -64
  i32.sub
  local.get $8
  global.get $~lib/util/number/_exp
  local.get $3
  i32.add
  i32.const -64
  i32.sub
  local.get $4
  local.get $10
  call $~lib/util/number/genDigits
  local.get $10
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $10
  i32.add
 )
 (func $~lib/string/String#substring (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  i32.const 0
  local.get $2
  i32.lt_s
  select
  local.tee $3
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $2
  local.get $1
  local.get $2
  i32.lt_s
  select
  local.tee $1
  local.get $3
  local.get $1
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $4
  local.get $3
  local.get $1
  local.get $3
  local.get $1
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $1
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 7648
   return
  end
  i32.const 0
  local.get $2
  i32.const 1
  i32.shl
  local.get $4
  i32.eq
  local.get $1
  select
  if
   local.get $0
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/rt/stub/__free (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 7664
   i32.const 70
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 7664
   i32.const 72
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $1
  i32.load
  local.get $0
  i32.add
  i32.eq
  if
   local.get $1
   global.set $~lib/rt/stub/offset
  end
 )
 (func $~lib/util/number/dtoa (; 17 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 6472
   return
  end
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.ne
  if
   local.get $0
   local.get $0
   f64.ne
   if
    i32.const 6496
    return
   end
   i32.const 6520
   i32.const 6560
   local.get $0
   f64.const 0
   f64.lt
   select
   return
  end
  i32.const 56
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  call $~lib/util/number/dtoa_core
  local.tee $2
  i32.const 28
  i32.eq
  if
   local.get $1
   return
  end
  local.get $1
  local.get $2
  call $~lib/string/String#substring
  local.get $1
  call $~lib/rt/stub/__free
 )
 (func $resolve-binary/Bar#constructor (; 18 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  i32.const 8
  call $~lib/rt/stub/__alloc
 )
 (func $start:resolve-binary (; 19 ;) (type $FUNCSIG$v)
  i32.const 1
  call $~lib/number/Bool#toString
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 2
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/number/Bool#toString
  i32.const 48
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/Bool#toString
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/number/Bool#toString
  i32.const 48
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/number/Bool#toString
  i32.const 48
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/Bool#toString
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/Bool#toString
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/number/Bool#toString
  i32.const 48
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8080
  global.set $~lib/rt/stub/startOffset
  i32.const 8080
  global.set $~lib/rt/stub/offset
  i32.const 1
  global.set $resolve-binary/a
  i32.const 1
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.add
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 53
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.sub
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 58
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.shl
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 63
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2
  global.set $resolve-binary/f
  f64.const 2
  call $~lib/util/math/pow_lut
  global.set $resolve-binary/f
  global.get $resolve-binary/f
  call $~lib/util/number/dtoa
  i32.const 7712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 69
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  global.set $resolve-binary/a
  i32.const 2
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 75
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 3
  i32.rem_s
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 80
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.shl
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 7736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 85
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.shr_s
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 90
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.shr_u
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 95
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 3
  i32.and
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 100
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 3
  i32.or
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 7760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 105
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 2
  i32.xor
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 110
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/util/number/itoa32
  i32.const 7760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 117
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  call $~lib/util/number/itoa32
  i32.const 7784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 122
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 127
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 132
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 137
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2
  call $~lib/util/math/pow_lut
  call $~lib/util/number/dtoa
  i32.const 7712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 144
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  call $~lib/util/number/itoa32
  i32.const 7736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 151
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 156
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/util/number/itoa32
  i32.const 7760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 161
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 168
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/util/number/itoa32
  i32.const 7760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 173
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 178
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 185
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/util/number/itoa32
  i32.const 160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 190
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/util/number/itoa32
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 195
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/util/number/itoa32
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 200
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 7
  call $~lib/rt/stub/__alloc
  global.set $resolve-binary/foo
  i32.const 7808
  i32.const 7808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 261
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7832
  i32.const 7832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 266
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7856
  i32.const 7856
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 271
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7880
  i32.const 7880
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 276
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7904
  i32.const 7904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 281
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7928
  i32.const 7928
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 286
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7952
  i32.const 7952
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 291
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7976
  i32.const 7976
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 296
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8000
  i32.const 8000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 301
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8024
  i32.const 8024
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 306
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8048
  i32.const 8048
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 311
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8072
  i32.const 8072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 316
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $resolve-binary/Bar#constructor
  global.set $resolve-binary/bar
  call $resolve-binary/Bar#constructor
  global.set $resolve-binary/bar2
  global.get $resolve-binary/bar2
  global.set $resolve-binary/bar
  global.get $resolve-binary/bar
  global.get $resolve-binary/bar2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 334
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/bar
  global.get $resolve-binary/bar2
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 339
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 20 ;) (type $FUNCSIG$v)
  call $start:resolve-binary
 )
 (func $null (; 21 ;) (type $FUNCSIG$v)
  nop
 )
)
