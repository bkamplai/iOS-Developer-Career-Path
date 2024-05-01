//
//  main.swift
//  Graphs
//
//  Created by Brandon Kamplain on 4/30/24.
//

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
    
    init(nodes: [GraphNode]) {
        self.nodes = nodes
    }
    
    func printGraph() {
        for node in nodes {
            Swift.print("\(node): \(node.neighboringNodes)")
        }
    }
}
