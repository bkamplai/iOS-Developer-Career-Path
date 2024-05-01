//
//  main.swift
//  Graphs
//
//  Created by Brandon Kamplain on 4/30/24.
//

struct GraphEdge {
    let nodeOne: GraphNode
    let nodeTwo: GraphNode
    
    init(nodeOne: GraphNode, nodeTwo: GraphNode) {
        self.nodeOne = nodeOne
        self.nodeTwo = nodeTwo
    }
}

class GraphNode {
    var data: String
    var neighboringNodes: [GraphNode]
    
    init(data: String) {
        self.data = data
        self.neighboringNodes = []
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

class Graph {
    var nodes: [GraphNode]
    var edges: [GraphEdge]
    
    init(nodes: [GraphNode]) {
        self.nodes = nodes
        edges = []
    }
    
    func printGraph() {
        for node in nodes {
            Swift.print("\(node): \(node.neighboringNodes)")
        }
    }
    
    func addEdge(from nodeOne: GraphNode, to nodeTwo: GraphNode) {
        edges.append(GraphEdge(nodeOne: nodeOne, nodeTwo: nodeTwo))
        nodeOne.addNeighbor(nodeTwo)
    }
    
    func addEdges(from nodeOne: GraphNode, to neighboringNodes: [GraphNode]) {
        for node in neighboringNodes {
            addEdge(from: nodeOne, to: node)
        }
    }
}
