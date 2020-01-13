(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 96) "\00\10\00\00\01\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\a0\f6?\00\00\00\00\00\00\00\00\00\c8\b9\f2\82,\d6\bf\80V7($\b4\fa<\00\00\00\00\00\80\f6?\00\00\00\00\00\00\00\00\00\08X\bf\bd\d1\d5\bf \f7\e0\d8\08\a5\1c\bd\00\00\00\00\00`\f6?\00\00\00\00\00\00\00\00\00XE\17wv\d5\bfmP\b6\d5\a4b#\bd\00\00\00\00\00@\f6?\00\00\00\00\00\00\00\00\00\f8-\87\ad\1a\d5\bf\d5g\b0\9e\e4\84\e6\bc\00\00\00\00\00 \f6?\00\00\00\00\00\00\00\00\00xw\95_\be\d4\bf\e0>)\93i\1b\04\bd\00\00\00\00\00\00\f6?\00\00\00\00\00\00\00\00\00`\1c\c2\8ba\d4\bf\cc\84LH/\d8\13=\00\00\00\00\00\e0\f5?\00\00\00\00\00\00\00\00\00\a8\86\860\04\d4\bf:\0b\82\ed\f3B\dc<\00\00\00\00\00\c0\f5?\00\00\00\00\00\00\00\00\00HiUL\a6\d3\bf`\94Q\86\c6\b1 =\00\00\00\00\00\a0\f5?\00\00\00\00\00\00\00\00\00\80\98\9a\ddG\d3\bf\92\80\c5\d4MY%=\00\00\00\00\00\80\f5?\00\00\00\00\00\00\00\00\00 \e1\ba\e2\e8\d2\bf\d8+\b7\99\1e{&=\00\00\00\00\00`\f5?\00\00\00\00\00\00\00\00\00\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00`\f5?\00\00\00\00\00\00\00\00\00\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00@\f5?\00\00\00\00\00\00\00\00\00x\cf\fbA)\d2\bfv\daS($Z\16\bd\00\00\00\00\00 \f5?\00\00\00\00\00\00\00\00\00\98i\c1\98\c8\d1\bf\04T\e7h\bc\af\1f\bd\00\00\00\00\00\00\f5?\00\00\00\00\00\00\00\00\00\a8\ab\ab\\g\d1\bf\f0\a8\823\c6\1f\1f=\00\00\00\00\00\e0\f4?\00\00\00\00\00\00\00\00\00H\ae\f9\8b\05\d1\bffZ\05\fd\c4\a8&\bd\00\00\00\00\00\c0\f4?\00\00\00\00\00\00\00\00\00\90s\e2$\a3\d0\bf\0e\03\f4~\eek\0c\bd\00\00\00\00\00\a0\f4?\00\00\00\00\00\00\00\00\00\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\a0\f4?\00\00\00\00\00\00\00\00\00\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\80\f4?\00\00\00\00\00\00\00\00\00@^m\18\b9\cf\bf\87<\99\ab*W\0d=\00\00\00\00\00`\f4?\00\00\00\00\00\00\00\00\00`\dc\cb\ad\f0\ce\bf$\af\86\9c\b7&+=\00\00\00\00\00@\f4?\00\00\00\00\00\00\00\00\00\f0*n\07\'\ce\bf\10\ff?TO/\17\bd\00\00\00\00\00 \f4?\00\00\00\00\00\00\00\00\00\c0Ok!\\\cd\bf\1bh\ca\bb\91\ba!=\00\00\00\00\00\00\f4?\00\00\00\00\00\00\00\00\00\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\00\f4?\00\00\00\00\00\00\00\00\00\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\e0\f3?\00\00\00\00\00\00\00\00\00\90-t\86\c2\cb\bf\8f\b7\8b1\b0N\19=\00\00\00\00\00\c0\f3?\00\00\00\00\00\00\00\00\00\c0\80N\c9\f3\ca\bff\90\cd?cN\ba<\00\00\00\00\00\a0\f3?\00\00\00\00\00\00\00\00\00\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\a0\f3?\00\00\00\00\00\00\00\00\00\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\80\f3?\00\00\00\00\00\00\00\00\00P\f4\9cZR\c9\bf\e3\d4\c1\04\d9\d1*\bd\00\00\00\00\00`\f3?\00\00\00\00\00\00\00\00\00\d0 e\a0\7f\c8\bf\t\fa\db\7f\bf\bd+=\00\00\00\00\00@\f3?\00\00\00\00\00\00\00\00\00\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00@\f3?\00\00\00\00\00\00\00\00\00\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00 \f3?\00\00\00\00\00\00\00\00\00\d0\19\e7\0f\d6\c6\bff\e2\b2\a3j\e4\10\bd\00\00\00\00\00\00\f3?\00\00\00\00\00\00\00\00\00\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\00\f3?\00\00\00\00\00\00\00\00\00\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\e0\f2?\00\00\00\00\00\00\00\00\00\b0\a1\e3\e5&\c5\bf\8f[\07\90\8b\de \bd\00\00\00\00\00\c0\f2?\00\00\00\00\00\00\00\00\00\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\c0\f2?\00\00\00\00\00\00\00\00\00\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\a0\f2?\00\00\00\00\00\00\00\00\00\90\1e \fcq\c3\bf:T\'M\86x\f1<\00\00\00\00\00\80\f2?\00\00\00\00\00\00\00\00\00\f0\1f\f8R\95\c2\bf\08\c4q\170\8d$\bd\00\00\00\00\00`\f2?\00\00\00\00\00\00\00\00\00`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00`\f2?\00\00\00\00\00\00\00\00\00`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00@\f2?\00\00\00\00\00\00\00\00\00\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00@\f2?\00\00\00\00\00\00\00\00\00\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00 \f2?\00\00\00\00\00\00\00\00\00\e0\db1\91\ec\bf\bf\f23\a3\\Tu%\bd\00\00\00\00\00\00\f2?\00\00\00\00\00\00\00\00\00\00+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\00\f2?\00\00\00\00\00\00\00\00\00\00+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\e0\f1?\00\00\00\00\00\00\00\00\00\c0[\8fT^\bc\bf\06\be_XW\0c\1d\bd\00\00\00\00\00\c0\f1?\00\00\00\00\00\00\00\00\00\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\c0\f1?\00\00\00\00\00\00\00\00\00\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\a0\f1?\00\00\00\00\00\00\00\00\00\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\a0\f1?\00\00\00\00\00\00\00\00\00\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\80\f1?\00\00\00\00\00\00\00\00\00`\e5\8a\d2\f0\b6\bf\das3\c97\97&\bd\00\00\00\00\00`\f1?\00\00\00\00\00\00\00\00\00 \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00`\f1?\00\00\00\00\00\00\00\00\00 \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00@\f1?\00\00\00\00\00\00\00\00\00\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00@\f1?\00\00\00\00\00\00\00\00\00\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00 \f1?\00\00\00\00\00\00\00\00\00\80\a3\ee6e\b1\bf\t\a3\8fv^|\14=\00\00\00\00\00\00\f1?\00\00\00\00\00\00\00\00\00\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\00\f1?\00\00\00\00\00\00\00\00\00\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\e0\f0?\00\00\00\00\00\00\00\00\00\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\e0\f0?\00\00\00\00\00\00\00\00\00\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\c0\f0?\00\00\00\00\00\00\00\00\00\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\c0\f0?\00\00\00\00\00\00\00\00\00\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\a0\f0?\00\00\00\00\00\00\00\00\00\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\a0\f0?\00\00\00\00\00\00\00\00\00\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\80\f0?\00\00\00\00\00\00\00\00\00\00x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00\80\f0?\00\00\00\00\00\00\00\00\00\00x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00`\f0?\00\00\00\00\00\00\00\00\00\80\d5\07\1b\b9\97\bf9\a6\fa\93T\8d(\bd\00\00\00\00\00@\f0?\00\00\00\00\00\00\00\00\00\00\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00@\f0?\00\00\00\00\00\00\00\00\00\00\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00 \f0?\00\00\00\00\00\00\00\00\00\00\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00 \f0?\00\00\00\00\00\00\00\00\00\00\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\c0\ef?\00\00\00\00\00\00\00\00\00\00\89u\15\10\80?\e8+\9d\99k\c7\10\bd\00\00\00\00\00\80\ef?\00\00\00\00\00\00\00\00\00\80\93XV \90?\d2\f7\e2\06[\dc#\bd\00\00\00\00\00@\ef?\00\00\00\00\00\00\00\00\00\00\c9(%I\98?4\0cZ2\ba\a0*\bd\00\00\00\00\00\00\ef?\00\00\00\00\00\00\00\00\00@\e7\89]A\a0?S\d7\f1\\\c0\11\01=\00\00\00\00\00\c0\ee?\00\00\00\00\00\00\00\00\00\00.\d4\aef\a4?(\fd\bdus\16,\bd\00\00\00\00\00\80\ee?\00\00\00\00\00\00\00\00\00\c0\9f\14\aa\94\a8?}&Z\d0\95y\19\bd\00\00\00\00\00@\ee?\00\00\00\00\00\00\00\00\00\c0\dd\cds\cb\ac?\07(\d8G\f2h\1a\bd\00\00\00\00\00 \ee?\00\00\00\00\00\00\00\00\00\c0\06\c01\ea\ae?{;\c9O>\11\0e\bd\00\00\00\00\00\e0\ed?\00\00\00\00\00\00\00\00\00`F\d1;\97\b1?\9b\9e\0dV]2%\bd\00\00\00\00\00\a0\ed?\00\00\00\00\00\00\00\00\00\e0\d1\a7\f5\bd\b3?\d7N\db\a5^\c8,=\00\00\00\00\00`\ed?\00\00\00\00\00\00\00\00\00\a0\97MZ\e9\b5?\1e\1d]<\06i,\bd\00\00\00\00\00@\ed?\00\00\00\00\00\00\00\00\00\c0\ea\n\d3\00\b7?2\ed\9d\a9\8d\1e\ec<\00\00\00\00\00\00\ed?\00\00\00\00\00\00\00\00\00@Y]^3\b9?\daG\bd:\\\11#=\00\00\00\00\00\c0\ec?\00\00\00\00\00\00\00\00\00`\ad\8d\c8j\bb?\e5h\f7+\80\90\13\bd\00\00\00\00\00\a0\ec?\00\00\00\00\00\00\00\00\00@\bc\01X\88\bc?\d3\acZ\c6\d1F&=\00\00\00\00\00`\ec?\00\00\00\00\00\00\00\00\00 \n\839\c7\be?\e0E\e6\afh\c0-\bd\00\00\00\00\00@\ec?\00\00\00\00\00\00\00\00\00\e0\db9\91\e8\bf?\fd\n\a1O\d64%\bd\00\00\00\00\00\00\ec?\00\00\00\00\00\00\00\00\00\e0\'\82\8e\17\c1?\f2\07-\cex\ef!=\00\00\00\00\00\e0\eb?\00\00\00\00\00\00\00\00\00\f0#~+\aa\c1?4\998D\8e\a7,=\00\00\00\00\00\a0\eb?\00\00\00\00\00\00\00\00\00\80\86\0ca\d1\c2?\a1\b4\81\cbl\9d\03=\00\00\00\00\00\80\eb?\00\00\00\00\00\00\00\00\00\90\15\b0\fce\c3?\89rK#\a8/\c6<\00\00\00\00\00@\eb?\00\00\00\00\00\00\00\00\00\b03\83=\91\c4?x\b6\fdTy\83%=\00\00\00\00\00 \eb?\00\00\00\00\00\00\00\00\00\b0\a1\e4\e5\'\c5?\c7}i\e5\e83&=\00\00\00\00\00\e0\ea?\00\00\00\00\00\00\00\00\00\10\8c\beNW\c6?x.<,\8b\cf\19=\00\00\00\00\00\c0\ea?\00\00\00\00\00\00\00\00\00pu\8b\12\f0\c6?\e1!\9c\e5\8d\11%\bd\00\00\00\00\00\a0\ea?\00\00\00\00\00\00\00\00\00PD\85\8d\89\c7?\05C\91p\10f\1c\bd\00\00\00\00\00`\ea?\00\00\00\00\00\00\00\00\00\009\eb\af\be\c8?\d1,\e9\aaT=\07\bd\00\00\00\00\00@\ea?\00\00\00\00\00\00\00\00\00\00\f7\dcZZ\c9?o\ff\a0X(\f2\07=\00\00\00\00\00\00\ea?\00\00\00\00\00\00\00\00\00\e0\8a<\ed\93\ca?i!VPCr(\bd\00\00\00\00\00\e0\e9?\00\00\00\00\00\00\00\00\00\d0[W\d81\cb?\aa\e1\acN\8d5\0c\bd\00\00\00\00\00\c0\e9?\00\00\00\00\00\00\00\00\00\e0;8\87\d0\cb?\b6\12TY\c4K-\bd\00\00\00\00\00\a0\e9?\00\00\00\00\00\00\00\00\00\10\f0\c6\fbo\cc?\d2+\96\c5r\ec\f1\bc\00\00\00\00\00`\e9?\00\00\00\00\00\00\00\00\00\90\d4\b0=\b1\cd?5\b0\15\f7*\ff*\bd\00\00\00\00\00@\e9?\00\00\00\00\00\00\00\00\00\10\e7\ff\0eS\ce?0\f4A`\'\12\c2<\00\00\00\00\00 \e9?\00\00\00\00\00\00\00\00\00\00\dd\e4\ad\f5\ce?\11\8e\bbe\15!\ca\bc\00\00\00\00\00\00\e9?\00\00\00\00\00\00\00\00\00\b0\b3l\1c\99\cf?0\df\0c\ca\ec\cb\1b=\00\00\00\00\00\c0\e8?\00\00\00\00\00\00\00\00\00XM`8q\d0?\91N\ed\16\db\9c\f8<\00\00\00\00\00\a0\e8?\00\00\00\00\00\00\00\00\00`ag-\c4\d0?\e9\ea<\16\8b\18\'=\00\00\00\00\00\80\e8?\00\00\00\00\00\00\00\00\00\e8\'\82\8e\17\d1?\1c\f0\a5c\0e!,\bd\00\00\00\00\00`\e8?\00\00\00\00\00\00\00\00\00\f8\ac\cb\\k\d1?\81\16\a5\f7\cd\9a+=\00\00\00\00\00@\e8?\00\00\00\00\00\00\00\00\00hZc\99\bf\d1?\b7\bdGQ\ed\a6,=\00\00\00\00\00 \e8?\00\00\00\00\00\00\00\00\00\b8\0emE\14\d2?\ea\baF\ba\de\87\n=\00\00\00\00\00\e0\e7?\00\00\00\00\00\00\00\00\00\90\dc|\f0\be\d2?\f4\04PJ\fa\9c*=\00\00\00\00\00\c0\e7?\00\00\00\00\00\00\00\00\00`\d3\e1\f1\14\d3?\b8<!\d3z\e2(\bd\00\00\00\00\00\a0\e7?\00\00\00\00\00\00\00\00\00\10\bevgk\d3?\c8w\f1\b0\cdn\11=\00\00\00\00\00\80\e7?\00\00\00\00\00\00\00\00\0003wR\c2\d3?\\\bd\06\b6T;\18=\00\00\00\00\00`\e7?\00\00\00\00\00\00\00\00\00\e8\d5#\b4\19\d4?\9d\e0\90\ec6\e4\08=\00\00\00\00\00@\e7?\00\00\00\00\00\00\00\00\00\c8q\c2\8dq\d4?u\d6g\t\ce\'/\bd\00\00\00\00\00 \e7?\00\00\00\00\00\00\00\00\000\17\9e\e0\c9\d4?\a4\d8\n\1b\89 .\bd\00\00\00\00\00\00\e7?\00\00\00\00\00\00\00\00\00\a08\07\ae\"\d5?Y\c7d\81p\be.=\00\00\00\00\00\e0\e6?\00\00\00\00\00\00\00\00\00\d0\c8S\f7{\d5?\ef@]\ee\ed\ad\1f=\00\00\00\00\00\c0\e6?\00\00\00\00\00\00\00\00\00`Y\df\bd\d5\d5?\dce\a4\08*\0b\n\bd")
 (data (i32.const 4208) "\10\00\00\00\01\00\00\00\04\00\00\00\10\00\00\00p\00\00\00p\00\00\00\00\10\00\00\00\02\00\00")
 (data (i32.const 4240) "\00\08\00\00\01\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\\\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\\\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\"PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\tm\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\n\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\n\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\"4\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\n\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\tf\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<\'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\0d\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\\{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da\'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\tT\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\t\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\"U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\"^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\t^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T\'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\t\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\"CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?\'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\n\e15\d2m<##\e3\19c\c8\ee?c\"b\"\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\n\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\t\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\\2\e3\8e<z\d0\ff_\ab \ef?\acY\t\d1\8f\e0\84<K\d1W.\f1\'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\0d\90\bc\f2\89\0d\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\"@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\0dG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<\'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?")
 (data (i32.const 6304) "\10\00\00\00\01\00\00\00\05\00\00\00\10\00\00\00\a0\10\00\00\a0\10\00\00\00\08\00\00\00\01\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/operator-overloading/a1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a (mut i32) (i32.const 0))
 (global $std/operator-overloading/s1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s (mut i32) (i32.const 0))
 (global $std/operator-overloading/m1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m (mut i32) (i32.const 0))
 (global $std/operator-overloading/d1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d (mut i32) (i32.const 0))
 (global $std/operator-overloading/f1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f (mut i32) (i32.const 0))
 (global $std/operator-overloading/p1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/p2 (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/util/math/EXP_TABLE_BITS i32 (i32.const 7))
 (global $~lib/util/math/SIGN_BIAS i32 (i32.const 262144))
 (global $~lib/util/math/POW_LOG_TABLE_BITS i32 (i32.const 7))
 (global $~lib/util/math/pow_log_data_tab i32 (i32.const 4224))
 (global $~lib/util/math/log_tail (mut f64) (f64.const 0))
 (global $~lib/util/math/exp_data_tab i32 (i32.const 6320))
 (global $std/operator-overloading/p (mut i32) (i32.const 0))
 (global $std/operator-overloading/n1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n (mut i32) (i32.const 0))
 (global $std/operator-overloading/o1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o (mut i32) (i32.const 0))
 (global $std/operator-overloading/x1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq3 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq4 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eqf (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/operator-overloading/gt1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte (mut i32) (i32.const 0))
 (global $std/operator-overloading/le1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq (mut i32) (i32.const 0))
 (global $std/operator-overloading/shr (mut i32) (i32.const 0))
 (global $std/operator-overloading/sres (mut i32) (i32.const 0))
 (global $std/operator-overloading/shu (mut i32) (i32.const 0))
 (global $std/operator-overloading/ures (mut i32) (i32.const 0))
 (global $std/operator-overloading/shl (mut i32) (i32.const 0))
 (global $std/operator-overloading/pos (mut i32) (i32.const 0))
 (global $std/operator-overloading/pres (mut i32) (i32.const 0))
 (global $std/operator-overloading/neg (mut i32) (i32.const 0))
 (global $std/operator-overloading/nres (mut i32) (i32.const 0))
 (global $std/operator-overloading/not (mut i32) (i32.const 0))
 (global $std/operator-overloading/res (mut i32) (i32.const 0))
 (global $std/operator-overloading/excl (mut i32) (i32.const 0))
 (global $std/operator-overloading/bres (mut i32) (i32.const 0))
 (global $std/operator-overloading/incdec (mut i32) (i32.const 0))
 (global $std/operator-overloading/tmp (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 6336))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 3 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $std/operator-overloading/Tester#constructor (; 4 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 5 ;) (param $0 i32)
  nop
 )
 (func $std/operator-overloading/Tester.add (; 6 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.add
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.add
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.sub (; 7 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.mul (; 8 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.mul
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.mul
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.div (; 9 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.div_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.div_s
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.mod (; 10 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.rem_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.rem_s
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/math/NativeMath.pow (; 11 ;) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 f64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i64)
  (local $14 i64)
  (local $15 f64)
  (local $16 i32)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 f64)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i64)
  (local $44 i64)
  local.get $1
  f64.abs
  f64.const 2
  f64.le
  if
   local.get $1
   f64.const 2
   f64.eq
   if
    local.get $0
    local.get $0
    f64.mul
    return
   end
   local.get $1
   f64.const 0.5
   f64.eq
   if
    local.get $0
    f64.sqrt
    f64.abs
    f64.const inf
    local.get $0
    f64.const inf
    f64.neg
    f64.ne
    select
    return
   end
   local.get $1
   f64.const -1
   f64.eq
   if
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $1
   f64.const 1
   f64.eq
   if
    local.get $0
    return
   end
   local.get $1
   f64.const 0
   f64.eq
   if
    f64.const 1
    return
   end
  end
  block $~lib/util/math/pow_lut|inlined.0 (result f64)
   local.get $0
   local.set $3
   local.get $1
   local.set $2
   i32.const 0
   local.set $4
   local.get $3
   i64.reinterpret_f64
   local.set $5
   local.get $2
   i64.reinterpret_f64
   local.set $6
   local.get $5
   i64.const 52
   i64.shr_u
   local.set $7
   local.get $6
   i64.const 52
   i64.shr_u
   local.set $8
   local.get $7
   i64.const 1
   i64.sub
   i64.const 2046
   i64.ge_u
   if (result i32)
    i32.const 1
   else
    local.get $8
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 128
    i64.ge_u
   end
   if
    local.get $6
    local.set $9
    local.get $9
    i64.const 1
    i64.shl
    i64.const 1
    i64.sub
    i64.const -9007199254740993
    i64.ge_u
    if
     local.get $6
     i64.const 1
     i64.shl
     i64.const 0
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const -9007199254740992
     i64.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $6
      i64.const 1
      i64.shl
      i64.const -9007199254740992
      i64.gt_u
     end
     if
      local.get $3
      local.get $2
      f64.add
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.lt_u
     local.get $6
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     i32.eqz
     i32.eq
     if
      f64.const 0
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $2
     local.get $2
     f64.mul
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $5
    local.set $9
    local.get $9
    i64.const 1
    i64.shl
    i64.const 1
    i64.sub
    i64.const -9007199254740993
    i64.ge_u
    if
     local.get $3
     local.get $3
     f64.mul
     local.set $10
     local.get $5
     i64.const 63
     i64.shr_u
     i32.wrap_i64
     if (result i32)
      block $~lib/util/math/checkint|inlined.0 (result i32)
       local.get $6
       local.set $9
       local.get $9
       i64.const 52
       i64.shr_u
       i64.const 2047
       i64.and
       local.set $11
       local.get $11
       i64.const 1023
       i64.lt_u
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $11
       i64.const 1075
       i64.gt_u
       if
        i32.const 2
        br $~lib/util/math/checkint|inlined.0
       end
       i64.const 1
       i64.const 1075
       local.get $11
       i64.sub
       i64.shl
       local.set $11
       local.get $9
       local.get $11
       i64.const 1
       i64.sub
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $9
       local.get $11
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 1
        br $~lib/util/math/checkint|inlined.0
       end
       i32.const 2
      end
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $10
      f64.neg
      local.set $10
     end
     local.get $6
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     if (result f64)
      f64.const 1
      local.get $10
      f64.div
     else
      local.get $10
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $5
    i64.const 63
    i64.shr_u
    i64.const 0
    i64.ne
    if
     block $~lib/util/math/checkint|inlined.1 (result i32)
      local.get $6
      local.set $9
      local.get $9
      i64.const 52
      i64.shr_u
      i64.const 2047
      i64.and
      local.set $11
      local.get $11
      i64.const 1023
      i64.lt_u
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $11
      i64.const 1075
      i64.gt_u
      if
       i32.const 2
       br $~lib/util/math/checkint|inlined.1
      end
      i64.const 1
      i64.const 1023
      i64.const 52
      i64.add
      local.get $11
      i64.sub
      i64.shl
      local.set $11
      local.get $9
      local.get $11
      i64.const 1
      i64.sub
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $9
      local.get $11
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 1
       br $~lib/util/math/checkint|inlined.1
      end
      i32.const 2
     end
     local.set $12
     local.get $12
     i32.const 0
     i32.eq
     if
      local.get $3
      local.get $3
      f64.sub
      local.get $3
      local.get $3
      f64.sub
      f64.div
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $12
     i32.const 1
     i32.eq
     if
      global.get $~lib/util/math/SIGN_BIAS
      local.set $4
     end
     local.get $5
     i64.const 9223372036854775807
     i64.and
     local.set $5
     local.get $7
     i64.const 2047
     i64.and
     local.set $7
    end
    local.get $8
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 128
    i64.ge_u
    if
     local.get $5
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $8
     i64.const 2047
     i64.and
     i64.const 958
     i64.lt_u
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 4607182418800017408
     i64.gt_u
     local.get $8
     i64.const 2048
     i64.lt_u
     i32.eq
     if (result f64)
      f64.const inf
     else
      f64.const 0
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $7
    i64.const 0
    i64.eq
    if
     local.get $3
     f64.const 4503599627370496
     f64.mul
     i64.reinterpret_f64
     local.set $5
     local.get $5
     i64.const 9223372036854775807
     i64.and
     local.set $5
     local.get $5
     i64.const 52
     i64.const 52
     i64.shl
     i64.sub
     local.set $5
    end
   end
   local.get $5
   local.set $9
   local.get $9
   i64.const 4604531861337669632
   i64.sub
   local.set $11
   local.get $11
   i64.const 52
   global.get $~lib/util/math/POW_LOG_TABLE_BITS
   i64.extend_i32_s
   i64.sub
   i64.shr_u
   i64.const 127
   i64.and
   i32.wrap_i64
   local.set $12
   local.get $11
   i64.const 52
   i64.shr_s
   local.set $13
   local.get $9
   local.get $11
   i64.const 4095
   i64.const 52
   i64.shl
   i64.and
   i64.sub
   local.set $14
   local.get $14
   f64.reinterpret_i64
   local.set $10
   local.get $13
   f64.convert_i64_s
   local.set $15
   i32.const 4224
   i32.load offset=4
   local.set $16
   local.get $16
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $17
   local.get $16
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=16
   local.set $18
   local.get $16
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=24
   local.set $19
   local.get $14
   i64.const 2147483648
   i64.add
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $20
   local.get $10
   local.get $20
   f64.sub
   local.set $21
   local.get $20
   local.get $17
   f64.mul
   f64.const 1
   f64.sub
   local.set $22
   local.get $21
   local.get $17
   f64.mul
   local.set $23
   local.get $22
   local.get $23
   f64.add
   local.set $24
   local.get $15
   f64.const 0.6931471805598903
   f64.mul
   local.get $18
   f64.add
   local.set $25
   local.get $25
   local.get $24
   f64.add
   local.set $26
   local.get $15
   f64.const 5.497923018708371e-14
   f64.mul
   local.get $19
   f64.add
   local.set $27
   local.get $25
   local.get $26
   f64.sub
   local.get $24
   f64.add
   local.set $28
   f64.const -0.5
   local.get $24
   f64.mul
   local.set $29
   local.get $24
   local.get $29
   f64.mul
   local.set $30
   local.get $24
   local.get $30
   f64.mul
   local.set $31
   f64.const -0.5
   local.get $22
   f64.mul
   local.set $32
   local.get $22
   local.get $32
   f64.mul
   local.set $33
   local.get $26
   local.get $33
   f64.add
   local.set $34
   local.get $23
   local.get $29
   local.get $32
   f64.add
   f64.mul
   local.set $35
   local.get $26
   local.get $34
   f64.sub
   local.get $33
   f64.add
   local.set $36
   local.get $31
   f64.const -0.6666666666666679
   local.get $24
   f64.const 0.5000000000000007
   f64.mul
   f64.add
   local.get $30
   f64.const 0.7999999995323976
   local.get $24
   f64.const -0.6666666663487739
   f64.mul
   f64.add
   local.get $30
   f64.const -1.142909628459501
   local.get $24
   f64.const 1.0000415263675542
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.set $37
   local.get $27
   local.get $28
   f64.add
   local.get $35
   f64.add
   local.get $36
   f64.add
   local.get $37
   f64.add
   local.set $38
   local.get $34
   local.get $38
   f64.add
   local.set $39
   local.get $34
   local.get $39
   f64.sub
   local.get $38
   f64.add
   global.set $~lib/util/math/log_tail
   local.get $39
   local.set $39
   global.get $~lib/util/math/log_tail
   local.set $38
   local.get $6
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $35
   local.get $2
   local.get $35
   f64.sub
   local.set $34
   local.get $39
   i64.reinterpret_f64
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $33
   local.get $39
   local.get $33
   f64.sub
   local.get $38
   f64.add
   local.set $32
   local.get $35
   local.get $33
   f64.mul
   local.set $37
   local.get $34
   local.get $33
   f64.mul
   local.get $2
   local.get $32
   f64.mul
   f64.add
   local.set $36
   block $~lib/util/math/exp_inline|inlined.0 (result f64)
    local.get $37
    local.set $15
    local.get $36
    local.set $10
    local.get $4
    local.set $12
    local.get $15
    i64.reinterpret_f64
    local.set $9
    local.get $9
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.set $16
    local.get $16
    i32.const 969
    i32.sub
    i32.const 63
    i32.ge_u
    if
     local.get $16
     i32.const 969
     i32.sub
     i32.const -2147483648
     i32.ge_u
     if
      f64.const -1
      f64.const 1
      local.get $12
      select
      br $~lib/util/math/exp_inline|inlined.0
     end
     local.get $16
     i32.const 1033
     i32.ge_u
     if
      local.get $9
      i64.const 63
      i64.shr_u
      i64.const 0
      i64.ne
      if (result f64)
       local.get $12
       local.set $41
       local.get $41
       local.set $42
       i64.const 1152921504606846976
       f64.reinterpret_i64
       local.set $17
       local.get $17
       f64.neg
       local.get $17
       local.get $42
       select
       local.get $17
       f64.mul
      else
       local.get $12
       local.set $42
       local.get $42
       local.set $41
       i64.const 8070450532247928832
       f64.reinterpret_i64
       local.set $18
       local.get $18
       f64.neg
       local.get $18
       local.get $41
       select
       local.get $18
       f64.mul
      end
      br $~lib/util/math/exp_inline|inlined.0
     end
     i32.const 0
     local.set $16
    end
    f64.const 184.6649652337873
    local.get $15
    f64.mul
    local.set $30
    local.get $30
    f64.const 6755399441055744
    f64.add
    local.set $31
    local.get $31
    i64.reinterpret_f64
    local.set $14
    local.get $31
    f64.const 6755399441055744
    f64.sub
    local.set $31
    local.get $15
    local.get $31
    f64.const -0.005415212348111709
    f64.mul
    f64.add
    local.get $31
    f64.const -1.2864023111638346e-14
    f64.mul
    f64.add
    local.set $29
    local.get $29
    local.get $10
    f64.add
    local.set $29
    local.get $14
    i64.const 127
    i64.and
    i64.const 1
    i64.shl
    i32.wrap_i64
    local.set $40
    local.get $14
    local.get $12
    i64.extend_i32_u
    i64.add
    i64.const 52
    global.get $~lib/util/math/EXP_TABLE_BITS
    i64.extend_i32_s
    i64.sub
    i64.shl
    local.set $13
    i32.const 6320
    i32.load offset=4
    local.set $42
    local.get $42
    local.get $40
    i32.const 3
    i32.shl
    i32.add
    i64.load
    f64.reinterpret_i64
    local.set $26
    local.get $42
    local.get $40
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
    local.get $13
    i64.add
    local.set $11
    local.get $29
    local.get $29
    f64.mul
    local.set $28
    local.get $26
    local.get $29
    f64.add
    local.get $28
    f64.const 0.49999999999996786
    local.get $29
    f64.const 0.16666666666665886
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $28
    local.get $28
    f64.mul
    f64.const 0.0416666808410674
    local.get $29
    f64.const 0.008333335853059549
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $25
    local.get $16
    i32.const 0
    i32.eq
    if
     block $~lib/util/math/specialcase|inlined.0 (result f64)
      local.get $25
      local.set $19
      local.get $11
      local.set $44
      local.get $14
      local.set $43
      local.get $43
      i64.const 2147483648
      i64.and
      i64.const 0
      i64.ne
      i32.eqz
      if
       local.get $44
       i64.const 1009
       i64.const 52
       i64.shl
       i64.sub
       local.set $44
       local.get $44
       f64.reinterpret_i64
       local.set $18
       f64.const 5486124068793688683255936e279
       local.get $18
       local.get $18
       local.get $19
       f64.mul
       f64.add
       f64.mul
       br $~lib/util/math/specialcase|inlined.0
      end
      local.get $44
      i64.const 1022
      i64.const 52
      i64.shl
      i64.add
      local.set $44
      local.get $44
      f64.reinterpret_i64
      local.set $18
      local.get $18
      local.get $18
      local.get $19
      f64.mul
      f64.add
      local.set $17
      local.get $17
      f64.abs
      f64.const 1
      f64.lt
      if
       f64.const 1
       local.get $17
       f64.copysign
       local.set $24
       local.get $18
       local.get $17
       f64.sub
       local.get $18
       local.get $19
       f64.mul
       f64.add
       local.set $23
       local.get $24
       local.get $17
       f64.add
       local.set $22
       local.get $24
       local.get $22
       f64.sub
       local.get $17
       f64.add
       local.get $23
       f64.add
       local.set $23
       local.get $22
       local.get $23
       f64.add
       local.get $24
       f64.sub
       local.set $17
       local.get $17
       f64.const 0
       f64.eq
       if
        local.get $44
        i64.const -9223372036854775808
        i64.and
        f64.reinterpret_i64
        local.set $17
       end
      end
      local.get $17
      f64.const 2.2250738585072014e-308
      f64.mul
     end
     br $~lib/util/math/exp_inline|inlined.0
    end
    local.get $11
    f64.reinterpret_i64
    local.set $27
    local.get $27
    local.get $27
    local.get $25
    f64.mul
    f64.add
   end
  end
  return
 )
 (func $std/operator-overloading/Tester.pow (; 12 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  f64.convert_i32_s
  local.get $1
  i32.load
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
  i32.trunc_f64_s
  local.get $0
  i32.load offset=4
  f64.convert_i32_s
  local.get $1
  i32.load offset=4
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
  i32.trunc_f64_s
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.and (; 13 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.and
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.and
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.or (; 14 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.or
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.or
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.xor (; 15 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.xor
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.xor
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.equals (; 16 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.eq
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.eq
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.notEquals (; 17 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.ne
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.ne
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.greater (; 18 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.gt_s
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.gt_s
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.greaterEquals (; 19 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.ge_s
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.ge_s
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.less (; 20 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.lt_s
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.lt_s
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.lessEquals (; 21 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.le_s
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.le_s
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.shr (; 22 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shr_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shr_s
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.shu (; 23 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shr_u
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shr_u
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.shl (; 24 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shl
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shl
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.pos (; 25 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $std/operator-overloading/Tester#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $std/operator-overloading/Tester.neg (; 26 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  i32.const 0
  local.get $0
  i32.load
  i32.sub
  i32.const 0
  local.get $0
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $std/operator-overloading/Tester.not (; 27 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  i32.const -1
  i32.xor
  local.get $0
  i32.load offset=4
  i32.const -1
  i32.xor
  call $std/operator-overloading/Tester#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $std/operator-overloading/Tester.excl (; 28 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.load
  i32.eqz
  if (result i32)
   local.get $0
   i32.load offset=4
   i32.eqz
  else
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $std/operator-overloading/Tester#inc (; 29 ;) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $std/operator-overloading/Tester#dec (; 30 ;) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.sub
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $std/operator-overloading/Tester#postInc (; 31 ;) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester#postDec (; 32 ;) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  i32.const 1
  i32.sub
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/TesterInlineStatic#constructor (; 33 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 6
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $std/operator-overloading/TesterInlineInstance#constructor (; 34 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 7
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $start:std/operator-overloading (; 35 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/a1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/a2
  global.get $std/operator-overloading/a1
  global.get $std/operator-overloading/a2
  call $std/operator-overloading/Tester.add
  local.tee $0
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/a
  global.get $std/operator-overloading/a
  i32.load
  i32.const 3
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/a
   i32.load offset=4
   i32.const 5
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 145
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/s1
  i32.const 0
  i32.const 2
  i32.const -3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/s2
  global.get $std/operator-overloading/s1
  global.get $std/operator-overloading/s2
  call $std/operator-overloading/Tester.sub
  local.tee $1
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/s
  global.get $std/operator-overloading/s
  i32.load
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/s
   i32.load offset=4
   i32.const 6
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 151
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/m1
  i32.const 0
  i32.const 3
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/m2
  global.get $std/operator-overloading/m1
  global.get $std/operator-overloading/m2
  call $std/operator-overloading/Tester.mul
  local.tee $2
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/m
  global.get $std/operator-overloading/m
  i32.load
  i32.const 6
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/m
   i32.load offset=4
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 157
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 6
  i32.const 50
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/d1
  i32.const 0
  i32.const 3
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/d2
  global.get $std/operator-overloading/d1
  global.get $std/operator-overloading/d2
  call $std/operator-overloading/Tester.div
  local.tee $3
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/d
  global.get $std/operator-overloading/d
  i32.load
  i32.const 2
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/d
   i32.load offset=4
   i32.const 5
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 163
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 10
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/f1
  i32.const 0
  i32.const 6
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/f2
  global.get $std/operator-overloading/f1
  global.get $std/operator-overloading/f2
  call $std/operator-overloading/Tester.mod
  local.tee $4
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/f
  global.get $std/operator-overloading/f
  i32.load
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/f
   i32.load offset=4
   i32.const 0
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 169
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/p1
  i32.const 0
  i32.const 4
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/p2
  global.get $std/operator-overloading/p1
  global.get $std/operator-overloading/p2
  call $std/operator-overloading/Tester.pow
  local.tee $5
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/p
  global.get $std/operator-overloading/p
  i32.load
  i32.const 16
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/p
   i32.load offset=4
   i32.const 243
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 175
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 15
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/n1
  i32.const 0
  i32.const 15
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/n2
  global.get $std/operator-overloading/n1
  global.get $std/operator-overloading/n2
  call $std/operator-overloading/Tester.and
  local.tee $6
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/n
  global.get $std/operator-overloading/n
  i32.load
  i32.const 15
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/n
   i32.load offset=4
   i32.const 15
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 181
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3855
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/o1
  i32.const 0
  i32.const 61680
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/o2
  global.get $std/operator-overloading/o1
  global.get $std/operator-overloading/o2
  call $std/operator-overloading/Tester.or
  local.tee $7
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/o
  global.get $std/operator-overloading/o
  i32.load
  i32.const 65535
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/o
   i32.load offset=4
   i32.const 255
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 187
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/x1
  i32.const 0
  i32.const 65280
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/x2
  global.get $std/operator-overloading/x1
  global.get $std/operator-overloading/x2
  call $std/operator-overloading/Tester.xor
  local.tee $8
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/x
  global.get $std/operator-overloading/x
  i32.load
  i32.const 65535
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/x
   i32.load offset=4
   i32.const 255
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 193
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq1
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq2
  global.get $std/operator-overloading/eq1
  global.get $std/operator-overloading/eq2
  call $std/operator-overloading/Tester.equals
  global.set $std/operator-overloading/eq
  global.get $std/operator-overloading/eq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 199
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq3
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq4
  global.get $std/operator-overloading/eq3
  global.get $std/operator-overloading/eq4
  call $std/operator-overloading/Tester.equals
  global.set $std/operator-overloading/eqf
  global.get $std/operator-overloading/eqf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 205
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/eq1
  global.get $std/operator-overloading/eq2
  call $std/operator-overloading/Tester.notEquals
  global.set $std/operator-overloading/eq
  global.get $std/operator-overloading/eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 209
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/eq3
  global.get $std/operator-overloading/eq4
  call $std/operator-overloading/Tester.notEquals
  global.set $std/operator-overloading/eqf
  global.get $std/operator-overloading/eqf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 213
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gt1
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gt2
  global.get $std/operator-overloading/gt1
  global.get $std/operator-overloading/gt2
  call $std/operator-overloading/Tester.greater
  global.set $std/operator-overloading/gt
  global.get $std/operator-overloading/gt
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 219
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gte1
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gte2
  global.get $std/operator-overloading/gte1
  global.get $std/operator-overloading/gte2
  call $std/operator-overloading/Tester.greaterEquals
  global.set $std/operator-overloading/gte
  global.get $std/operator-overloading/gte
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 225
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 5
  i32.const -1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/le1
  i32.const 0
  i32.const 6
  i32.const 6
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/le2
  global.get $std/operator-overloading/le1
  global.get $std/operator-overloading/le2
  call $std/operator-overloading/Tester.less
  global.set $std/operator-overloading/le
  global.get $std/operator-overloading/le
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 231
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/leq1
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/leq2
  global.get $std/operator-overloading/leq1
  global.get $std/operator-overloading/leq2
  call $std/operator-overloading/Tester.lessEquals
  global.set $std/operator-overloading/leq
  global.get $std/operator-overloading/leq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 237
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 8
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shr
  global.get $std/operator-overloading/shr
  i32.const 3
  call $std/operator-overloading/Tester.shr
  local.tee $9
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/sres
  global.get $std/operator-overloading/sres
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/sres
   i32.load offset=4
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 242
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const -8
  i32.const -16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shu
  global.get $std/operator-overloading/shu
  i32.const 3
  call $std/operator-overloading/Tester.shu
  local.tee $10
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/ures
  global.get $std/operator-overloading/ures
  i32.load
  i32.const 536870911
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/ures
   i32.load offset=4
   i32.const 536870910
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 247
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shl
  global.get $std/operator-overloading/shl
  i32.const 3
  call $std/operator-overloading/Tester.shl
  local.tee $11
  local.tee $12
  global.get $std/operator-overloading/sres
  local.tee $13
  i32.ne
  if
   local.get $12
   call $~lib/rt/stub/__retain
   local.set $12
   local.get $13
   call $~lib/rt/stub/__release
  end
  local.get $12
  global.set $std/operator-overloading/sres
  global.get $std/operator-overloading/sres
  i32.load
  i32.const 8
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/sres
   i32.load offset=4
   i32.const 16
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 252
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/pos
  global.get $std/operator-overloading/pos
  call $std/operator-overloading/Tester.pos
  local.tee $12
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/pres
  global.get $std/operator-overloading/pres
  i32.load
  global.get $std/operator-overloading/pos
  i32.load
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/pres
   i32.load offset=4
   global.get $std/operator-overloading/pos
   i32.load offset=4
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 257
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const -1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/neg
  global.get $std/operator-overloading/neg
  call $std/operator-overloading/Tester.neg
  local.tee $13
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/nres
  global.get $std/operator-overloading/nres
  i32.load
  i32.const 0
  global.get $std/operator-overloading/neg
  i32.load
  i32.sub
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/nres
   i32.load offset=4
   i32.const 0
   global.get $std/operator-overloading/neg
   i32.load offset=4
   i32.sub
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 262
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/not
  global.get $std/operator-overloading/not
  call $std/operator-overloading/Tester.not
  local.tee $14
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/res
  global.get $std/operator-overloading/res
  i32.load
  global.get $std/operator-overloading/not
  i32.load
  i32.const -1
  i32.xor
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/res
   i32.load offset=4
   global.get $std/operator-overloading/not
   i32.load offset=4
   i32.const -1
   i32.xor
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 267
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/excl
  global.get $std/operator-overloading/excl
  call $std/operator-overloading/Tester.excl
  global.set $std/operator-overloading/bres
  global.get $std/operator-overloading/bres
  global.get $std/operator-overloading/excl
  i32.load
  i32.eqz
  if (result i32)
   global.get $std/operator-overloading/excl
   i32.load offset=4
   i32.eqz
  else
   i32.const 0
  end
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 272
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/bres
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 273
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  call $std/operator-overloading/Tester#inc
  local.tee $15
  local.tee $16
  global.get $std/operator-overloading/incdec
  local.tee $17
  i32.ne
  if
   local.get $16
   call $~lib/rt/stub/__retain
   local.set $16
   local.get $17
   call $~lib/rt/stub/__release
  end
  local.get $16
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 279
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  call $std/operator-overloading/Tester#dec
  local.tee $16
  local.tee $17
  global.get $std/operator-overloading/incdec
  local.tee $18
  i32.ne
  if
   local.get $17
   call $~lib/rt/stub/__retain
   local.set $17
   local.get $18
   call $~lib/rt/stub/__release
  end
  local.get $17
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 282
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  local.set $18
  global.get $std/operator-overloading/incdec
  call $~lib/rt/stub/__release
  local.get $18
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  local.tee $18
  call $std/operator-overloading/Tester#postInc
  local.tee $17
  local.tee $19
  global.get $std/operator-overloading/incdec
  local.tee $20
  i32.ne
  if
   local.get $19
   call $~lib/rt/stub/__retain
   local.set $19
   local.get $20
   call $~lib/rt/stub/__release
  end
  local.get $19
  global.set $std/operator-overloading/incdec
  local.get $18
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/tmp
  global.get $std/operator-overloading/tmp
  i32.load
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 287
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 288
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  local.tee $18
  call $std/operator-overloading/Tester#postDec
  local.tee $19
  local.tee $20
  global.get $std/operator-overloading/incdec
  local.tee $21
  i32.ne
  if
   local.get $20
   call $~lib/rt/stub/__retain
   local.set $20
   local.get $21
   call $~lib/rt/stub/__release
  end
  local.get $20
  global.set $std/operator-overloading/incdec
  local.get $18
  local.tee $21
  global.get $std/operator-overloading/tmp
  local.tee $18
  i32.ne
  if
   local.get $21
   call $~lib/rt/stub/__retain
   local.set $21
   local.get $18
   call $~lib/rt/stub/__release
  end
  local.get $21
  global.set $std/operator-overloading/tmp
  global.get $std/operator-overloading/tmp
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 291
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 292
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais1
  global.get $std/operator-overloading/ais1
  call $~lib/rt/stub/__retain
  local.set $20
  i32.const 0
  local.get $20
  i32.load
  i32.const 1
  i32.add
  local.get $20
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/TesterInlineStatic#constructor
  local.set $21
  local.get $20
  call $~lib/rt/stub/__release
  local.get $21
  local.tee $20
  local.tee $18
  global.get $std/operator-overloading/ais1
  local.tee $21
  i32.ne
  if
   local.get $18
   call $~lib/rt/stub/__retain
   local.set $18
   local.get $21
   call $~lib/rt/stub/__release
  end
  local.get $18
  global.set $std/operator-overloading/ais1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais2
  global.get $std/operator-overloading/ais1
  call $~lib/rt/stub/__retain
  local.set $18
  global.get $std/operator-overloading/ais2
  call $~lib/rt/stub/__retain
  local.set $21
  i32.const 0
  local.get $18
  i32.load
  local.get $21
  i32.load
  i32.add
  local.get $18
  i32.load offset=4
  local.get $21
  i32.load offset=4
  i32.add
  call $std/operator-overloading/TesterInlineStatic#constructor
  local.set $22
  local.get $21
  call $~lib/rt/stub/__release
  local.get $18
  call $~lib/rt/stub/__release
  local.get $22
  local.tee $18
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/ais
  global.get $std/operator-overloading/ais
  i32.load
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/ais
   i32.load offset=4
   i32.const 6
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 312
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii1
  global.get $std/operator-overloading/aii1
  local.set $22
  i32.const 0
  local.get $22
  i32.load
  i32.const 1
  i32.add
  local.get $22
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/TesterInlineInstance#constructor
  local.tee $22
  local.tee $21
  global.get $std/operator-overloading/aii1
  local.tee $23
  i32.ne
  if
   local.get $21
   call $~lib/rt/stub/__retain
   local.set $21
   local.get $23
   call $~lib/rt/stub/__release
  end
  local.get $21
  global.set $std/operator-overloading/aii1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii2
  global.get $std/operator-overloading/aii1
  local.set $21
  global.get $std/operator-overloading/aii2
  call $~lib/rt/stub/__retain
  local.set $23
  i32.const 0
  local.get $21
  i32.load
  local.get $23
  i32.load
  i32.add
  local.get $21
  i32.load offset=4
  local.get $23
  i32.load offset=4
  i32.add
  call $std/operator-overloading/TesterInlineInstance#constructor
  local.set $24
  local.get $23
  call $~lib/rt/stub/__release
  local.get $24
  local.tee $21
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/aii
  global.get $std/operator-overloading/aii
  i32.load
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/aii
   i32.load offset=4
   i32.const 6
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 332
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $15
  call $~lib/rt/stub/__release
  local.get $16
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $18
  call $~lib/rt/stub/__release
  local.get $19
  call $~lib/rt/stub/__release
  local.get $20
  call $~lib/rt/stub/__release
  local.get $21
  call $~lib/rt/stub/__release
  local.get $22
  call $~lib/rt/stub/__release
 )
 (func $~start (; 36 ;)
  call $start:std/operator-overloading
 )
)
