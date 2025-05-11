# Switches Problem in PDDL

## Problem Description

The Switches problem is a planning problem where we have a set of switches that can be turned on or off. The goal is to reach a specific configuration of switches (on/off states) from an initial configuration.

## Files in this Directory

This directory contains several versions of the Switches problem:

1. **switches.pddl** - The base domain file for the Switches problem
2. **switches-pb1.pddl** - A problem instance for the base domain
3. **switches_v1.pddl** - An alternative version of the domain with a different modeling approach
4. **switches_pb1_v1.pddl** - A problem instance for the v1 domain
5. **switches_v2.pddl** - Another alternative version of the domain with a different modeling approach
6. **switches_pb1_v2.pddl** - A problem instance for the v2 domain

## Modeling Approaches

The different versions of the domain file represent different modeling approaches:

1. **Base Model (switches.pddl)**: Uses basic PDDL constructs to model the switches problem.
2. **Version 1 (switches_v1.pddl)**: An alternative approach that may use different predicates or action structures.
3. **Version 2 (switches_v2.pddl)**: A more complex model that may include additional features or optimizations.

## Running the Examples

To run these examples with JavaGP, use commands like:

```bash
java -jar javagp.jar -d examples/pddl/switches/switches.pddl -p examples/pddl/switches/switches-pb1.pddl
```

For the alternative versions:

```bash
java -jar javagp.jar -d examples/pddl/switches/switches_v1.pddl -p examples/pddl/switches/switches_pb1_v1.pddl
```

```bash
java -jar javagp.jar -d examples/pddl/switches/switches_v2.pddl -p examples/pddl/switches/switches_pb1_v2.pddl
```

## Learning Objectives

These examples demonstrate:
1. Different ways to model the same problem in PDDL
2. How modeling choices can affect planner performance
3. The trade-offs between model simplicity and expressiveness
