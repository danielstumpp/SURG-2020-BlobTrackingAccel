set lang "C++"
set moduleName "getTrackerID_hw"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName1 "trackerPool"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 16]
set Interface1 "wire"
set structMem1 ""
set PortName10 "state"
set BitWidth10 "2"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set DataType10 "[list State enum 1]"
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set PortName11 "eventCount"
set BitWidth11 "32"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set DataType11 "int"
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend structMem1 $Port11
set PortName12 "resetTime"
set BitWidth12 "32"
set ArrayOpt12 ""
set Const12 "0"
set Volatile12 "0"
set Pointer12 "0"
set Reference12 "0"
set Dims12 [list 0]
set Interface12 "wire"
set DataType12 "long unsigned int"
set Port12 [list $PortName12 $Interface12 $DataType12 $Pointer12 $Dims12 $Const12 $Volatile12 $ArrayOpt12]
lappend structMem1 $Port12
set PortName13 "x"
set BitWidth13 "64"
set ArrayOpt13 ""
set Const13 "0"
set Volatile13 "0"
set Pointer13 "0"
set Reference13 "0"
set Dims13 [list 0]
set Interface13 "wire"
set DataType13 "double"
set Port13 [list $PortName13 $Interface13 $DataType13 $Pointer13 $Dims13 $Const13 $Volatile13 $ArrayOpt13]
lappend structMem1 $Port13
set PortName14 "y"
set BitWidth14 "64"
set ArrayOpt14 ""
set Const14 "0"
set Volatile14 "0"
set Pointer14 "0"
set Reference14 "0"
set Dims14 [list 0]
set Interface14 "wire"
set DataType14 "double"
set Port14 [list $PortName14 $Interface14 $DataType14 $Pointer14 $Dims14 $Const14 $Volatile14 $ArrayOpt14]
lappend structMem1 $Port14
set PortName15 "prevX"
set BitWidth15 "64"
set ArrayOpt15 ""
set Const15 "0"
set Volatile15 "0"
set Pointer15 "0"
set Reference15 "0"
set Dims15 [list 0]
set Interface15 "wire"
set DataType15 "double"
set Port15 [list $PortName15 $Interface15 $DataType15 $Pointer15 $Dims15 $Const15 $Volatile15 $ArrayOpt15]
lappend structMem1 $Port15
set PortName16 "prevY"
set BitWidth16 "64"
set ArrayOpt16 ""
set Const16 "0"
set Volatile16 "0"
set Pointer16 "0"
set Reference16 "0"
set Dims16 [list 0]
set Interface16 "wire"
set DataType16 "double"
set Port16 [list $PortName16 $Interface16 $DataType16 $Pointer16 $Dims16 $Const16 $Volatile16 $ArrayOpt16]
lappend structMem1 $Port16
set PortName17 "predX"
set BitWidth17 "64"
set ArrayOpt17 ""
set Const17 "0"
set Volatile17 "0"
set Pointer17 "0"
set Reference17 "0"
set Dims17 [list 0]
set Interface17 "wire"
set DataType17 "double"
set Port17 [list $PortName17 $Interface17 $DataType17 $Pointer17 $Dims17 $Const17 $Volatile17 $ArrayOpt17]
lappend structMem1 $Port17
set PortName18 "predY"
set BitWidth18 "64"
set ArrayOpt18 ""
set Const18 "0"
set Volatile18 "0"
set Pointer18 "0"
set Reference18 "0"
set Dims18 [list 0]
set Interface18 "wire"
set DataType18 "double"
set Port18 [list $PortName18 $Interface18 $DataType18 $Pointer18 $Dims18 $Const18 $Volatile18 $ArrayOpt18]
lappend structMem1 $Port18
set PortName19 "shapeFactor"
set BitWidth19 "64"
set ArrayOpt19 ""
set Const19 "0"
set Volatile19 "0"
set Pointer19 "0"
set Reference19 "0"
set Dims19 [list 0]
set Interface19 "wire"
set DataType19 "double"
set Port19 [list $PortName19 $Interface19 $DataType19 $Pointer19 $Dims19 $Const19 $Volatile19 $ArrayOpt19]
lappend structMem1 $Port19
set PortName110 "origShapeFactor"
set BitWidth110 "64"
set ArrayOpt110 ""
set Const110 "0"
set Volatile110 "0"
set Pointer110 "0"
set Reference110 "0"
set Dims110 [list 0]
set Interface110 "wire"
set DataType110 "double"
set Port110 [list $PortName110 $Interface110 $DataType110 $Pointer110 $Dims110 $Const110 $Volatile110 $ArrayOpt110]
lappend structMem1 $Port110
set PortName111 "posFactor"
set BitWidth111 "64"
set ArrayOpt111 ""
set Const111 "0"
set Volatile111 "0"
set Pointer111 "0"
set Reference111 "0"
set Dims111 [list 0]
set Interface111 "wire"
set DataType111 "double"
set Port111 [list $PortName111 $Interface111 $DataType111 $Pointer111 $Dims111 $Const111 $Volatile111 $ArrayOpt111]
lappend structMem1 $Port111
set PortName112 "velFactor"
set BitWidth112 "64"
set ArrayOpt112 ""
set Const112 "0"
set Volatile112 "0"
set Pointer112 "0"
set Reference112 "0"
set Dims112 [list 0]
set Interface112 "wire"
set DataType112 "double"
set Port112 [list $PortName112 $Interface112 $DataType112 $Pointer112 $Dims112 $Const112 $Volatile112 $ArrayOpt112]
lappend structMem1 $Port112
set PortName113 "clusterSize"
set BitWidth113 "64"
set ArrayOpt113 ""
set Const113 "0"
set Volatile113 "0"
set Pointer113 "0"
set Reference113 "0"
set Dims113 [list 0]
set Interface113 "wire"
set DataType113 "double"
set Port113 [list $PortName113 $Interface113 $DataType113 $Pointer113 $Dims113 $Const113 $Volatile113 $ArrayOpt113]
lappend structMem1 $Port113
set PortName114 "smoothingFactor"
set BitWidth114 "64"
set ArrayOpt114 ""
set Const114 "0"
set Volatile114 "0"
set Pointer114 "0"
set Reference114 "0"
set Dims114 [list 0]
set Interface114 "wire"
set DataType114 "double"
set Port114 [list $PortName114 $Interface114 $DataType114 $Pointer114 $Dims114 $Const114 $Volatile114 $ArrayOpt114]
lappend structMem1 $Port114
set PortName115 "sp1x"
set BitWidth115 "64"
set ArrayOpt115 ""
set Const115 "0"
set Volatile115 "0"
set Pointer115 "0"
set Reference115 "0"
set Dims115 [list 0]
set Interface115 "wire"
set DataType115 "double"
set Port115 [list $PortName115 $Interface115 $DataType115 $Pointer115 $Dims115 $Const115 $Volatile115 $ArrayOpt115]
lappend structMem1 $Port115
set PortName116 "sp2x"
set BitWidth116 "64"
set ArrayOpt116 ""
set Const116 "0"
set Volatile116 "0"
set Pointer116 "0"
set Reference116 "0"
set Dims116 [list 0]
set Interface116 "wire"
set DataType116 "double"
set Port116 [list $PortName116 $Interface116 $DataType116 $Pointer116 $Dims116 $Const116 $Volatile116 $ArrayOpt116]
lappend structMem1 $Port116
set PortName117 "sp1y"
set BitWidth117 "64"
set ArrayOpt117 ""
set Const117 "0"
set Volatile117 "0"
set Pointer117 "0"
set Reference117 "0"
set Dims117 [list 0]
set Interface117 "wire"
set DataType117 "double"
set Port117 [list $PortName117 $Interface117 $DataType117 $Pointer117 $Dims117 $Const117 $Volatile117 $ArrayOpt117]
lappend structMem1 $Port117
set PortName118 "sp2y"
set BitWidth118 "64"
set ArrayOpt118 ""
set Const118 "0"
set Volatile118 "0"
set Pointer118 "0"
set Reference118 "0"
set Dims118 [list 0]
set Interface118 "wire"
set DataType118 "double"
set Port118 [list $PortName118 $Interface118 $DataType118 $Pointer118 $Dims118 $Const118 $Volatile118 $ArrayOpt118]
lappend structMem1 $Port118
set PortName119 "sigmaX"
set BitWidth119 "64"
set ArrayOpt119 ""
set Const119 "0"
set Volatile119 "0"
set Pointer119 "0"
set Reference119 "0"
set Dims119 [list 0]
set Interface119 "wire"
set DataType119 "double"
set Port119 [list $PortName119 $Interface119 $DataType119 $Pointer119 $Dims119 $Const119 $Volatile119 $ArrayOpt119]
lappend structMem1 $Port119
set PortName120 "sigmaY"
set BitWidth120 "64"
set ArrayOpt120 ""
set Const120 "0"
set Volatile120 "0"
set Pointer120 "0"
set Reference120 "0"
set Dims120 [list 0]
set Interface120 "wire"
set DataType120 "double"
set Port120 [list $PortName120 $Interface120 $DataType120 $Pointer120 $Dims120 $Const120 $Volatile120 $ArrayOpt120]
lappend structMem1 $Port120
set PortName121 "sigmaXY"
set BitWidth121 "64"
set ArrayOpt121 ""
set Const121 "0"
set Volatile121 "0"
set Pointer121 "0"
set Reference121 "0"
set Dims121 [list 0]
set Interface121 "wire"
set DataType121 "double"
set Port121 [list $PortName121 $Interface121 $DataType121 $Pointer121 $Dims121 $Const121 $Volatile121 $ArrayOpt121]
lappend structMem1 $Port121
set PortName122 "a"
set BitWidth122 "64"
set ArrayOpt122 ""
set Const122 "0"
set Volatile122 "0"
set Pointer122 "0"
set Reference122 "0"
set Dims122 [list 0]
set Interface122 "wire"
set DataType122 "double"
set Port122 [list $PortName122 $Interface122 $DataType122 $Pointer122 $Dims122 $Const122 $Volatile122 $ArrayOpt122]
lappend structMem1 $Port122
set PortName123 "b"
set BitWidth123 "64"
set ArrayOpt123 ""
set Const123 "0"
set Volatile123 "0"
set Pointer123 "0"
set Reference123 "0"
set Dims123 [list 0]
set Interface123 "wire"
set DataType123 "double"
set Port123 [list $PortName123 $Interface123 $DataType123 $Pointer123 $Dims123 $Const123 $Volatile123 $ArrayOpt123]
lappend structMem1 $Port123
set PortName124 "alpha"
set BitWidth124 "64"
set ArrayOpt124 ""
set Const124 "0"
set Volatile124 "0"
set Pointer124 "0"
set Reference124 "0"
set Dims124 [list 0]
set Interface124 "wire"
set DataType124 "double"
set Port124 [list $PortName124 $Interface124 $DataType124 $Pointer124 $Dims124 $Const124 $Volatile124 $ArrayOpt124]
lappend structMem1 $Port124
set PortName125 "sumFlowX"
set BitWidth125 "64"
set ArrayOpt125 ""
set Const125 "0"
set Volatile125 "0"
set Pointer125 "0"
set Reference125 "0"
set Dims125 [list 0]
set Interface125 "wire"
set DataType125 "double"
set Port125 [list $PortName125 $Interface125 $DataType125 $Pointer125 $Dims125 $Const125 $Volatile125 $ArrayOpt125]
lappend structMem1 $Port125
set PortName126 "sumFlowY"
set BitWidth126 "64"
set ArrayOpt126 ""
set Const126 "0"
set Volatile126 "0"
set Pointer126 "0"
set Reference126 "0"
set Dims126 [list 0]
set Interface126 "wire"
set DataType126 "double"
set Port126 [list $PortName126 $Interface126 $DataType126 $Pointer126 $Dims126 $Const126 $Volatile126 $ArrayOpt126]
lappend structMem1 $Port126
set PortName127 "avgFlowX"
set BitWidth127 "64"
set ArrayOpt127 ""
set Const127 "0"
set Volatile127 "0"
set Pointer127 "0"
set Reference127 "0"
set Dims127 [list 0]
set Interface127 "wire"
set DataType127 "double"
set Port127 [list $PortName127 $Interface127 $DataType127 $Pointer127 $Dims127 $Const127 $Volatile127 $ArrayOpt127]
lappend structMem1 $Port127
set PortName128 "avgFlowY"
set BitWidth128 "64"
set ArrayOpt128 ""
set Const128 "0"
set Volatile128 "0"
set Pointer128 "0"
set Reference128 "0"
set Dims128 [list 0]
set Interface128 "wire"
set DataType128 "double"
set Port128 [list $PortName128 $Interface128 $DataType128 $Pointer128 $Dims128 $Const128 $Volatile128 $ArrayOpt128]
lappend structMem1 $Port128
set PortName129 "activity"
set BitWidth129 "64"
set ArrayOpt129 ""
set Const129 "0"
set Volatile129 "0"
set Pointer129 "0"
set Reference129 "0"
set Dims129 [list 0]
set Interface129 "wire"
set DataType129 "double"
set Port129 [list $PortName129 $Interface129 $DataType129 $Pointer129 $Dims129 $Const129 $Volatile129 $ArrayOpt129]
lappend structMem1 $Port129
set PortName130 "lastTimeStamp"
set BitWidth130 "32"
set ArrayOpt130 ""
set Const130 "0"
set Volatile130 "0"
set Pointer130 "0"
set Reference130 "0"
set Dims130 [list 0]
set Interface130 "wire"
set DataType130 "long unsigned int"
set Port130 [list $PortName130 $Interface130 $DataType130 $Pointer130 $Dims130 $Const130 $Volatile130 $ArrayOpt130]
lappend structMem1 $Port130
set structParameter1 [list ]
set structArgument1 [list ]
set NameSpace1 [list ]
set structIsPacked1 "0"
set DataType1 [list "GaussianTracker" "struct GaussianTracker" $structMem1 1 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "eventX"
set BitWidth2 "32"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "0"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "eventY"
set BitWidth3 "32"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "0"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set DataType3 "int"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "newFlow"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "0"
set Reference4 "0"
set Dims4 [list 2]
set Interface4 "wire"
set DataType4 "double"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "maxProb"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "2"
set Reference5 "1"
set Dims5 [list 0]
set Interface5 "wire"
set DataType5 "double"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName0 "return"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "int"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
