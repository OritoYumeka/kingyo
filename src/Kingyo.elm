module Kingyo exposing (..)
import Svg exposing (Svg)
import Svg.Attributes as Attr
import Svg.Events as Ev
import Types exposing (..)
import KingyoView exposing (kingyoView)

fishView: Kingyo-> Svg Msg
fishView fish =
    case fish.level of
        1->kingyoView fish
        2->namazuView fish
        3->kaniView fish
        4->kameView fish
        _->kingyoView fish
namazuView: Kingyo -> Svg Msg
namazuView kingyo =
    let
        vx = kingyo.v.x
        vy = kingyo.v.y    
        px = kingyo.pos.x
        py = kingyo.pos.y
        transtr = "(" ++ (String.fromInt kingyo.pos.x) ++ 
                    "," ++ (String.fromInt kingyo.pos.y) ++ ")"
        theta = String.fromFloat <| 
                if kingyo.v.x > 0 then
                    180/pi*(atan ((toFloat vy)/(toFloat vx)))
                else
                    180+180/pi*(atan ((toFloat vy)/(toFloat vx)))
     in
    Svg.g [Attr.transform (
                "rotate(" ++ theta ++  
                "," ++ (String.fromInt px) ++ 
                "," ++ (String.fromInt py) ++
                ")" ++
                "translate" ++ transtr
                )
                ]
        [Svg.path [Attr.d "m 0 20 l 30 -20 l -30 -20 l -60 26 l 0 -12 z"
                , Attr.fill "blue"
              ]
            []
        ,Svg.circle [Attr.cx "-10"
                ,Attr.cy "0"
                ,Attr.r "20"
                ,Attr.fill "blue"
                ][]
        ,Svg.circle [Attr.cx "21"
                ,Attr.cy "0"
                ,Attr.r "10"
                ,Attr.fill "pink"
                ][]
        ,Svg.circle [Attr.cx "20"
                ,Attr.cy "0"
                ,Attr.r "7"
                ,Attr.fill "pink"
                ,Attr.stroke "black"
                ][]
        ,Svg.circle [Attr.cx "15"
                ,Attr.cy "10"
                ,Attr.r "10"
                ,Attr.fill "white"
                ][]
        ,Svg.circle [Attr.cx "15"
                ,Attr.cy "10"
                ,Attr.r "8"
                ,Attr.fill "black"
                ][]
        ,Svg.circle [Attr.cx "15"
                ,Attr.cy "-10"
                ,Attr.r "10"
                ,Attr.fill "white"
                ][]        
        ,Svg.circle [Attr.cx "15"
                ,Attr.cy "-10"
                ,Attr.r "8"
                ,Attr.fill "black"
                ][]
        ,Svg.circle [Attr.cx "18"
                ,Attr.cy "10"
                ,Attr.r "2"
                ,Attr.fill "white"
                ][]
        ,Svg.circle [Attr.cx "18"
                ,Attr.cy "-10"
                ,Attr.r "2"
                ,Attr.fill "white"
                ][]
        ,Svg.path [Attr.d "m 0 20 l -10 10 l -10 -5 z"
            , Attr.fill "blue"
            ][]
        ,Svg.path [Attr.d "m 0 -20 l -10 -10 l -10 5 z"
            , Attr.fill "blue"
            ][]
        ]
