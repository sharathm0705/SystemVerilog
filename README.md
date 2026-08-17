# ⚡ SystemVerilog Core Concepts & Verification Reference

![SystemVerilog](https://img.shields.io/badge/SystemVerilog-IEEE%201800--2017-blue?style=for-the-badge&logo=IEEE)
![Verification](https://img.shields.io/badge/Domain-Hardware%20Verification-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Complete%20%26%20Verified-brightgreen?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

Welcome to the **SystemVerilog Core Concepts & Verification Reference Repository**! This repository is a clean, structured, and modular hands-on collection of 18 essential SystemVerilog programs. It serves as a practical guide for mastering modern Hardware Verification Language (HVL) features specified in **IEEE 1800**.

---

## 📌 Table of Contents

- [📁 Repository Structure](#-repository-structure)
- [📚 SystemVerilog Core Topics](#-systemverilog-core-topics)
  - [1. Data Types (`01_data_types/`)](#1-data-types-01_data_types)
  - [2. Arrays & Queues (`02_arrays_and_queues/`)](#2-arrays--queues-02_arrays_and_queues)
  - [3. Interprocess Concurrency (`03_concurrency/`)](#3-interprocess-concurrency-03_concurrency)
  - [4. Object-Oriented Programming (`04_oops/`)](#4-object-oriented-programming-04_oops)
  - [5. Randomization & Constraints (`05_randomization_and_constraints/`)](#5-randomization--constraints-05_randomization_and_constraints)
- [💡 Code Snippets & Key Concepts](#-code-snippets--key-concepts)
- [🛠️ How to Compile & Simulate](#️-how-to-compile--simulate)
  - [Icarus Verilog (`iverilog`)](#1-icarus-verilog-iverilog)
  - [Siemens QuestaSim / ModelSim (`vlog` / `vsim`)](#2-siemens-questasim--modelsim)
  - [Synopsys VCS (`vcs`)](#3-synopsys-vcs)
  - [Cadence Xcelium (`xrun`)](#4-cadence-xcelium)
  - [Verilator](#5-verilator)
- [📄 License & Author](#-license--author)

---

## 📁 Repository Structure

The codebase is organized into **5 core topic folders**, keeping code modular, readable, and easy to navigate:

```text
SystemVerilog/
├── 01_data_types/
│   ├── data_types_basics.sv       # logic, bit, byte, int 2-state vs 4-state types
│   └── bit_vs_byte.sv             # Unsigned 8-bit vector vs 8-bit signed two's complement byte
├── 02_arrays_and_queues/
│   ├── packed_array.sv            # Multi-dimensional packed arrays (bit [2:0][3:0])
│   ├── dynamic_array.sv           # Dynamic arrays: allocation, sizing, copying, element retention
│   └── queue_basics.sv            # SystemVerilog queue push/pop and size operations
├── 03_concurrency/
│   └── fork_join.sv               # Parallel process execution with fork ... join
├── 04_oops/
│   ├── class_constructor.sv       # Class definition and custom new() constructor
│   ├── class_methods.sv           # Encapsulating tasks and functions inside classes
│   ├── class_assignment.sv        # Object handles vs object instantiation
│   ├── inheritance.sv             # Base class extension using extends
│   ├── super_keyword.sv           # Parent class access using super
│   ├── this_keyword.sv            # Member variable scope resolution using this
│   └── polymorphism.sv            # Virtual functions and dynamic dispatch
├── 05_randomization_and_constraints/
│   ├── randomization_basics.sv    # rand variables & randomize() call
│   ├── constraint_inside.sv       # Set membership operator (inside) & ranges
│   ├── soft_constraints.sv        # Soft constraints & inline constraint overrides (with {})
│   ├── implication_constraints.sv # Implication operator (->)
│   ├── ifelse_constraints.sv      # Conditional branching constraints
│   ├── constraint_mode.sv         # Dynamic runtime constraint control
│   └── static_constraints.sv      # Shared class-wide static constraints
├── .gitignore                     # EDA tool simulation artifact clean list
└── README.md                      # Primary repository documentation
```

---

## 📚 SystemVerilog Core Topics

### 1. Data Types (`01_data_types/`)

SystemVerilog introduces 2-state data types alongside standard Verilog 4-state data types (`0`, `1`, `X`, `Z`) to optimize simulation efficiency for digital verification.

| File Name | Topic | Key Concepts |
| :--- | :--- | :--- |
| [`data_types_basics.sv`](file:///home/sharath/SystemVerilog/01_data_types/data_types_basics.sv) | 2-State & 4-State Data Types | Covers `logic` (4-state), `bit` (2-state unsigned), `byte` (8-bit signed), and `int` (32-bit signed integer). |
| [`bit_vs_byte.sv`](file:///home/sharath/SystemVerilog/01_data_types/bit_vs_byte.sv) | Bit Vector vs Byte | Demonstrates the behavioral difference between `bit [7:0]` (unsigned vector) and `byte` (signed two's complement integer). |

### 2. Arrays & Queues (`02_arrays_and_queues/`)

SystemVerilog expands array capabilities with packed bit vectors, unsized dynamic arrays, and double-ended queues suitable for transactional FIFOs and packet storage.

| File Name | Topic | Key Concepts |
| :--- | :--- | :--- |
| [`packed_array.sv`](file:///home/sharath/SystemVerilog/02_arrays_and_queues/packed_array.sv) | Packed Arrays | Continuous bit allocation across dimensions (`bit [2:0][3:0]`), sub-field indexing, and slicing. |
| [`dynamic_array.sv`](file:///home/sharath/SystemVerilog/02_arrays_and_queues/dynamic_array.sv) | Dynamic Arrays | Declaring `type name[]`, dynamic memory allocation via `new[N]`, array copying `new[N](orig)`, `.size()`, and `.delete()`. |
| [`queue_basics.sv`](file:///home/sharath/SystemVerilog/02_arrays_and_queues/queue_basics.sv) | Queues | Declaring bounded and unbounded queues (`[$]`), `.push_back()`, `.push_front()`, `.pop_back()`, `.pop_front()`, and size management. |

### 3. Interprocess Concurrency (`03_concurrency/`)

Multithreaded testbenches depend on concurrent process management for scoreboard monitoring, driver timing, and protocol checks.

| File Name | Topic | Key Concepts |
| :--- | :--- | :--- |
| [`fork_join.sv`](file:///home/sharath/SystemVerilog/03_concurrency/fork_join.sv) | Parallel Processes | Spawning concurrent threads inside `fork ... join` blocks, thread timing delays (`#delay`), and thread synchronization. |

### 4. Object-Oriented Programming (`04_oops/`)

OOP enables class-based verification environments (such as UVM), facilitating modularity, reusability, and clean abstraction.

| File Name | Topic | Key Concepts |
| :--- | :--- | :--- |
| [`class_constructor.sv`](file:///home/sharath/SystemVerilog/04_oops/class_constructor.sv) | Custom Constructor | Instantiating class objects via `new()` and initializing properties inside custom constructors. |
| [`class_methods.sv`](file:///home/sharath/SystemVerilog/04_oops/class_methods.sv) | Tasks & Functions | Encapsulating behavioral `task` and logic `function` declarations inside class structures. |
| [`class_assignment.sv`](file:///home/sharath/SystemVerilog/04_oops/class_assignment.sv) | Handle Copies | Distinguishing handle reference copying (`t2 = t1`) from separate object instantiation. |
| [`inheritance.sv`](file:///home/sharath/SystemVerilog/04_oops/inheritance.sv) | Class Extension | Extending base classes using `extends`, child property access, and method inheritance. |
| [`super_keyword.sv`](file:///home/sharath/SystemVerilog/04_oops/super_keyword.sv) | Super Scope | Referencing overridden parent class methods and member properties via `super`. |
| [`this_keyword.sv`](file:///home/sharath/SystemVerilog/04_oops/this_keyword.sv) | Scope Resolution | Resolving naming ambiguities between method argument names and class member properties using `this`. |
| [`polymorphism.sv`](file:///home/sharath/SystemVerilog/04_oops/polymorphism.sv) | Dynamic Binding | `virtual` functions, object polymorphism, and dynamic method dispatch when calling virtual methods through base handles. |

### 5. Randomization & Constraints (`05_randomization_and_constraints/`)

Constraint-Random Verification (CRV) allows testbenches to generate edge-case transaction payloads automatically while enforcing protocol rules.

| File Name | Topic | Key Concepts |
| :--- | :--- | :--- |
| [`randomization_basics.sv`](file:///home/sharath/SystemVerilog/05_randomization_and_constraints/randomization_basics.sv) | Basic CRV | Marking variables `rand` / `randc` and invoking `.randomize()` with success status checking. |
| [`constraint_inside.sv`](file:///home/sharath/SystemVerilog/05_randomization_and_constraints/constraint_inside.sv) | Set Membership | Enforcing discrete set constraints `{10, 20, 30}` and continuous range bounds `[10:100]` with `inside`. |
| [`soft_constraints.sv`](file:///home/sharath/SystemVerilog/05_randomization_and_constraints/soft_constraints.sv) | Soft & Inline Constraints | Declaring `soft` constraints and overriding default values dynamically using inline `randomize() with {}` blocks. |
| [`implication_constraints.sv`](file:///home/sharath/SystemVerilog/05_randomization_and_constraints/implication_constraints.sv) | Implication (`->`) | Conditional solver dependencies using the logical implication operator `(cond) -> (expr)`. |
| [`ifelse_constraints.sv`](file:///home/sharath/SystemVerilog/05_randomization_and_constraints/ifelse_constraints.sv) | If-Else Constraints | Branching solver rules using `if (cond) { ... } else { ... }` constraint blocks. |
| [`constraint_mode.sv`](file:///home/sharath/SystemVerilog/05_randomization_and_constraints/constraint_mode.sv) | Runtime Control | Dynamically turning specific constraint blocks on (`1`) or off (`0`) using `obj.constraint_name.constraint_mode()`. |
| [`static_constraints.sv`](file:///home/sharath/SystemVerilog/05_randomization_and_constraints/static_constraints.sv) | Static Constraints | Defining `static constraint` blocks that apply globally across all class instances. |

---

## 💡 Code Snippets & Key Concepts

### 1. Queues Push & Pop Operations
```systemverilog
bit [7:0] my_queue[$];

initial begin
  my_queue.push_back(8'd10);
  my_queue.push_back(8'd20);
  my_queue.push_front(8'd40);

  $display("Popped back : %0d", my_queue.pop_back());   // Outputs 20
  $display("Popped front: %0d", my_queue.pop_front());  // Outputs 40
end
```

### 2. Polymorphism via Virtual Functions
```systemverilog
class BaseClass;
  virtual function void my_function();
    $display("Base Class : my_function");
  endfunction
endclass

class DerivedClass extends BaseClass;
  function void my_function();
    $display("Derived Class : my_function");
  endfunction
endclass
```

### 3. Soft Constraints Overriding with Inline Constraints
```systemverilog
class seq_item;
  rand bit [7:0] val;
  constraint val_c { soft val inside {5, [10:15]}; }
endclass

// Overriding default soft constraint dynamically during randomization
item.randomize() with { val inside {[20:30]}; };
```

---

## 🛠️ How to Compile & Simulate

### 1. Icarus Verilog (`iverilog`)

Ensure Icarus Verilog supports SystemVerilog syntax using `-g2012`:

```bash
# Compile any concept file
iverilog -g2012 -o sim.out 01_data_types/data_types_basics.sv

# Run simulation executable
vvp sim.out
```

### 2. Siemens QuestaSim / ModelSim

```bash
# Compile SystemVerilog file into work library
vlog -sv 04_oops/polymorphism.sv

# Execute command-line simulation
vsim -c polymorphism_tb -do "run -all; quit"
```

### 3. Synopsys VCS

```bash
# Compile and run in one step
vcs -sverilog 05_randomization_and_constraints/randomization_basics.sv -R
```

### 4. Cadence Xcelium

```bash
# Execute simulation run
xrun -sv 02_arrays_and_queues/dynamic_array.sv
```

### 5. Verilator

```bash
# Build binary and execute
verilator --binary -sv 03_concurrency/fork_join.sv
./obj_dir/Vfork_join
```

---

## 📄 License & Author

This repository is maintained by **[Sharath](https://github.com/sharathm0705)** under the **[MIT License](LICENSE)**. Feel free to use, modify, and share these reference examples for practice, academic study, and industry preparation!
