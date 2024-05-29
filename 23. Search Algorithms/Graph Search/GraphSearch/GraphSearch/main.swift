//
//  main.swift
//  GraphSearch
//
//  Created by Brandon Kamplain on 5/28/24.
//

class GraphNode {
    var data: String
    var neighboringNodes: [GraphNode]
    
    init(data: String) {
        self.data = data
        neighboringNodes = []
    }
    
    func addNeighbor(_ newNeighbor: GraphNode) {
        neighboringNodes.append(newNeighbor)
    }
    
    func removeNeighbor(_ nodeToRemove: GraphNode) {
        if let index = neighboringNodes.firstIndex(where: {$0 == nodeToRemove}) {
            neighboringNodes.remove(at: index)
        }
    }
}

extension GraphNode: Equatable {
    static func == (lhs: GraphNode, rhs: GraphNode) -> Bool {
        return lhs === rhs
    }
}

extension GraphNode: CustomStringConvertible {
    var description: String {
        return "\(data)"
    }
}

struct GraphEdge {
    let nodeOne: GraphNode
    let nodeTwo: GraphNode
    var weight: Int? = nil
    
    init(nodeOne: GraphNode, nodeTwo: GraphNode, weight: Int?) {
        self.nodeOne = nodeOne
        self.nodeTwo = nodeTwo
        self.weight = weight
    }
}

class Graph {
    var nodes: [GraphNode]
    var edges: [GraphEdge]
    
    init(nodes: [GraphNode]) {
        self.nodes = nodes
        edges = []
    }
    
    func addEdge(from nodeOne: GraphNode, to nodeTwo: GraphNode, isBidirectional: Bool, weight: Int? = nil) {
        edges.append(GraphEdge(nodeOne: nodeOne, nodeTwo: nodeTwo, weight: weight))
        nodeOne.addNeighbor(nodeTwo)
        if isBidirectional {
            nodeTwo.addNeighbor(nodeOne)
        }
    }
    
    func addEdges(from nodeOne: GraphNode, to neighboringNodes: [(node: GraphNode, isBidirectional: Bool, weight: Int?)]) {
        for (node, isBidirectional, weight) in neighboringNodes {
            addEdge(from: nodeOne, to: node, isBidirectional: isBidirectional, weight: weight)
        }
    }
    
    func removeNode(_ node: GraphNode) {
        if let index = nodes.firstIndex(where: {$0 == node}) {
            nodes.remove(at: index)
        }
        
        edges = edges.filter({ $0.nodeOne != node || $0.nodeTwo != node })
        node.neighboringNodes.forEach {$0.removeNeighbor(node)}
    }
    
    func printGraph() {
        for node in nodes {
            Swift.print("\(node): \(node.neighboringNodes)")
        }
    }
    
    func dfs(startingAt startNode: GraphNode) -> [GraphNode] {
        var stack = [startNode]
        var visitedNodes = [GraphNode]()
        
        while let currentNode = stack.popLast() {
            if !visitedNodes.contains(currentNode) {
                visitedNodes.append(currentNode)
            }
            
            for neighbor in currentNode.neighboringNodes {
                stack.append(neighbor)
            }
        }
        return visitedNodes
    }
}
