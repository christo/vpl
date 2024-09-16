module Vplkb where


-- experiment in using haskell to define a knowledge base of info about 
-- visual programming languages (VPLs)
--
--

import Data.List

-- TODO generate markdown doc from the knowledge base

-- replace each occurrence of a with b
replace :: Eq a => a -> a -> [a] -> [a]
replace a b = map $ \c -> if c == a then b else c

-- the knowledge base is a list of VPLs
type Kb = [Vpl] 
type Name = String
type Url = String
data Desc = Desc Tag String

data Vpl = Vpl { vname::Name, url::Url, tags::[Tag] } 
instance Show Vpl where
    show (Vpl name url ts) = unwords $ [name, url] ++ map show ts 

-- tag can be niladic or unary 
-- TODO don't like having different constructor names
data Tag 
    = Tag { name :: Name, description :: String }
    | TagT { name :: Name, value :: String, description :: String }
instance Show Tag where
    show (Tag name desc) = replace ' ' '-' name
    show tag = replace ' ' '-' (name tag) ++ ":" ++ value tag

-- partials
domain   = TagT "domain"
il       = TagT "implementation language" 
branded  = TagT "marketed as"

-- tags
arduino      =  domain  "arduino" "can be used to program arduinos"
brickt       =  Tag     "brick" "Uses lego brick construction and layout"
dflow        =  Tag     "dataflow" "Pipes and filters layout"
ddata        =  domain  "data" "Intended to be used for data analysis"
defunct      =  Tag     "defunct" "The project has been abandoned"
kids         =  Tag     "kids" "Made for kids education"
locode       =  branded "locode" "Marketed with label: locode"
mm           =  domain  "interactive multimedia" "for making games and animations"
nocode       =  branded "nocode" "Marketed with label: nocode"
oss          =  Tag     "open source" "Is available under a good Open Source license"
proprietary  =  Tag     "proprietary" "Is not open source, only proprietary"
ssheet       =  domain  "spreadsheet" "To be used for spreadsheet applications"
synth        =  domain  "sound synthesis" "To be used for sound synthesis"
midi         =  domain  "midi sequencing" "To be used for sequencing music with midi"
vpldev       =  domain  "vpl dev" "For constructing visual programming langauges"
shell        =  domain  "shell" "can be used as a shell"
image        =  domain  "image processing" "For image manipulation and compositing"
gpu          =  domain  "gpu" "Targeting the GPU"
library      =  Tag     "library" "Packaged as a programming library"
saas         =  Tag     "saas" "Delivered as SAAS"
csharp       =  Tag     "c#" "implemented in c#"
creativecode =  branded     "creative code" "marketed as for creative code"

-- function for defining a tag and its def but returns the tag for symbol binding
desc :: Desc -> Tag
desc (Desc t s) = t

addTag :: Tag -> String -> String -> [Tag] -> Vpl
addTag t name url tags = Vpl name url $ t:tags
dataflow :: String -> String -> [Tag] -> Vpl
dataflow = addTag dflow 
brick = addTag brickt

kb = [dataflow "Enso" "https://enso.org/" [ddata, proprietary ]
    ,dataflow "KNIME" "https://www.knime.com/knime-analytics-platform" [ddata]
    ,dataflow "Nodes" "https://nodes.io/story/" []
    ,dataflow "NodeRed" "https://nodered.org/" [oss]
    ,dataflow "Noisecraft" "https://noisecraft.app/" [synth]
    ,dataflow "Userland" "https://hisham.hm/userland/" [ ssheet, synth, shell ]
    ,dataflow "Max/MSP" "https://cycling74.com/products/max" [synth, midi, proprietary]
    ,dataflow "Pure Data" "https://puredata.info/" [synth, midi, oss]
    ,dataflow "Shake" "https://en.wikipedia.org/wiki/Shake_(software)" [defunct, image]
    ,dataflow "Flume" "https://flume.dev/" [vpldev]
    ,dataflow "Fuse" "https://www.thefuselab.io/" [gpu, library]
    ,dataflow "vvvv" "https://visualprogramming.net/" [csharp, creativecode]
    ,brick    "Scratch" "https://scratch.mit.edu" [kids, mm, oss ]
    ]

-- debug dump of knowledge base
dumpKb = putStrLn $ unlines $ map show kb
