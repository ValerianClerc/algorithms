module DataStructures.Graph where

import           Data.List

newtype Graph = Graph { graphNodes :: [Node] }

data Node = Node { nodeNeighbors :: [Node], nodeID :: NodeID }

type NodeID = Int

instance Show Graph where
  show (Graph nodes) = "Graph: \n" ++ concatMap show nodes

instance Show Node where
  show (Node nodes nodeId) = "Node "
    ++ show nodeId ++ " neighbors: ["
    ++ intercalate ", " (map (show . nodeID) nodes)
    ++ "]\n"