kaniView: Kingyo -> Svg Msg
kaniView kingyo =
    let
        vx = kingyo.v.x
        vy = kingyo.v.y    
        px = kingyo.pos.x
        py = kingyo.pos.y
        transtr = "(" ++ (String.fromInt kingyo.pos.x) ++ 
                    "," ++ (String.fromInt kingyo.pos.y) ++ ")"
        theta = String.fromFloat <| 
                if kingyo.v.x > 0 then
                    180/pi*(atan ((toFloat vy)/(toFloat vx)))
                else
                    180+180/pi*(atan ((toFloat vy)/(toFloat vx)))
    in
    Svg.g [Attr.transform (
                "rotate(" ++ theta ++  
                "," ++ (String.fromInt px) ++ 
                "," ++ (String.fromInt py) ++
                ")" ++
                "translate" ++ transtr
                )
                ]
        [Svg.ellipse [ Attr.cx "-20"
                   ,Attr.cy "0"
                   ,Attr.rx "30"
                   ,Attr.ry "60"
                   ,Attr.fill "red"
                  ] []
        
        ,Svg.ellipse [ Attr.cx "45"
                   ,Attr.cy "55"
                   ,Attr.rx "20"
                   ,Attr.ry "10"
                   ,Attr.fill "red"
                  ] []
        ,Svg.ellipse [ Attr.cx "45"
                   ,Attr.cy "-55"
                   ,Attr.rx "20"
                   ,Attr.ry "10"
                   ,Attr.fill "red"
                  ] []
        ,Svg.line   [Attr.x1 "0"
                ,Attr.y1 "40"
                ,Attr.x2 "40"
                ,Attr.y2 "60"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "10" 
                ] []
        ,Svg.line   [Attr.x1 "0"
                ,Attr.y1 "-40"
                ,Attr.x2 "40"
                ,Attr.y2 "-60"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "10" 
                ] []
        ,Svg.line   [Attr.x1 "40"
                ,Attr.y1 "-55"
                ,Attr.x2 "60"
                ,Attr.y2 "-55"
                ,Attr.stroke "black"
                ,Attr.strokeWidth "1" 
                ] []
        ,Svg.line   [Attr.x1 "40"
                ,Attr.y1 "55"
                ,Attr.x2 "60"
                ,Attr.y2 "55"
                ,Attr.stroke "black"
                ,Attr.strokeWidth "1" 
                ] []
        ,Svg.line   [Attr.x1 "-40"
                ,Attr.y1 "40"
                ,Attr.x2 "-70"
                ,Attr.y2 "60"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-80"
                ,Attr.y1 "40"
                ,Attr.x2 "-68"
                ,Attr.y2 "60"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-40"
                ,Attr.y1 "-40"
                ,Attr.x2 "-70"
                ,Attr.y2 "-60"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-80"
                ,Attr.y1 "-40"
                ,Attr.x2 "-68"
                ,Attr.y2 "-60"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-40"
                ,Attr.y1 "-30"
                ,Attr.x2 "-70"
                ,Attr.y2 "-50"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-80"
                ,Attr.y1 "-30"
                ,Attr.x2 "-68"
                ,Attr.y2 "-50"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-30"
                ,Attr.y1 "50"
                ,Attr.x2 "-70"
                ,Attr.y2 "70"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-80"
                ,Attr.y1 "50"
                ,Attr.x2 "-68"
                ,Attr.y2 "70"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-30"
                ,Attr.y1 "-50"
                ,Attr.x2 "-70"
                ,Attr.y2 "-70"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-80"
                ,Attr.y1 "-50"
                ,Attr.x2 "-68"
                ,Attr.y2 "-70"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-30"
                ,Attr.y1 "30"
                ,Attr.x2 "-70"
                ,Attr.y2 "50"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-80"
                ,Attr.y1 "30"
                ,Attr.x2 "-68"
                ,Attr.y2 "50"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-30"
                ,Attr.y1 "20"
                ,Attr.x2 "-70"
                ,Attr.y2 "40"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-80"
                ,Attr.y1 "20"
                ,Attr.x2 "-68"
                ,Attr.y2 "40"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-30"
                ,Attr.y1 "-20"
                ,Attr.x2 "-70"
                ,Attr.y2 "-40"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.line   [Attr.x1 "-80"
                ,Attr.y1 "-20"
                ,Attr.x2 "-68"
                ,Attr.y2 "-40"
                ,Attr.stroke "red"
                ,Attr.strokeWidth "5" 
                ] []
        ,Svg.circle [Attr.cx "15"
                ,Attr.cy "10"
                ,Attr.r "10"
                ,Attr.fill "white"
                ][]
        ,Svg.circle [Attr.cx "15"
                ,Attr.cy "10"
                ,Attr.r "8"
                ,Attr.fill "black"
                ][]
        ,Svg.circle [Attr.cx "15"
                ,Attr.cy "-10"
                ,Attr.r "10"
                ,Attr.fill "white"
                ][]        
        ,Svg.circle [Attr.cx "15"
                ,Attr.cy "-10"
                ,Attr.r "8"
                ,Attr.fill "black"
                ][]
        ,Svg.circle [Attr.cx "18"
                ,Attr.cy "10"
                ,Attr.r "2"
                ,Attr.fill "white"
                ][]
        ,Svg.circle [Attr.cx "18"
                ,Attr.cy "-10"
                ,Attr.r "2"
                ,Attr.fill "white"
                ][] 
        ]
kameView: Kingyo -> Svg Msg
kameView kingyo =
    let
        vx = kingyo.v.x
        vy = kingyo.v.y    
        px = kingyo.pos.x
        py = kingyo.pos.y
        transtr = "(" ++ (String.fromInt kingyo.pos.x) ++ 
                    "," ++ (String.fromInt kingyo.pos.y) ++ ")"
        theta = String.fromFloat <| 
                if kingyo.v.x > 0 then
                    180/pi*(atan ((toFloat vy)/(toFloat vx)))
                else
                    180+180/pi*(atan ((toFloat vy)/(toFloat vx)))
    in
    Svg.g [Attr.transform (
                "rotate(" ++ theta ++  
                "," ++ (String.fromInt px) ++ 
                "," ++ (String.fromInt py) ++
                ")" ++
                "translate" ++ transtr
                )
                ]
        [Svg.ellipse[Attr.cx "-10"
                ,Attr.cy "0"
                ,Attr.rx "50"
                ,Attr.ry "40"
                ,Attr.fill "green"
                ][]
        ,Svg.ellipse[Attr.cx "45"
                ,Attr.cy "0"
                ,Attr.rx "20"
                ,Attr.ry "10"
                ,Attr.fill "green"
                ][]
        ,Svg.circle [Attr.cx "50"
                ,Attr.cy "8"
                ,Attr.r "7"
                ,Attr.fill "white"
                ][]
        ,Svg.circle [Attr.cx "50"
                ,Attr.cy "8"
                ,Attr.r "5"
                ,Attr.fill "black"
                ][]
        ,Svg.circle [Attr.cx "50"
                ,Attr.cy "8"
                ,Attr.r "1"
                ,Attr.fill "white"
                ][]
        ,Svg.circle [Attr.cx "50"
                ,Attr.cy "-8"
                ,Attr.r "7"
                ,Attr.fill "white"
                ][]
        ,Svg.circle [Attr.cx "50"
                ,Attr.cy "-8"
                ,Attr.r "5"
                ,Attr.fill "black"
                ][]
        ,Svg.circle [Attr.cx "50"
                ,Attr.cy "-8"
                ,Attr.r "1"
                ,Attr.fill "white"
                ][]
        ,Svg.ellipse[Attr.cx "20"
                ,Attr.cy "30"
                ,Attr.rx "10"
                ,Attr.ry "20"
                ,Attr.fill "green"
                ][]
        ,Svg.ellipse[Attr.cx "20"
                ,Attr.cy "-30"
                ,Attr.rx "10"
                ,Attr.ry "20"
                ,Attr.fill "green"
                ][]
        ,Svg.ellipse[Attr.cx "-30"
                ,Attr.cy "30"
                ,Attr.rx "10"
                ,Attr.ry "20"
                ,Attr.fill "green"
                ][]
        ,Svg.ellipse[Attr.cx "-30"
                ,Attr.cy "-30"
                ,Attr.rx "10"
                ,Attr.ry "20"
                ,Attr.fill "green"
                ][]
        ,Svg.ellipse[Attr.cx "-60"
                ,Attr.cy "0"
                ,Attr.rx "20"
                ,Attr.ry "5"
                ,Attr.fill "green"
                ][]
        ,Svg.line   [Attr.x1 "30"
                ,Attr.y1 "-20"
                ,Attr.x2 "-45"
                ,Attr.y2 "-20"
                ,Attr.stroke "black"
                ,Attr.strokeWidth "1" 
                ] []
        ,Svg.line   [Attr.x1 "30"
                ,Attr.y1 "0"
                ,Attr.x2 "-45"
                ,Attr.y2 "0"
                ,Attr.stroke "black"
                ,Attr.strokeWidth "1" 
                ] []
        ,Svg.line   [Attr.x1 "30"
                ,Attr.y1 "20"
                ,Attr.x2 "-45"
                ,Attr.y2 "20"
                ,Attr.stroke "black"
                ,Attr.strokeWidth "1" 
                ] []
        ,Svg.line   [Attr.x1 "20"
                ,Attr.y1 "-30"
                ,Attr.x2 "20"
                ,Attr.y2 "30"
                ,Attr.stroke "black"
                ,Attr.strokeWidth "1" 
                ] []
        ,Svg.line   [Attr.x1 "-10"
                ,Attr.y1 "-30"
                ,Attr.x2 "-10"
                ,Attr.y2 "30"
                ,Attr.stroke "black"
                ,Attr.strokeWidth "1" 
                ] []
        ,Svg.line   [Attr.x1 "-40"
                ,Attr.y1 "-30"
                ,Attr.x2 "-40"
                ,Attr.y2 "30"
                ,Attr.stroke "black"
                ,Attr.strokeWidth "1" 
                ] []
        ]
        
