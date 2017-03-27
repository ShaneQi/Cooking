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
	var cook: Food<Self> {
		return Food(self)
	}
	static var cook: Food<Self>.Type {
		return Food.self
	}
}

public protocol Cooking {
	associatedtype Ingredient
	var ingredient: Ingredient { get }
	init(_ ingredient: Ingredient)
}

public struct Food<Base>: Cooking {
	public let ingredient: Base
	public init(_ ingredient: Base) {
		self.ingredient = ingredient
	}
}
