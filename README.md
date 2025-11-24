# Body Mass Index (BMI) Calculator in C

A simple, robust, and well‑structured console application written in C that computes a user&#39;s Body Mass Index (BMI) based on height and weight, with support for metric and imperial units, basic input validation, and BMI category classification.

---

## Features

- Supports **metric** (kg, m) and **imperial** (lb, in) units
- Validates user input for plausible ranges
- Computes BMI using standard formulas
- Classifies BMI according to common WHO categories
  - Underweight
  - Normal weight
  - Overweight
  - Obesity (Class I, II, III)
- Clear, modular design using separate source and header files
- Simple test program for core BMI logic

---

## Project Structure

```text
bmi_calculator_c/
├─ src/
│  ├─ main.c
│  ├─ bmi_calculator.c
│  ├─ input_validation.c
│  └─ ui.c
├─ include/
│  ├─ bmi_calculator.h
│  ├─ input_validation.h
│  └─ ui.h
├─ tests/
│  └─ test_bmi_calculator.c
├─ Makefile
├─ .gitignore
└─ README.md
```

---

## BMI Formulae

- **Metric units**  
  \( \text{BMI} = \dfrac{\text{weight\_kg}}{\text{height\_m}^2} \)

- **Imperial units**  
  \( \text{BMI} = 703 \times \dfrac{\text{weight\_lb}}{\text{height\_in}^2} \)

---

## BMI Categories (WHO‑like thresholds)

- **Underweight**: BMI &lt; 18.5
- **Normal weight**: 18.5 ≤ BMI &lt; 25.0
- **Overweight**: 25.0 ≤ BMI &lt; 30.0
- **Obesity Class I**: 30.0 ≤ BMI &lt; 35.0
- **Obesity Class II**: 35.0 ≤ BMI &lt; 40.0
- **Obesity Class III**: BMI ≥ 40.0

These thresholds are encoded in `bmi_classify` in `bmi_calculator.c`.

---

## Build Instructions

### Prerequisites

- C compiler (e.g. `gcc`, `clang`, or MSVC via `nmake`/CMake)
- Make (for Unix-like systems or MinGW/WSL on Windows)

### Build (Linux / macOS / WSL / MinGW)

```bash
make
```

This produces the executable:

```text
./bmi_calculator
```

### Run

```bash
./bmi_calculator
```

You will be prompted to:

1. Select unit system (metric or imperial)
2. Enter weight
3. Enter height
4. View the computed BMI and category
5. Choose whether to perform another calculation or exit

---

## Running the Test Program

A minimal test harness is provided to sanity‑check the BMI computation and classification logic.

```bash
make test
./test_bmi_calculator
```

You should see PASS/FAIL output for a few canonical BMI examples.

---

## Implementation Notes

- **Modularity**: Core logic is in `bmi_calculator.[ch]`, input handling in `input_validation.[ch]`, and user‑facing messages in `ui.[ch]`.
- **Error handling**: All numeric input is checked for both type safety (using `scanf` return values) and range plausibility.
- **Portability**: Code sticks to ISO C (C99‑compatible) features and the standard library only.

---

## Make Targets

- `make` or `make all` – build main BMI calculator
- `make test` – build the test executable
- `make clean` – remove compiled objects and executables

---

## Author

- **Author**: Mobin Yousefi  
- **GitHub**: https://github.com/mobinyousefi-cs

Feel free to fork, extend, or integrate this BMI calculator into larger health or fitness applications.

