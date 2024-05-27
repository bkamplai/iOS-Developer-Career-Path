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
    
    func removeNode(_ node: GraphNode) {
        if let index = nodes.firstIndex(where: {$0 == node}) {
            nodes.remove(at: index)
        }
        edges = edges.filter {$0.nodeOne != node || $0.nodeTwo != node}
        nodes.forEach {$0.removeNeighbor(node)}
    }
}

// Acyclic Graph
let car = GraphNode(data: "Car")
let bus = GraphNode(data: "Bus")
let gasStation = GraphNode(data: "Gas Station")
let busStop = GraphNode(data: "Bus Stop")
let work = GraphNode(data: "Work")

let graph = Graph(nodes: [car, bus, gasStation, busStop, work])
graph.addEdge(from: car, to: gasStation)
graph.addEdge(from: gasStation, to: work)
graph.addEdge(from: bus, to: busStop)
graph.addEdge(from: busStop, to: work)
graph.printGraph()

// Cyclic Graph
let getOn = GraphNode(data: "Get on Bike")
let pedal = GraphNode(data: "Pedal Bike")
let fall = GraphNode(data: "Fall off Bike")

let graph2 = Graph(nodes: [getOn, pedal, fall])
graph2.addEdge(from: getOn, to: pedal)
graph2.addEdge(from: pedal, to: fall)
graph2.addEdge(from: fall, to: getOn)
graph2.printGraph()
