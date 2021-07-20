module DataStructures.GraphSpec
  (spec)
where

import           DataStructures.Graph
import           Test.Hspec

testN1 :: Node
testN1 = Node { nodeNeighbors = [], nodeID = 1 }

testN2 :: Node
testN2 = Node { nodeNeighbors = [testN1], nodeID = 2 }

testGraph :: Graph
testGraph = Graph {graphNodes = [testN1, testN2]}

spec :: Spec
spec = do
  describe "directed graph (adjacency list)" $ do
    it "should \"Show\" properly" $ show testGraph  `shouldBe` "Graph: \nNode 1 neighbors: []\nNode 2 neighbors: [1]\n"
