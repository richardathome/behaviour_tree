# Godot 4 Behaviour Tree :: RichBuilds.com

## Installation:
	1. Copy everything from the addons folder into your project
	2. Go to Project... Project Settings... Plugins and enable the addon

## Usage:
	1. Attach a BehaviourTree RootNode to the node you wish to control
	2. Build your Behaviour tree under the root node.

## Features:

### Control Nodes:

#### ControlNode
The base node all Control Nodes inherit from.

#### SequenceNode
ticks all of it's children in order until one of them fails

#### SelectorNode
ticks all of it's children in order until one of them succeeds

#### RandomSelectorNode
ticks a child at random each tick and returns it's result

#### RepeatNode
ticks all of it's children in order forever or until a child fails

### Decorator Nodes:

#### DecoratorNode
The base node all DecoratorNodes inherit from

####
