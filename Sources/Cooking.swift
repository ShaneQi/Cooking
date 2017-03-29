//
//  Cooking.swift
//  Cooking
//
//  Created by Shane Qi on 3/26/17.
//  Copyright © 2017 shaneqi. All rights reserved.
//

public protocol Edible {
	associatedtype Cooked
	var cook: Cooked { get }
	static var cook: Cooked.Type { get }
}

public extension Edible {
	var cook: Cooking<Self> {
		return Cooking(self)
	}
	static var cook: Cooking<Self>.Type {
		return Cooking.self
	}
}

public struct Cooking<Ingredient> {
	public let ingredient: Ingredient
	public init(_ ingredient: Ingredient) {
		self.ingredient = ingredient
	}
}
