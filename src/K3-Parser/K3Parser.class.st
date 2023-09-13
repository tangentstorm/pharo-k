"
SmaCC parser for the K3  language.

K3 is a language in the APL family of array-oriented languages. 
There is an open source interpreter compatible with K3 at https://github.com/kevinlawler/kona ... 

"
Class {
	#name : #K3Parser,
	#superclass : #SmaCCParser,
	#category : #'K3-Parser'
}

{ #category : #'generated-accessing' }
K3Parser class >> cacheId [
	^'2023-09-13T16:31:33.049-04:00'
]

{ #category : #generated }
K3Parser class >> definitionComment [
"%annotate_tokens;
%root Code;
%prefix K3;
%suffix Node;

<whitespace> : [\ \t\f] ;
<nl> : \r\n|\r|\n ;
<digit> : \d;
<alpha> : [a-zA-Z];
<ident> : <alpha>  (<alpha>|<digit>|[_])*;
<lname> : <ident> ([.] <ident>)*;
<gname> : ([.] <ident>)+;
#<prim>  : [\_\+\-\*\%\!\&\|\<\>\=\~\,\^\#\$\?\@\.];
<prim>: [~!@#$%\\^&*+<>|,?=_.\-];
<string>: \""(\\\""|[^""])*\"";
<comment>: /\s[^\r\n]* ;
#<cmd>        : \\ [^\r\n]* ;
<adverb> : ['/\\][:]?;
<number> : \-?[0-9]+(\.[0-9]+)? ;
#<builtin> : [_] (bin|di|dv|dvl|draw|gtime|ic|ci|jd|dj|lsq|dot|mul|inv|in|lin
#                |sv|sm|ss|ssr|vs|abs|floor|sin|cos|tan|sinh|cosh|tanh
#                |exp|log|sqr|sqrt);
<symbol> : \`(<ident>|<string>)?;
#<endnote> : [\\][\r?\n]* ;
<command> : [\\][^\r\n]* ;
# monad and augAssign are same syntax but have different meanings
#<monad> : <prim>[:] ;
<assignOp>: <prim>?[:];
<numcolon>: \d[:];

Code : Line 'line' * Stmts 'stmts'? Comment 'cmt'? {{}}; #(EndNote|Command)? {{}};
#EndNote : <endnote>;
Line  : Stmts 'stmts'? Comment 'cmt'? <nl> {{}};#(Command)? <nl> {{Line}};
#Command : <command>;
Comment : <comment>;
Stmts: Expr 'expr'? ("";"" Expr 'expr'?)* {{}};
Expr : Chain ; #"":""|Return|Chain;
Chain : Item 'item'+ {{}} ;
Item : (Prim|NumColon| NumArray |Number |SymArray |Symbol |String |List |IfStmt |WhileStmt |DoStmt|Lambda|LValue|Assign);
# (Cond|IfStmt|WhileStmt|DoStmt|Assign|<prim>|<monad>|<numcolon>|<builtin>|<adverb>|Lambda|Call|List|<number>|<string>|<symbol>|LValue)+ <monad>?;
NumArray : (Number 'num' Number 'num' +) {{}};
SymArray : (Symbol 'sym' Symbol 'sym' +) {{}};
Number : <number> 'number' {{}} ; 
Symbol : <symbol> {{}} ;
String : <string> {{}} ;
NumColon: <numcolon> {{}} ;
Prim : <prim> {{}} ; 
Adverb : <adverb> {{}} ; 
#Cond : "":["" Block ""]"" {{Cond}};
IfStmt : ""if["" Block 'block' ""]"" {{}};
WhileStmt: ""while["" Block 'block' ""]"" {{}};
DoStmt : ""do["" Block 'block' ""]"" {{}};
List : ""("" Block 'block' "")"" {{}};
Block : Line 'line'* Stmts 'stmts'? {{}} ; 
Assign: LValue 'lv' <assignOp> 'op' Expr 'expr' {{}}; 
LValue : <ident> 'ident' Call 'call'* {{ }};
#LValue: Ident 'ident' Call 'call'* {{}};
#Ident : <lname>|<gname> {{}};
Call : ""["" Block 'args' ""]"" {{}};
Signature : ""["" <ident> 'arg'? ("";"" <ident> 'arg')* ""]"" {{}};
Lambda : ""{"" Signature 'sig'? Block 'block' ""}"" {{}};
#Return : "":"" Expr {{Return}};"
]

{ #category : #generated }
K3Parser class >> reduceTable [
^#(
	#(24 0 #reduceActionForLine__line___1: 904193 false) 
	#(29 0 #reduceActionFor_____Expr__expr____1: 1145857 false) 
	#(23 1 #reduceActionForCode1: 897025 false) 
	#(49 0 #reduceActionForLine__line___1: 1975297 false) 
	#(25 1 #reduceActionForLine1: 1004545 false) 
	#(52 0 #reduceActionForLine__line___1: 2094081 false) 
	#(42 1 #reduceActionForPrim1: 1723393 false) 
	#(40 1 #reduceActionForString1: 1669121 false) 
	#(26 1 #liftFirstValue: 1103873 false) 
	#(38 1 #reduceActionForNumber1: 1607681 false) 
	#(39 1 #reduceActionForSymbol1: 1643521 false) 
	#(41 1 #reduceActionForNumColon1: 1694721 false) 
	#(24 2 #reduceActionForLine__line___2: 904194 false) 
	#(23 2 #reduceActionForCode2: 897026 false) 
	#(23 2 #reduceActionForCode3: 897027 false) 
	#(27 1 #reduceActionForStmts1: 1125377 false) 
	#(30 1 #liftFirstValue: 1172481 false) 
	#(31 1 #reduceActionForChain1: 1207297 false) 
	#(32 1 #reduceActionForItem__item__1: 1215489 false) 
	#(33 1 #liftFirstValue: 1235971 false) 
	#(33 1 #liftFirstValue: 1235973 false) 
	#(33 1 #liftFirstValue: 1235972 false) 
	#(33 1 #liftFirstValue: 1235974 false) 
	#(33 1 #liftFirstValue: 1235975 false) 
	#(33 1 #liftFirstValue: 1235970 false) 
	#(33 1 #liftFirstValue: 1235969 false) 
	#(33 1 #liftFirstValue: 1235977 false) 
	#(33 1 #liftFirstValue: 1235978 false) 
	#(33 1 #liftFirstValue: 1235979 false) 
	#(33 1 #liftFirstValue: 1235976 false) 
	#(33 1 #liftFirstValue: 1235982 false) 
	#(33 1 #liftFirstValue: 1235981 false) 
	#(33 1 #liftFirstValue: 1235980 false) 
	#(48 1 #reduceActionForBlock1: 1967105 false) 
	#(56 0 #reduceActionFor_____Expr__expr____1: 2255873 false) 
	#(51 2 #reduceActionForLValue1: 2068481 false) 
	#(25 2 #reduceActionForLine2: 1004546 false) 
	#(25 2 #reduceActionForLine3: 1004547 false) 
	#(23 3 #reduceActionForCode4: 897028 false) 
	#(28 1 #reduceActionFor_____Expr__expr___1: 1145857 false) 
	#(29 2 #reduceActionFor_____Expr__expr____2: 1145858 false) 
	#(27 2 #reduceActionForStmts2: 1125378 false) 
	#(32 2 #reduceActionForLine__line___2: 1215490 false) 
	#(34 2 #reduceActionForNumArray1: 1511425 false) 
	#(35 1 #reduceActionForItem__item__1: 1537025 false) 
	#(36 2 #reduceActionForSymArray1: 1559553 false) 
	#(37 1 #reduceActionForItem__item__1: 1585153 false) 
	#(47 3 #reduceActionForList1: 1931265 false) 
	#(49 2 #reduceActionForLine__line___2: 1975298 false) 
	#(48 2 #reduceActionForBlock2: 1967106 false) 
	#(46 3 #reduceActionForDoStmt1: 1891329 false) 
	#(44 3 #reduceActionForIfStmt1: 1806337 false) 
	#(45 3 #reduceActionForWhileStmt1: 1846273 false) 
	#(57 3 #reduceActionForLambda1: 2287617 false) 
	#(52 2 #reduceActionForLine__line___2: 2094082 false) 
	#(25 3 #reduceActionForLine4: 1004548 false) 
	#(28 2 #reduceActionFor_____Expr__expr___2: 1145858 false) 
	#(35 2 #reduceActionForLine__line___2: 1537026 false) 
	#(37 2 #reduceActionForLine__line___2: 1585154 false) 
	#(50 3 #reduceActionForAssign1: 2012161 false) 
	#(54 3 #reduceActionForSignature1: 2224129 false) 
	#(56 2 #reduceActionFor_____Expr__expr____2: 2255874 false) 
	#(57 4 #reduceActionForLambda2: 2287618 false) 
	#(54 4 #reduceActionForSignature2: 2224130 false) 
	#(55 2 #reduceActionFor_____Expr__expr___2: 2255873 false) 
	#(53 3 #reduceActionForCall1: 2189313 false)
	).
]

{ #category : #generated }
K3Parser class >> scannerClass [
	^K3Scanner
]

{ #category : #generated }
K3Parser class >> startingStateForCode [
	^ 1
]

{ #category : #generated }
K3Parser class >> symbolNames [
	^ #('"("' '")"' '";"' '"["' '"]"' '"do["' '"if["' '"while["' '"{"' '"}"' '<whitespace>' '<nl>' '<ident>' '<prim>' '<string>' '<comment>' '<adverb>' '<number>' '<symbol>' '<assignOp>' '<numcolon>' 'B e g i n' 'Code' 'Line ''line'' *' 'Line' 'Comment' 'Stmts' '(";" Expr ''expr''?)' '(";" Expr ''expr''?)*' 'Expr' 'Chain' 'Item ''item''+' 'Item' 'NumArray' 'Number ''num'' +' 'SymArray' 'Symbol ''sym'' +' 'Number' 'Symbol' 'String' 'NumColon' 'Prim' 'Adverb' 'IfStmt' 'WhileStmt' 'DoStmt' 'List' 'Block' 'Line ''line''*' 'Assign' 'LValue' 'Call ''call''*' 'Call' 'Signature' '(";" <ident> ''arg'')' '(";" <ident> ''arg'')*' 'Lambda' 'E O F' 'error')
]

{ #category : #generated }
K3Parser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #K3CodeNode #K3CodeNode #OrderedCollection #K3LineNode #SmaCCToken #K3StmtsNode #OrderedCollection #OrderedCollection #K3ChainNode #K3ChainNode #OrderedCollection #K3CodeNode #K3NumArrayNode #OrderedCollection #K3SymArrayNode #OrderedCollection #K3NumberNode #K3SymbolNode #K3StringNode #K3NumColonNode #K3PrimNode #K3AdverbNode #K3IfStmtNode #K3WhileStmtNode #K3DoStmtNode #K3ListNode #K3BlockNode #OrderedCollection #K3AssignNode #K3LValueNode #OrderedCollection #K3CallNode #K3SignatureNode #OrderedCollection #OrderedCollection #K3LambdaNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
K3Parser class >> transitionTable [
^#(
#[1 0 6 0 1 0 6 0 3 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 18 0 6 0 19 0 6 0 21 0 9 0 23 0 13 0 24 0 6 0 58] 
#[0 0 0 0 58] 
#[1 0 17 0 1 0 10 0 3 0 21 0 6 0 25 0 7 0 29 0 8 0 33 0 9 0 37 0 12 0 41 0 13 0 45 0 14 0 49 0 15 0 73 0 16 0 57 0 18 0 61 0 19 0 65 0 21 0 69 0 25 0 73 0 26 0 77 0 27 0 81 0 29 0 85 0 30 0 85 0 31 0 93 0 32 0 97 0 33 0 97 0 34 0 97 0 36 0 109 0 38 0 113 0 39 0 97 0 40 0 97 0 41 0 97 0 42 0 97 0 44 0 97 0 45 0 97 0 46 0 97 0 47 0 97 0 50 0 149 0 51 0 97 0 57 0 14 0 58] 
#[1 0 18 0 1 0 18 0 2 0 18 0 3 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 18 0 18 0 19 0 18 0 21 0 157 0 48 0 161 0 49] 
#[1 0 18 0 1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 18 0 18 0 19 0 18 0 21 0 165 0 48 0 161 0 49] 
#[1 0 18 0 1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 18 0 18 0 19 0 18 0 21 0 169 0 48 0 161 0 49] 
#[1 0 18 0 1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 18 0 18 0 19 0 18 0 21 0 173 0 48 0 161 0 49] 
#[1 0 18 0 1 0 18 0 3 0 177 0 4 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 18 0 18 0 19 0 18 0 21 0 181 0 48 0 161 0 49 0 185 0 54] 
#[0 0 22 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 26 0 1 0 26 0 2 0 26 0 3 0 26 0 4 0 26 0 5 0 26 0 6 0 26 0 7 0 26 0 8 0 26 0 9 0 26 0 10 0 26 0 12 0 26 0 13 0 26 0 14 0 26 0 15 0 26 0 16 0 26 0 18 0 26 0 19 0 26 0 20 0 26 0 21 0 189 0 52 0 26 0 58] 
#[0 0 30 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 34 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 38 0 12 0 58] 
#[0 0 42 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 46 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 50 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 54 0 1 0 3 0 6 0 7 0 8 0 9 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 193 0 12 0 58 0 58] 
#[1 0 197 0 12 0 201 0 16 0 201 0 26 0 62 0 58] 
#[1 0 66 0 2 0 205 0 3 0 66 0 5 0 66 0 10 0 66 0 12 0 66 0 16 0 209 0 28 0 66 0 58] 
#[1 0 10 0 2 0 10 0 3 0 10 0 5 0 10 0 10 0 10 0 12 0 10 0 16 0 213 0 29 0 10 0 58] 
#[0 0 70 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 17 0 1 0 74 0 2 0 74 0 3 0 74 0 5 0 21 0 6 0 25 0 7 0 29 0 8 0 33 0 9 0 74 0 10 0 74 0 12 0 41 0 13 0 45 0 14 0 49 0 15 0 74 0 16 0 57 0 18 0 61 0 19 0 65 0 21 0 217 0 33 0 217 0 34 0 217 0 36 0 109 0 38 0 113 0 39 0 217 0 40 0 217 0 41 0 217 0 42 0 217 0 44 0 217 0 45 0 217 0 46 0 217 0 47 0 217 0 50 0 149 0 51 0 217 0 57 0 74 0 58] 
#[0 0 78 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 82 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 86 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 90 0 1 0 90 0 2 0 90 0 3 0 90 0 5 0 90 0 6 0 90 0 7 0 90 0 8 0 90 0 9 0 90 0 10 0 90 0 12 0 90 0 13 0 90 0 14 0 90 0 15 0 90 0 16 0 57 0 18 0 90 0 19 0 90 0 21 0 221 0 35 0 225 0 38 0 90 0 58] 
#[1 0 94 0 1 0 94 0 2 0 94 0 3 0 94 0 5 0 94 0 6 0 94 0 7 0 94 0 8 0 94 0 9 0 94 0 10 0 94 0 12 0 94 0 13 0 94 0 14 0 94 0 15 0 94 0 16 0 94 0 18 0 61 0 19 0 94 0 21 0 229 0 37 0 233 0 39 0 94 0 58] 
#[0 0 98 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 102 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 106 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 110 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 114 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 118 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 122 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 126 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 130 0 1 0 130 0 2 0 130 0 3 0 130 0 5 0 130 0 6 0 130 0 7 0 130 0 8 0 130 0 9 0 130 0 10 0 130 0 12 0 130 0 13 0 130 0 14 0 130 0 15 0 130 0 16 0 130 0 18 0 130 0 19 0 237 0 20 0 130 0 21 0 130 0 58] 
#[0 0 134 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 241 0 2] 
#[1 0 17 0 1 0 138 0 2 0 10 0 3 0 138 0 5 0 21 0 6 0 25 0 7 0 29 0 8 0 33 0 9 0 138 0 10 0 37 0 12 0 41 0 13 0 45 0 14 0 49 0 15 0 249 0 16 0 57 0 18 0 61 0 19 0 65 0 21 0 245 0 25 0 249 0 26 0 253 0 27 0 81 0 29 0 85 0 30 0 85 0 31 0 93 0 32 0 97 0 33 0 97 0 34 0 97 0 36 0 109 0 38 0 113 0 39 0 97 0 40 0 97 0 41 0 97 0 42 0 97 0 44 0 97 0 45 0 97 0 46 0 97 0 47 0 97 0 50 0 149 0 51 0 97 0 57] 
#[0 1 1 0 5] 
#[0 1 5 0 5] 
#[0 1 9 0 5] 
#[1 0 142 0 3 0 142 0 5 1 13 0 13 1 17 0 56] 
#[0 1 21 0 10] 
#[1 0 18 0 1 0 18 0 3 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 18 0 18 0 19 0 18 0 21 1 25 0 48 0 161 0 49] 
#[1 0 146 0 1 0 146 0 2 0 146 0 3 1 29 0 4 0 146 0 5 0 146 0 6 0 146 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 146 0 12 0 146 0 13 0 146 0 14 0 146 0 15 0 146 0 16 0 146 0 18 0 146 0 19 0 146 0 20 0 146 0 21 1 33 0 53 0 146 0 58] 
#[0 0 150 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 154 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 1 37 0 12 0 158 0 58] 
#[1 0 17 0 1 0 162 0 2 0 162 0 3 0 162 0 5 0 21 0 6 0 25 0 7 0 29 0 8 0 33 0 9 0 162 0 10 0 162 0 12 0 41 0 13 0 45 0 14 0 49 0 15 0 162 0 16 0 57 0 18 0 61 0 19 0 65 0 21 1 41 0 30 1 41 0 31 0 93 0 32 0 97 0 33 0 97 0 34 0 97 0 36 0 109 0 38 0 113 0 39 0 97 0 40 0 97 0 41 0 97 0 42 0 97 0 44 0 97 0 45 0 97 0 46 0 97 0 47 0 97 0 50 0 149 0 51 0 97 0 57 0 162 0 58] 
#[0 0 166 0 2 0 3 0 5 0 10 0 12 0 16 0 58] 
#[1 0 170 0 2 0 205 0 3 0 170 0 5 0 170 0 10 0 170 0 12 0 170 0 16 0 209 0 28 0 170 0 58] 
#[0 0 174 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 178 0 1 0 178 0 2 0 178 0 3 0 178 0 5 0 178 0 6 0 178 0 7 0 178 0 8 0 178 0 9 0 178 0 10 0 178 0 12 0 178 0 13 0 178 0 14 0 178 0 15 0 178 0 16 0 57 0 18 0 178 0 19 0 178 0 21 1 45 0 38 0 178 0 58] 
#[0 0 182 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 186 0 1 0 186 0 2 0 186 0 3 0 186 0 5 0 186 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 18 0 61 0 19 0 186 0 21 1 49 0 39 0 186 0 58] 
#[0 0 190 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 17 0 1 0 21 0 6 0 25 0 7 0 29 0 8 0 33 0 9 0 41 0 13 0 45 0 14 0 49 0 15 0 57 0 18 0 61 0 19 0 65 0 21 1 53 0 30 1 53 0 31 0 93 0 32 0 97 0 33 0 97 0 34 0 97 0 36 0 109 0 38 0 113 0 39 0 97 0 40 0 97 0 41 0 97 0 42 0 97 0 44 0 97 0 45 0 97 0 46 0 97 0 47 0 97 0 50 0 149 0 51 0 97 0 57] 
#[0 0 194 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 198 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21] 
#[0 0 193 0 12] 
#[1 0 202 0 2 0 202 0 5 0 202 0 10 0 197 0 12 1 57 0 16 1 57 0 26] 
#[0 0 206 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 210 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 214 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[1 0 142 0 3 0 142 0 5 1 61 0 56] 
#[1 1 65 0 3 1 69 0 5 1 73 0 55] 
#[0 0 218 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 1 77 0 10] 
#[1 0 18 0 1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 18 0 18 0 19 0 18 0 21 1 81 0 48 0 161 0 49] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 58] 
#[0 0 226 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 230 0 2 0 3 0 5 0 10 0 12 0 16 0 58] 
#[0 0 234 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 238 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 0 242 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 1 37 0 12] 
#[1 1 65 0 3 1 85 0 5 1 73 0 55] 
#[0 1 89 0 13] 
#[0 0 246 0 1 0 3 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21] 
#[0 0 250 0 3 0 5] 
#[0 0 254 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21 0 58] 
#[0 1 93 0 5] 
#[0 1 2 0 1 0 3 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 21] 
#[0 1 6 0 3 0 5] 
#[0 1 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 16 0 18 0 19 0 20 0 21 0 58]
	).
]

{ #category : #accessing }
K3Parser >> assignExample [ 
  <gtExample>
  ^ K3Parser parse: 'a: abc: 123'.
]

{ #category : #accessing }
K3Parser >> exprExample [ 
  <gtExample>
  ^ K3Parser parse: 'r<5*3'
]

{ #category : #accessing }
K3Parser >> helloExample [
  <gtExample>
  |k3 nl|
  nl := Character linefeed asString.
  k3 :=
'f:{[name] `0:,"Hello, ",$name}
 f[`world]'.
  ^ K3Parser parse: k3.
]

{ #category : #accessing }
K3Parser >> listExample [ 
  <gtExample>
  ^ K3Parser parse: '(1 2 3;`symbol;"string")'
]

{ #category : #accessing }
K3Parser >> numbersExample [ 
  <gtExample>
  ^ K3Parser parse: '0 -123 4.56 -7.89'.
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForAssign1: nodes [
	| result |
	result := K3AssignNode new.
	result lv: (nodes at: 1).
	result op: (nodes at: 2).
	result expr: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForBlock1: nodes [
	| result |
	result := K3BlockNode new.
	result addNodes: (nodes at: 1) to: result lines.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForBlock2: nodes [
	| result |
	result := K3BlockNode new.
	result addNodes: (nodes at: 1) to: result lines.
	result stmts: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForCall1: nodes [
	| result |
	result := K3CallNode new.
	result leftBracketToken: (nodes at: 1).
	result args: (nodes at: 2).
	result rightBracketToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForChain1: nodes [
	| result |
	result := K3ChainNode new.
	result addNodes: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForCode1: nodes [
	| result |
	result := K3CodeNode new.
	result addNodes: (nodes at: 1) to: result lines.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForCode2: nodes [
	| result |
	result := K3CodeNode new.
	result addNodes: (nodes at: 1) to: result lines.
	result cmt: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForCode3: nodes [
	| result |
	result := K3CodeNode new.
	result addNodes: (nodes at: 1) to: result lines.
	result stmts: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForCode4: nodes [
	| result |
	result := K3CodeNode new.
	result addNodes: (nodes at: 1) to: result lines.
	result stmts: (nodes at: 2).
	result cmt: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForDoStmt1: nodes [
	| result |
	result := K3DoStmtNode new.
	result doLeftBracketToken: (nodes at: 1).
	result block: (nodes at: 2).
	result rightBracketToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForIfStmt1: nodes [
	| result |
	result := K3IfStmtNode new.
	result ifLeftBracketToken: (nodes at: 1).
	result block: (nodes at: 2).
	result rightBracketToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForItem__item__1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLValue1: nodes [
	| result |
	result := K3LValueNode new.
	result ident: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result calls.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLambda1: nodes [
	| result |
	result := K3LambdaNode new.
	result leftBraceToken: (nodes at: 1).
	result block: (nodes at: 2).
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLambda2: nodes [
	| result |
	result := K3LambdaNode new.
	result leftBraceToken: (nodes at: 1).
	result sig: (nodes at: 2).
	result block: (nodes at: 3).
	result rightBraceToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLine1: nodes [
	| result |
	result := K3LineNode new.
	result nlToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLine2: nodes [
	| result |
	result := K3LineNode new.
	result cmt: (nodes at: 1).
	result nlToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLine3: nodes [
	| result |
	result := K3LineNode new.
	result stmts: (nodes at: 1).
	result nlToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLine4: nodes [
	| result |
	result := K3LineNode new.
	result stmts: (nodes at: 1).
	result cmt: (nodes at: 2).
	result nlToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLine__line___1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForLine__line___2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForList1: nodes [
	| result |
	result := K3ListNode new.
	result leftParenToken: (nodes at: 1).
	result block: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForNumArray1: nodes [
	| result |
	result := K3NumArrayNode new.
	result addNode: (nodes at: 1) to: result nums.
	result addNodes: (nodes at: 2) to: result nums.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForNumColon1: nodes [
	| result |
	result := K3NumColonNode new.
	result numcolonToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForNumber1: nodes [
	| result |
	result := K3NumberNode new.
	result number: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForPrim1: nodes [
	| result |
	result := K3PrimNode new.
	result primToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForSignature1: nodes [
	| result |
	result := K3SignatureNode new.
	result leftBracketToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result semicolonTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result args.
	result rightBracketToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForSignature2: nodes [
	| result |
	result := K3SignatureNode new.
	result leftBracketToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result args.
	result addTokens: ((nodes at: 3) at: 1) to: result semicolonTokens.
	result addTokens: ((nodes at: 3) at: 2) to: result args.
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForStmts1: nodes [
	| result |
	result := K3StmtsNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result semicolonTokens.
	result addNodes: ((nodes at: 1) at: 2) to: result exprs.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForStmts2: nodes [
	| result |
	result := K3StmtsNode new.
	result addNode: (nodes at: 1) to: result exprs.
	result addTokens: ((nodes at: 2) at: 1) to: result semicolonTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result exprs.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForString1: nodes [
	| result |
	result := K3StringNode new.
	result stringToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForSymArray1: nodes [
	| result |
	result := K3SymArrayNode new.
	result addNode: (nodes at: 1) to: result syms.
	result addNodes: (nodes at: 2) to: result syms.
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForSymbol1: nodes [
	| result |
	result := K3SymbolNode new.
	result symbolToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionForWhileStmt1: nodes [
	| result |
	result := K3WhileStmtNode new.
	result whileLeftBracketToken: (nodes at: 1).
	result block: (nodes at: 2).
	result rightBracketToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionFor_____Expr__expr___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionFor_____Expr__expr___2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionFor_____Expr__expr____1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
K3Parser >> reduceActionFor_____Expr__expr____2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #accessing }
K3Parser >> stmtsExample [ 
  <gtExample>
  ^ K3Parser parse: 'if[r:1
  do[n:3; i:0; while[i<n;r,:i;i+:1]]]'
]

{ #category : #accessing }
K3Parser >> symbolsExample [ 
  <gtExample>
  ^ K3Parser parse: '` `apple `"banana cream pie"'
]
