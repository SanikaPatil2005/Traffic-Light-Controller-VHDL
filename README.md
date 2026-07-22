# FPGA-Based Traffic Light Controller with Emergency Vehicle Priority

A hardware design project implementing a Finite State Machine (FSM) based Traffic Light Controller using **VHDL** in **AMD Vivado 2023.2**. The controller manages a two-road intersection and incorporates an emergency vehicle priority mechanism to ensure uninterrupted passage for emergency traffic.

The project demonstrates the complete FPGA design workflow, including RTL design, behavioral simulation, synthesis, and digital hardware verification.

---

## Project Overview

The objective of this project is to design a reliable traffic signal controller capable of operating a two-way road intersection while supporting emergency vehicle priority.

The controller is implemented as a synchronous Finite State Machine (FSM) and verified through simulation before synthesis.

---

## Key Features

- FSM-based Traffic Signal Controller
- Two-Road Intersection Control
- Emergency Vehicle Priority Logic
- Synchronous Digital Design
- Behavioral Simulation
- RTL Design Verification
- Synthesized Hardware Design
- Modular VHDL Implementation

---

## Design Flow

1. Requirement Analysis
2. FSM Design
3. VHDL Coding
4. Behavioral Simulation
5. RTL Verification
6. Logic Synthesis
7. Design Validation

---

## Technology Stack

| Category | Technology |
|----------|------------|
| HDL | VHDL |
| Design Tool | AMD Vivado 2023.2 |
| Design Methodology | Finite State Machine (FSM) |
| Domain | FPGA & Digital System Design |

---

## Project Structure

```text
Traffic-Light-Controller-FPGA
│
├── traffic_light.vhd
├── traffic_light_tb.vhd
├── Block Diagram.png
├── SIMULATION WAVEFORM.png
├── RTL SCHEMATIC.png
├── SYNTHESIZED SCHEMATIC.png
├── README.md
└── LICENSE
```

---

# Block Diagram

![Block Diagram](Block%20Diagram.png)

---

# Behavioral Simulation

![Simulation](SIMULATION%20WAVEFORM.png)

---

# RTL Schematic

![RTL](RTL%20SCHEMATIC.png)

---

# Synthesized Design

![Synthesis](SYNTHESIZED%20SCHEMATIC.png)

---

## Functional Description

The controller operates through five FSM states.

| State | Operation |
|-------|-----------|
| S0 | Road A Green, Road B Red |
| S1 | Road A Yellow, Road B Red |
| S2 | Road A Red, Road B Green |
| S3 | Road A Red, Road B Yellow |
| S4 | Emergency Vehicle Priority |

Whenever the emergency input is asserted, the controller immediately transfers control to the emergency state, allowing priority movement while maintaining deterministic FSM behavior.

---

## Learning Outcomes

This project provided practical experience in:

- FPGA Design Flow
- Digital Logic Design
- FSM Architecture
- RTL Development
- Hardware Simulation
- VHDL Coding
- Logic Synthesis

---

## Future Enhancements

- Adaptive Traffic Signal Timing
- Vehicle Density Detection
- Pedestrian Crossing Module
- Four-Way Intersection Support
- FPGA Board Deployment
- IoT-Based Smart Traffic Monitoring

---

## Author

**Sanika Shriram Patil**

Electronics & Computer Engineering

---

## License

Distributed under the MIT License.
