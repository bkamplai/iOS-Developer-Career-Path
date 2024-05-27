//
//  main.swift
//  Graphs
//
//  Created by Brandon Kamplain on 4/30/24.
//

struct GraphEdge {
    let nodeOne: GraphNode
    let nodeTwo: GraphNode
    var weight: Int? = nil
    
    init(nodeOne: GraphNode, nodeTwo: GraphNode, weight: Int? = nil) {
        self.nodeOne = nodeOne
        self.nodeTwo = nodeTwo
        self.weight = weight
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
    
    func addEdge(from nodeOne: GraphNode, to nodeTwo: GraphNode, isBidirectional: Bool = true, weight: Int? = nil) {
        edges.append(GraphEdge(nodeOne: nodeOne, nodeTwo: nodeTwo, weight: weight))
        nodeOne.addNeighbor(nodeTwo)
        if isBidirectional {
            edges.append(GraphEdge(nodeOne: nodeTwo, nodeTwo: nodeOne, weight: weight))
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

// Review
let atlanta = GraphNode(data: "Atlanta")
let newYork = GraphNode(data: "New York")
let chicago = GraphNode(data: "Chicago")
let orlando = GraphNode(data: "Orlando")
let losAngeles = GraphNode(data: "Los Angeles")

let graph3 = Graph(nodes: [atlanta, newYork, chicago, orlando, losAngeles])

graph3.addEdges(from: atlanta, to: [(node: newYork, isBidirectional: false, weight: 250), (node: orlando, isBidirectional: false, weight: 80)])
graph3.addEdges(from: orlando, to: [(node: atlanta, isBidirectional: false, weight: 100), (node: newYork, isBidirectional: false, weight: 400), (node: chicago, isBidirectional: false, weight: 200)])
graph3.addEdges(from: losAngeles, to: [(node: chicago, isBidirectional: false, weight: 125), (node: atlanta, isBidirectional: false, weight:250)])
graph3.addEdge(from: chicago, to: newYork, isBidirectional: false, weight: 190)
graph3.addEdges(from: newYork, to: [(node: losAngeles, isBidirectional: false, weight: 400), (node: atlanta, isBidirectional: false, weight: 200)])
graph3.printGraph()
